.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalScoreEvaluator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator$BestCandidateType;
    }
.end annotation


# instance fields
.field private mBestCandidateType:I

.field private final mDbg:Z

.field private mHighScore:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mSavedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Landroid/util/LocalLog;Z)V
    .locals 1
    .param p1, "localLog"    # Landroid/util/LocalLog;
    .param p2, "dbg"    # Z

    #@0
    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 983
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    #@6
    .line 984
    const/16 v0, -0x80

    #@8
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@a
    .line 991
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    #@c
    .line 992
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mDbg:Z

    #@e
    .line 990
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mDbg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1041
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 1039
    :cond_0
    return-void
.end method


# virtual methods
.method evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "score"    # Ljava/lang/Integer;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 1010
    if-eqz p1, :cond_1

    #@2
    .line 1011
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@8
    if-gt v0, v1, :cond_0

    #@a
    .line 1012
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 1013
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v0

    #@13
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 1014
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@1d
    .line 1015
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    #@1f
    .line 1016
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    #@21
    .line 1017
    const/4 v0, 0x1

    #@22
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    #@24
    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-static {p3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, " become the new externally scored saved network "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 1019
    const-string/jumbo v1, "candidate"

    #@3b
    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->localLog(Ljava/lang/String;)V

    #@46
    .line 1007
    :cond_1
    return-void
.end method

.method evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "score"    # Ljava/lang/Integer;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 997
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 998
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@10
    .line 999
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    #@12
    .line 1000
    const/4 v0, 0x2

    #@13
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    #@15
    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-static {p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v1, " become the new untrusted candidate"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->localLog(Ljava/lang/String;)V

    #@30
    .line 996
    :cond_0
    return-void
.end method

.method getBestCandidateType()I
    .locals 1

    #@0
    .prologue
    .line 1024
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    #@2
    return v0
.end method

.method getHighScore()I
    .locals 1

    #@0
    .prologue
    .line 1028
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    #@2
    return v0
.end method

.method getSavedConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object v0
.end method

.method public getScanResultCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method
