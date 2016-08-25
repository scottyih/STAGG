set sent2vec=..\Sent2Vec\sample\bin\sent2vec.exe
set dirModel=data.newqe

%sent2vec% /inSrcModel %dirModel%\model_QUERY_ITER500 /inSrcVocab %dirModel%\train.src.l3g.txt /inSrcModelType CDSSM /inSrcMaxRetainedSeqLength 20 /inTgtModel %dirModel%\model_DOC_ITER500 /inTgtVocab %dirModel%\train.tgt.l3g.txt /inTgtModelType CDSSM /inTgtMaxRetainedSeqLength 20 /inFilename qep.sample.txt /outFilenamePrefix qep.sample.txt.out
