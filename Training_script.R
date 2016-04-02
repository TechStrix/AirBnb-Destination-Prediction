





cbd1<-read.csv('E:/Kaggle Competitions/Airbnb/train_users_2.csv')

 x<-read.csv('E:/Kaggle Competitions/Airbnb/test_users.csv')

cbd1<-as.matrix(cbd1)

cgender<-cbd1[,5]

table(cgender)
length(cgender)
cgender[cgender == "MALE"]<-1
cgender[cgender == "FEMALE"]<-2
cgender[cgender == "-unknown-"]<-3
cgender[cgender == "OTHER"]<-4


signupm<-cbd1[,7]
table(signupm)
signupm[signupm == "basic"]<-1
signupm[signupm == "facebook"]<-2
signupm[signupm == "google"]<-3

signupf<-cbd1[,8]
table(signupf)

affch<-cbd1[,10]
table(affch)
affch[affch == "api"]<-1
affch[affch == "content"]<-2
affch[affch == "direct"]<-3
affch[affch == "other"]<-4
affch[affch == "remarketing"]<-5
affch[affch == "sem-brand"]<-6
affch[affch == "sem-non-brand"]<-7
affch[affch == "seo"]<-8

affp<-cbd1[,11]
table(affp)
affp[affp == "baidu"]<-1
affp[affp == "bing"]<-2
affp[affp == "craigslist"]<-3
affp[affp == "daum"]<-4
affp[affp == "direct"]<-5
affp[affp == "email-marketing"]<-6
affp[affp == "facebook"]<-7
affp[affp == "facebook-open-graph"]<-8
affp[affp == "google"]<-9
affp[affp == "gsp"]<-10
affp[affp == "meetup"]<-11
affp[affp == "naver"]<-12
affp[affp == "other"]<-13
affp[affp == "padmapper"]<-14
affp[affp == "vast"]<-15
affp[affp == "wayn"]<-16
affp[affp == "yahoo"]<-17
affp[affp == "yandex"]<-18


signupa<-cbd1[,13]
table(signupa)

signupa[signupa == "Android"]<-1
signupa[signupa == "iOS"]<-2
signupa[signupa == "Moweb"]<-3
signupa[signupa == "Web"]<-4

devicet<-cbd1[,14]
table(devicet)
devicet[devicet == "Android Phone"]<-1
devicet[devicet == "Android Tablet"]<-2
devicet[devicet == "Desktop (Other)"]<-3
devicet[devicet == "iPad"]<-4
devicet[devicet == "iPhone"]<-5
devicet[devicet == "Mac Desktop"]<-6
devicet[devicet == "Other/Unknown"]<-7
devicet[devicet == "SmartPhone (Other)"]<-8
devicet[devicet == "Windows Desktop"]<-9

firstbrows<-cbd1[,15]
table(firstbrows)

firstbrows[firstbrows == "Apple Mail"]<-1
firstbrows[firstbrows == "Arora"]<-2
firstbrows[firstbrows== "Avant Browser"]<-3
firstbrows[firstbrows == "BlackBerry Browser"]<-4
firstbrows[firstbrows == "Camino"]<-5
firstbrows[firstbrows == "Chrome"]<-6

firstbrows[firstbrows == "IBrowse"]<-6
firstbrows[firstbrows == "Nintendo Browser"]<-6
firstbrows[firstbrows == "UC Browser"]<-6


firstbrows[firstbrows == "Chrome Mobile"]<-7
firstbrows[firstbrows == "Chromium"]<-8
firstbrows[firstbrows == "CometBird"]<-9
firstbrows[firstbrows == "Comodo Dragon"]<-10
firstbrows[firstbrows == "Conkeror"]<-11
firstbrows[firstbrows== "CoolNovo"]<-12
firstbrows[firstbrows == "Crazy Browser"]<-13
firstbrows[firstbrows == "Epic"]<-14
firstbrows[firstbrows == "Firefox"]<-15
firstbrows[firstbrows == "Flock"]<-16
firstbrows[firstbrows == "Google Earth"]<-17
firstbrows[firstbrows == "Googlebot"]<-18
firstbrows[firstbrows == "IceDragon"]<-19
firstbrows[firstbrows == "IceWeasel"]<-20
firstbrows[firstbrows== "IE"]<-21
firstbrows[firstbrows == "IE Mobile"]<-22
firstbrows[firstbrows == "Iron"]<-23
firstbrows[firstbrows == "Kindle Browser"]<-24
firstbrows[firstbrows == "Maxthon"]<-25
firstbrows[firstbrows == "Mobile Firefox"]<-26
firstbrows[firstbrows == "Mobile Safari"]<-27

firstbrows[firstbrows == "Mozilla"]<-28
firstbrows[firstbrows == "NetNewsWire"]<-29
firstbrows[firstbrows== "OmniWeb"]<-30
firstbrows[firstbrows == "Opera"]<-31
firstbrows[firstbrows == "Opera Mini"]<-32
firstbrows[firstbrows == "Opera Mobile"]<-33
firstbrows[firstbrows == "Outlook 2007"]<-34
firstbrows[firstbrows == "Pale Moon"]<-35
firstbrows[firstbrows == "Palm Pre web browser"]<-36
firstbrows[firstbrows == "PS Vita browser"]<-37
firstbrows[firstbrows == "RockMelt"]<-38
firstbrows[firstbrows== "Safari"]<-39
firstbrows[firstbrows == "SeaMonkey"]<-40
firstbrows[firstbrows == "Silk"]<-41
firstbrows[firstbrows == "SiteKiosk"]<-42
firstbrows[firstbrows == "SlimBrowser"]<-43
firstbrows[firstbrows == "Sogou Explorer"]<-44
firstbrows[firstbrows == "Stainless"]<-45

firstbrows[firstbrows == "TenFourFox"]<-46
firstbrows[firstbrows == "TheWorld Browser"]<-47
firstbrows[firstbrows == "wOSBrowser"]<-48
firstbrows[firstbrows == "Yandex.Browser"]<-49

firstbrows[firstbrows == "-unknown-"]<-50
firstbrows[firstbrows == "Android Browser"]<-51
firstbrows[firstbrows == "AOL Explorer"]<-52

dest<-cbd1[,16]
table(dest)
dest[dest == "AU"]<-1
dest[dest == "CA"]<-2
dest[dest == "DE"]<-3
dest[dest == "ES"]<-4
dest[dest == "FR"]<-5
dest[dest == "GB"]<-6
dest[dest == "IT"]<-7
dest[dest == "NDF"]<-8
dest[dest == "NL"]<-9
dest[dest == "other"]<-10
dest[dest == "PT"]<-11
dest[dest == "US"]<-12

#Making Matrices and then combining

cgender1<-as.matrix(cgender)
signupm1<-as.matrix(signupm)
signupf1<-as.matrix(signupf)
affch1<-as.matrix(affch)
affp1<-as.matrix(affp)
signupa1<-as.matrix(signupa)
devicet1<-as.matrix(devicet)
firstbrows1<-as.matrix(firstbrows)
dest1<-as.matrix(dest)

air_training_set<-cbind(cgender1,signupm1,signupf1,affch1,affp1,signupa1,devicet1,firstbrows1,dest1)

air_training_set<-as.data.frame(air_training_set)

labels<-dest1

labels<-as.data.frame(labels)

################### Sampled Data ##########################################

air_training_set1<-cbind(cgender1,signupm1,signupf1,affch1,signupa1,devicet1,dest1)

#,affp1,firstbrows1

air_training_set1 <- air_training_set1[sample(nrow(air_training_set1)),]

air_training_set1 <- air_training_set1[sample(nrow(air_training_set1)),]

air_training_set1 <- air_training_set1[sample(nrow(air_training_set1)),]

air_training_set1 <- air_training_set1[sample(nrow(air_training_set1)),]

air_training_set1 <- air_training_set1[sample(nrow(air_training_set1)),]

air_training_set1 <- air_training_set1[sample(nrow(air_training_set1)),]


air_training_set1<-air_training_set1[1:10000,]

air_training_set1<-as.data.frame(air_training_set1)

air_hypo3<-multinom(V7~.,data=air_training_set1)

air_p<-predict(air_hypo3, test_data)


labels1<-dest1[1:100000]

labels1<-as.data.frame(labels1)


air_training_set1<-as.data.frame(air_training_set1)

################## End of Training ############################

################## Data Clean Function for test set cleaning #############3

data_clean<-function(cbd1){


cbd1<-as.matrix(cbd1)

cgender<-cbd1[,5]

table(cgender)
length(cgender)

cgender[cgender == "MALE"]<-1
cgender[cgender == "FEMALE"]<-2
cgender[cgender == "-unknown-"]<-3
cgender[cgender == "OTHER"]<-4


signupm<-cbd1[,7]
table(signupm)
signupm[signupm == "basic"]<-1
signupm[signupm == "facebook"]<-2
signupm[signupm == "google"]<-3
signupm[signupm == "weibo"]<-1


signupf<-cbd1[,8]
table(signupf)

affch<-cbd1[,10]
table(affch)
affch[affch == "api"]<-1
affch[affch == "content"]<-2
affch[affch == "direct"]<-3
affch[affch == "other"]<-4
affch[affch == "remarketing"]<-5
affch[affch == "sem-brand"]<-6
affch[affch == "sem-non-brand"]<-7
affch[affch == "seo"]<-8

affp<-cbd1[,11]
table(affp)
affp[affp == "baidu"]<-1
affp[affp == "bing"]<-2
affp[affp == "craigslist"]<-3
affp[affp == "daum"]<-4
affp[affp == "direct"]<-5
affp[affp == "email-marketing"]<-6
affp[affp == "facebook"]<-7
affp[affp == "facebook-open-graph"]<-8
affp[affp == "google"]<-9
affp[affp == "gsp"]<-10
affp[affp == "meetup"]<-11
affp[affp == "naver"]<-12
affp[affp == "other"]<-13
affp[affp == "padmapper"]<-14
affp[affp == "vast"]<-15
affp[affp == "wayn"]<-16
affp[affp == "yahoo"]<-17
affp[affp == "yandex"]<-18


signupa<-cbd1[,13]
table(signupa)

signupa[signupa == "Android"]<-1
signupa[signupa == "iOS"]<-2
signupa[signupa == "Moweb"]<-3
signupa[signupa == "Web"]<-4

devicet<-cbd1[,14]
table(devicet)
devicet[devicet == "Android Phone"]<-1
devicet[devicet == "Android Tablet"]<-2
devicet[devicet == "Desktop (Other)"]<-3
devicet[devicet == "iPad"]<-4
devicet[devicet == "iPhone"]<-5
devicet[devicet == "Mac Desktop"]<-6
devicet[devicet == "Other/Unknown"]<-7
devicet[devicet == "SmartPhone (Other)"]<-8
devicet[devicet == "Windows Desktop"]<-9

firstbrows<-cbd1[,15]
table(firstbrows)

firstbrows[firstbrows == "Apple Mail"]<-1
firstbrows[firstbrows == "Arora"]<-2
firstbrows[firstbrows== "Avant Browser"]<-3
firstbrows[firstbrows == "BlackBerry Browser"]<-4
firstbrows[firstbrows == "Camino"]<-5
firstbrows[firstbrows == "Chrome"]<-6

firstbrows[firstbrows == "IBrowse"]<-6
firstbrows[firstbrows == "Nintendo Browser"]<-6
firstbrows[firstbrows == "UC Browser"]<-6


firstbrows[firstbrows == "Chrome Mobile"]<-7
firstbrows[firstbrows == "Chromium"]<-8
firstbrows[firstbrows == "CometBird"]<-9
firstbrows[firstbrows == "Comodo Dragon"]<-10
firstbrows[firstbrows == "Conkeror"]<-11
firstbrows[firstbrows== "CoolNovo"]<-12
firstbrows[firstbrows == "Crazy Browser"]<-13
firstbrows[firstbrows == "Epic"]<-14
firstbrows[firstbrows == "Firefox"]<-15
firstbrows[firstbrows == "Flock"]<-16
firstbrows[firstbrows == "Google Earth"]<-17
firstbrows[firstbrows == "Googlebot"]<-18
firstbrows[firstbrows == "IceDragon"]<-19
firstbrows[firstbrows == "IceWeasel"]<-20
firstbrows[firstbrows== "IE"]<-21
firstbrows[firstbrows == "IE Mobile"]<-22
firstbrows[firstbrows == "Iron"]<-23
firstbrows[firstbrows == "Kindle Browser"]<-24
firstbrows[firstbrows == "Maxthon"]<-25
firstbrows[firstbrows == "Mobile Firefox"]<-26
firstbrows[firstbrows == "Mobile Safari"]<-27

firstbrows[firstbrows == "Mozilla"]<-28
firstbrows[firstbrows == "NetNewsWire"]<-29
firstbrows[firstbrows== "OmniWeb"]<-30
firstbrows[firstbrows == "Opera"]<-31
firstbrows[firstbrows == "Opera Mini"]<-32
firstbrows[firstbrows == "Opera Mobile"]<-33
firstbrows[firstbrows == "Outlook 2007"]<-34
firstbrows[firstbrows == "Pale Moon"]<-35
firstbrows[firstbrows == "Palm Pre web browser"]<-36
firstbrows[firstbrows == "PS Vita browser"]<-37
firstbrows[firstbrows == "RockMelt"]<-38
firstbrows[firstbrows== "Safari"]<-39
firstbrows[firstbrows == "SeaMonkey"]<-40
firstbrows[firstbrows == "Silk"]<-41
firstbrows[firstbrows == "SiteKiosk"]<-42
firstbrows[firstbrows == "SlimBrowser"]<-43
firstbrows[firstbrows == "Sogou Explorer"]<-44
firstbrows[firstbrows == "Stainless"]<-45

firstbrows[firstbrows == "TenFourFox"]<-46
firstbrows[firstbrows == "TheWorld Browser"]<-47
firstbrows[firstbrows == "wOSBrowser"]<-48
firstbrows[firstbrows == "Yandex.Browser"]<-49

firstbrows[firstbrows == "-unknown-"]<-50
firstbrows[firstbrows == "Android Browser"]<-51
firstbrows[firstbrows == "AOL Explorer"]<-52


#Making Matrices and then combining

cgender1<-as.matrix(cgender)
signupm1<-as.matrix(signupm)
signupf1<-as.matrix(signupf)
affch1<-as.matrix(affch)
affp1<-as.matrix(affp)
signupa1<-as.matrix(signupa)
devicet1<-as.matrix(devicet)
firstbrows1<-as.matrix(firstbrows)

air_training_set<-cbind(cgender1,signupm1,signupf1,affch1,affp1,signupa1,devicet1,firstbrows1)

#affp1,firstbrows1



air_training_set<-as.data.frame(air_training_set)

return(air_training_set)
}


#library('e1071')

#air_hypo<-svm(air_training_set$V9~.,data=air_training_set)

air_hypo<-lca(air_training_set1, air_training_set1$V9, niter=100, matchdata=FALSE, verbose=FALSE)

library('nnet')

air_hypo3<-multinom(V9~.,data=air_training_set)

library('probsvm')

air_hypo<-probsvm(air_training_set,air_training_set$V9,kernel=c("linear","polynomial","radial"),
kparam=NULL, Inum=20, type="ovr",
lambdas=2^(-10:10))

library('randomForest')

air_hypo<-randomForest(air_training_set$V9~.,air_training_set)

library('mlogit')
air_hypo5<-mlogit(labels$V1~.,data=air_training_set)

air_hypo5<-glm(labels$V1~.,data=air_training_set)

test_data<-data_clean(x)
predict(air_hypo3, test_data)

air_p<-predict(air_hypo3, test_data)

######################### For making a predictions array ###############

pred_ar<-matrix(0,nrow=62096,ncol =1)


for(i in 1:nrow(air_p))
{
	biggest<-0
	index<-0
	for( j in 1:ncol(air_p))
	{		
		if (air_p[i,j]>=biggest)
		{
			biggest<-air_p[i,j]
			index<-j
		}
		else 
		{
			biggest<-biggest
		}
	}
	pred_ar[i,1]<-colnames(air_p)[index]
}


pred_ar[1:100000]




#########################################################

air_p1[air_p1 == 12]<-"US"
air_p1[air_p1 == 2]<-"CA"
air_p1[air_p1 == 8]<-"NDF"