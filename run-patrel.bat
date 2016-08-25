set sent2vec=..\Sent2Vec\sample\bin\sent2vec.exe

set dirModel=data.newpr

%sent2vec% /inSrcModel %dirModel%\model_QUERY_ITER500 /inSrcVocab %dirModel%\train.src.l3g.txt /inSrcModelType CDSSM /inSrcMaxRetainedSeqLength 20 /inTgtModel %dirModel%\model_DOC_ITER500 /inTgtVocab %dirModel%\train.tgt.l3g.txt /inTgtModelType CDSSM /inTgtMaxRetainedSeqLength 20 /inFilename pr.sample.txt /outFilenamePrefix pr.sample.txt.out
