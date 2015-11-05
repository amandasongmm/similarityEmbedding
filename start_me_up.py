import ujson
import numpy as np
from scipy.spatial import distance as dd
import csv
__author__ = 'amanda'


def prep_data():
    with open('data/faceTriplet.csv') as f:
        triplet = np.array([map(int, x) for x in csv.reader(f)]) - 1

    with open('data/2kFemale.json') as f:
        raw_data = ujson.load(f)
        img_num = len(raw_data)
        feat_len = 512
        feat_mat = np.zeros((img_num, feat_len))
        for i in range(img_num):
            if raw_data[i]:
                feat_mat[i, :] = np.array(raw_data[i])
        dist_mat = dd.squareform(dd.pdist(feat_mat))
        dist1 = dist_mat[triplet[:, 0], triplet[:, 1]]
        dist2 = dist_mat[triplet[:, 0], triplet[:, 2]]

        proportion = sum(dist1 < dist2) / float(len(dist2))
        print 'Distance accordance proportion: {}'.format(proportion)


def main():
    prep_data()


if __name__ == '__main__':
    main()
