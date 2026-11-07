.class public Lcom/android/internal/telephony/uicc/RuimRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
    }
.end annotation


# instance fields
.field blacklist mCsimSpnDisplayCondition:Z

.field private greylist-max-r mEFli:[B

.field private greylist-max-r mEFpl:[B

.field private blacklist mHomeNetworkId:Ljava/lang/String;

.field private blacklist mHomeSystemId:Ljava/lang/String;

.field private blacklist mMdn:Ljava/lang/String;

.field private greylist-max-r mMin:Ljava/lang/String;

.field private blacklist mMin2Min1:Ljava/lang/String;

.field private blacklist mMyMobileNumber:Ljava/lang/String;

.field private greylist-max-r mNai:Ljava/lang/String;

.field private blacklist mOtaCommited:Z

.field private blacklist mPrlVersion:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEFpl(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMdn(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMin(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNai(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;[B)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEFpl(Lcom/android/internal/telephony/uicc/RuimRecords;[B)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHomeNetworkId(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHomeSystemId(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMdn(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNai(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCSimEprlDone(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 65
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 110
    new-instance p2, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 112
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 113
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RuimRecords X ctor this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-r fetchRuimRecords()V
    .registers 9

    const/4 v0, 0x1

    .line 849
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x5

    .line 854
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x2fe2

    .line 853
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 855
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 857
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    const/16 v5, 0x64

    .line 858
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x2f05

    .line 857
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 859
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    .line 862
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f3a

    .line 861
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 863
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 865
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    .line 866
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f41

    .line 865
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 867
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    .line 870
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f44

    .line 869
    invoke-virtual {v1, v6, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 871
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    .line 874
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f22

    .line 873
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 875
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    .line 878
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f28

    .line 877
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 879
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 883
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    .line 884
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f5a

    const/4 v7, 0x4

    .line 883
    invoke-virtual {v1, v6, v7, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 885
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V

    .line 888
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f4d

    .line 887
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 889
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 890
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3c

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 891
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static greylist-max-r getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 738
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object p0

    .line 739
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 740
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_26

    .line 741
    aget-object v3, p0, v2

    const/16 v4, 0x2d

    .line 742
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1d

    .line 744
    aput-object v3, v0, v2

    goto :goto_23

    .line 746
    :cond_1d
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    return-object v0
.end method

.method private static blacklist isPrintableAscii(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7e

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 345
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 347
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->isPrintableAscii(C)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-r onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .registers 4

    .line 510
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSIM_EPRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 514
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_32

    const/4 v0, 0x2

    .line 515
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 518
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CSIM PRL version="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onLockedAllRecordsLoaded()V
    .registers 4

    .line 771
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 772
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 777
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLockedAllRecordsLoaded: unexpected mLockedRecordsReqReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mOtaCommited="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMyMobileNumber="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMin2Min1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPrlVersion="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEFpl[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEFli[]="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCsimSpnDisplayCondition="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMdn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mHomeSystemId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mHomeNetworkId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 134
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCdmaMin()Ljava/lang/String;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getCsimSpnDisplayCondition()Z
    .registers 1

    .line 961
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    return p0
.end method

.method public greylist-max-r getMdn()Ljava/lang/String;
    .registers 1

    .line 944
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getMdnNumber()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMin()Ljava/lang/String;
    .registers 1

    .line 948
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNAI()Ljava/lang/String;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNid()Ljava/lang/String;
    .registers 1

    .line 956
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPrlVersion()Ljava/lang/String;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getRUIMOperatorNumeric()Ljava/lang/String;
    .registers 5

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_8
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p0, v1, :cond_17

    if-eqz p0, :cond_17

    add-int/2addr p0, v2

    .line 218
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_17
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 225
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSid()Ljava/lang/String;
    .registers 1

    .line 952
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMessageCount()I
    .registers 2

    .line 931
    const-string v0, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist handleFileUpdate(I)V
    .registers 3

    .line 937
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 938
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 939
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 651
    const-string v0, "RuimRecords"

    .line 653
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] while being destroyed. Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void

    :cond_2e
    const/4 v1, 0x0

    .line 660
    :try_start_2f
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_fb

    const/4 v4, 0x5

    if-eq v2, v4, :cond_bb

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7f

    const/16 v3, 0xe

    if-eq v2, v3, :cond_71

    const/16 v3, 0x15

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x16

    if-eq v2, v3, :cond_5a

    packed-switch v2, :pswitch_data_112

    .line 717
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V

    return-void

    :catchall_4e
    move-exception p1

    goto/16 :goto_10c

    :catch_51
    move-exception p1

    goto/16 :goto_101

    .line 713
    :pswitch_54
    const-string p1, "Event EVENT_GET_SST_DONE Received"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void

    .line 708
    :cond_5a
    :pswitch_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 698
    :cond_71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 699
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_10b

    .line 700
    const-string v2, "RuimRecords update failed"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 666
    :cond_7f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 667
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 668
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_8d

    goto/16 :goto_10b

    .line 672
    :cond_8d
    aget-object p1, v2, v1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    const/4 p1, 0x3

    .line 673
    aget-object p1, v2, p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 674
    aget-object p1, v2, v3

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDN: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MIN: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_ba} :catch_51
    .catchall {:try_start_2f .. :try_end_ba} :catchall_4e

    return-void

    :cond_bb
    const/4 v2, 0x1

    .line 683
    :try_start_bc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 684
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 686
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_c9

    goto :goto_f1

    .line 690
    :cond_c9
    array-length p1, v3

    invoke-static {v3, v1, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    .line 691
    array-length p1, v3

    invoke-static {v3, v1, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_bc .. :try_end_f1} :catch_f8
    .catchall {:try_start_bc .. :try_end_f1} :catchall_f5

    .line 725
    :goto_f1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    return-void

    :catchall_f5
    move-exception p1

    move v1, v2

    goto :goto_10c

    :catch_f8
    move-exception p1

    move v1, v2

    goto :goto_101

    .line 662
    :cond_fb
    :try_start_fb
    const-string p1, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/RuntimeException; {:try_start_fb .. :try_end_100} :catch_51
    .catchall {:try_start_fb .. :try_end_100} :catchall_4e

    return-void

    .line 721
    :goto_101
    :try_start_101
    const-string v2, "Exception parsing RUIM record"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_4e

    if-eqz v1, :cond_10b

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    :cond_10b
    :goto_10b
    return-void

    :goto_10c
    if-eqz v1, :cond_111

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    .line 727
    :cond_111
    throw p1

    :pswitch_data_112
    .packed-switch 0x11
        :pswitch_54
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method public blacklist isProvisioned()Z
    .registers 5

    .line 905
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->test_csim()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    return v1

    .line 909
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    return v2

    .line 913
    :cond_1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v3, :cond_2b

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez p0, :cond_2b

    :cond_2a
    return v2

    :cond_2b
    return v1
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 5

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "RuimRecords"

    if-eqz v0, :cond_29

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 969
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RuimRecords] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist-max-r loge(Ljava/lang/String;)V
    .registers 5

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "RuimRecords"

    if-eqz v0, :cond_29

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 979
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RuimRecords] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist onAllRecordsLoaded()V
    .registers 4

    .line 784
    const-string v0, "record load complete"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 812
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110296

    .line 813
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setSimLanguage([B[B)V

    .line 817
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v0

    .line 822
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 823
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    return-void

    .line 826
    :cond_52
    const-string v0, "Cannot call setDisplayNumber: invalid subId"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method protected blacklist onLocked()V
    .registers 4

    .line 840
    const-string v0, "only fetch EF_ICCID in locked state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 841
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x2fe2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 844
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void
.end method

.method public blacklist onReady()V
    .registers 3

    .line 833
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist onRecordLoaded()V
    .registers 3

    .line 757
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    return-void

    .line 762
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_4a

    .line 764
    :cond_3d
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-gez v0, :cond_49

    .line 765
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 766
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    :cond_49
    return-void

    .line 763
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onLockedAllRecordsLoaded()V

    return-void
.end method

.method public blacklist onRefresh(Z[I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    :cond_5
    return-void
.end method

.method protected blacklist resetRecords()V
    .registers 3

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting0 mMncLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 155
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 182
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/IccException;

    const-string v0, "setVoiceMailNumber not implemented"

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 184
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 185
    const-string p1, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setVoiceMessageWaiting(II)V
    .registers 3

    .line 924
    const-string p1, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " m_ota_commited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMyMobileNumber=xxxx mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEFpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 83
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEFli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 84
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
