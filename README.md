## STAGG-Files

This folder contains several intermediate and final output files of our semantic parsing QA system, detailed in:

Wen-tau Yih, Ming-Wei Chang, Xiaodong He and Jianfeng Gao. 
Semantic Parsing via Staged Query Graph Generation: Question Answering with Knowledge Base
In Proceedings of ACL-IJCNLP-2015.

@InProceedings{yih-EtAl:2015:ACL-IJCNLP,
  author    = {Yih, Wen-tau  and  Chang, Ming-Wei  and  He, Xiaodong  and  Gao, Jianfeng},
  title     = {Semantic Parsing via Staged Query Graph Generation: Question Answering with Knowledge Base},
  booktitle = {Proceedings of the 53rd Annual Meeting of the Association for Computational Linguistics and the 7th International Joint Conference on Natural Language Processing (Volume 1: Long Papers)},
  month     = {July},
  year      = {2015},
  address   = {Beijing, China},
  publisher = {Association for Computational Linguistics},
  pages     = {1321--1331},
  url       = {http://www.aclweb.org/anthology/P15-1128}
}


The files include:

1) The input files

	The original input files from SEMPRE (http://www-nlp.stanford.edu/software/sempre/)
	
	webquestions.examples.train.json
	webquestions.examples.test.json

	My table format of the original data. The columns are: Question ID, Original Question, Normalized Question (removing punctuations, tokenization, etc.)
	
	webquestions.examples.train.questionmap.tsv
	webquestions.examples.test.questionmap.tsv

2) The entity linking results from the system detailed in [Yang & Chang, ACL-IJCNLP-2015]

	The columns are: Question ID, Entity Mention, Start Position (of the normalized question), Length, Linked Entity ID, Entity Name, Entity Linking Score. Notice that the entity IDs match the version of Freebase hosted by SEMPRE, which are not standard Freebase entity MIDs. 

	webquestions.examples.train.e2e.top10.filter.sid.tsv
	webquestions.examples.test.e2e.top10.filter.sid.tsv
	
	The files with the standard Freebase entity IDs are included in case you are interested.
	
	webquestions.examples.train.e2e.top10.filter.tsv
	webquestions.examples.test.e2e.top10.filter.tsv

3) DSSM Relation Matching Training Files

	These are the files the "main inferential chains" generated from the pairs of questions and answers. The columns are F1 score, pattern (question), predicate sequence (entity name & predicate sequence), Question ID. We used only the pairs with F1 scores at least 0.5 for training the relation matching models.  Please see the paper for detail.

	webquestions.examples.train.e2e.top10.filter.patrel.sid.tsv
	webquestions.examples.train.e2e.top10.filter.q_ep.sid.tsv
	
4) DSSM Relation Matching Models

	The DSSM training and predicting code can be found at http://research.microsoft.com/en-us/downloads/731572aa-98e4-4c50-b99d-ae3f0c9562b9/
	
	Here we provided the models used in the paper.
	
	data.newpr  -- the model trained on pairs of pattern and predicate
	(http://research.microsoft.com/pubs/244749/data.newpr.zip)
	data.newqe  -- the model trained on pairs of question and entity-predicate
	(http://research.microsoft.com/pubs/244749/data.newqe.zip)
	
	Please check "pr.sample.txt" and "qep.sample.txt" for the format of the input data.  They basically are the same pairs as in the training files. The differences are that we replaced the "^E1$" symbol with "e1", replaced "." with " " in the predicates and made all letters lower-cased.
	
	The command lines to run the DSSM predictors are provided in "run-patrel.bat" and "run-q_ep.bat". 
	
	pr.sample.txt  -- sample pairs for testing the pattern--predicate model
	qep.sample.txt -- sample pairs for testing the question--entity-predicate model
	
	run-patrel.bat -- sample command line to run the DSSM predictor on pr.sample.txt
	run-q_ep.bat   -- sample command line to run the DSSM predictor on qep.sample.txt
	
5) The final system output on the testing data

	This file is in the format that can be consumed by the standard evaluation script provided in SEMPRE. It can also be found at the CodaLab WebQuestions Worksheet: https://www.codalab.org/worksheets/0xba659fe363cb46e7a505c5b6a774dc8a/

	webquestions-predictions-acl2015-msr-stagg
	

Please contact Scott Wen-tau Yih (scottyih@microsoft.com) should you have any question.

-- Scott Yih, September 8th, 2015.
