.class public final Lcom/android/internal/telephony/uicc/RuimRecords;
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


# static fields
.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "RuimRecords"


# instance fields
.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mNai:Ljava/lang/String;

.field private mOtaCommited:Z

.field private mPrlVersion:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/RuimRecords;I)I
    .locals 1
    .param p1, "digits"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->adjstMinDigits(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@5
    .line 51
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    #@7
    .line 60
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    #@9
    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    #@b
    .line 62
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@d
    .line 103
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@11
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@16
    .line 105
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    #@18
    .line 108
    iput v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@1a
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1c
    const/16 v1, 0x1f

    #@1e
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@21
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    #@24
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@26
    const/4 v1, 0x1

    #@27
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2a
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v1, "RuimRecords X ctor this="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@41
    .line 100
    return-void
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .param p1, "digits"    # I

    #@0
    .prologue
    .line 204
    add-int/lit8 p1, p1, 0x6f

    #@2
    .line 205
    rem-int/lit8 v0, p1, 0xa

    #@4
    if-nez v0, :cond_0

    #@6
    add-int/lit8 p1, p1, -0xa

    #@8
    .line 206
    :cond_0
    div-int/lit8 v0, p1, 0xa

    #@a
    rem-int/lit8 v0, v0, 0xa

    #@c
    if-nez v0, :cond_1

    #@e
    add-int/lit8 p1, p1, -0x64

    #@10
    .line 207
    :cond_1
    div-int/lit8 v0, p1, 0x64

    #@12
    rem-int/lit8 v0, v0, 0xa

    #@14
    if-nez v0, :cond_2

    #@16
    add-int/lit16 p1, p1, -0x3e8

    #@18
    .line 208
    :cond_2
    return p1
.end method

.method private fetchRuimRecords()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/16 v4, 0x64

    #@4
    .line 814
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    #@6
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "fetchRuimRecords "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@1f
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@21
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    const/4 v2, 0x3

    #@28
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    #@2f
    .line 819
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@35
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@37
    .line 822
    const/4 v1, 0x5

    #@38
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    #@3b
    move-result-object v1

    #@3c
    .line 821
    const/16 v2, 0x2fe2

    #@3e
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@41
    .line 823
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@43
    add-int/lit8 v0, v0, 0x1

    #@45
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@47
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@49
    .line 826
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    #@4b
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;)V

    #@4e
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@51
    move-result-object v1

    #@52
    .line 825
    const/16 v2, 0x2f05

    #@54
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@57
    .line 827
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@59
    add-int/lit8 v0, v0, 0x1

    #@5b
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@5d
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@5f
    .line 830
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    #@61
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;)V

    #@64
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@67
    move-result-object v1

    #@68
    .line 829
    const/16 v2, 0x6f3a

    #@6a
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@6d
    .line 831
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@6f
    add-int/lit8 v0, v0, 0x1

    #@71
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@73
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@75
    .line 834
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    #@77
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;)V

    #@7a
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7d
    move-result-object v1

    #@7e
    .line 833
    const/16 v2, 0x6f41

    #@80
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@83
    .line 835
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@85
    add-int/lit8 v0, v0, 0x1

    #@87
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@89
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@8b
    .line 838
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    #@8d
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;)V

    #@90
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@93
    move-result-object v1

    #@94
    .line 837
    const/16 v2, 0x6f44

    #@96
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@99
    .line 839
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@9b
    add-int/lit8 v0, v0, 0x1

    #@9d
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@9f
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@a1
    .line 842
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    #@a3
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;)V

    #@a6
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a9
    move-result-object v1

    #@aa
    .line 841
    const/16 v2, 0x6f22

    #@ac
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@af
    .line 843
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@b1
    add-int/lit8 v0, v0, 0x1

    #@b3
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@b5
    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@b7
    .line 846
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    #@b9
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;)V

    #@bc
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@bf
    move-result-object v1

    #@c0
    .line 845
    const/16 v2, 0x6f28

    #@c2
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@c5
    .line 847
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@c7
    add-int/lit8 v0, v0, 0x1

    #@c9
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@cb
    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@cd
    .line 852
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    #@cf
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;)V

    #@d2
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d5
    move-result-object v1

    #@d6
    .line 851
    const/16 v2, 0x6f5a

    #@d8
    const/4 v3, 0x4

    #@d9
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    #@dc
    .line 853
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@de
    add-int/lit8 v0, v0, 0x1

    #@e0
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@e2
    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@e4
    .line 856
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;

    #@e6
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;)V

    #@e9
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@ec
    move-result-object v1

    #@ed
    .line 855
    const/16 v2, 0x6f4d

    #@ef
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@f2
    .line 857
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@f4
    add-int/lit8 v0, v0, 0x1

    #@f6
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@f8
    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v1, "fetchRuimRecords "

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109
    move-result-object v0

    #@10a
    const-string/jumbo v1, " requested: "

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v0

    #@111
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    #@113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@116
    move-result-object v0

    #@117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v0

    #@11b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@11e
    .line 813
    return-void
.end method

.method private static getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 726
    .local v3, "locales":[Ljava/lang/String;
    array-length v5, v3

    #@a
    new-array v1, v5, [Ljava/lang/String;

    #@c
    .line 727
    .local v1, "localeLangs":[Ljava/lang/String;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    array-length v5, v3

    #@e
    if-ge v0, v5, :cond_1

    #@10
    .line 728
    aget-object v2, v3, v0

    #@12
    .line 729
    .local v2, "localeStr":Ljava/lang/String;
    const/16 v5, 0x2d

    #@14
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v4

    #@18
    .line 730
    .local v4, "separator":I
    if-gez v4, :cond_0

    #@1a
    .line 731
    aput-object v2, v1, v0

    #@1c
    .line 727
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 733
    :cond_0
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    aput-object v5, v1, v0

    #@25
    goto :goto_1

    #@26
    .line 737
    .end local v2    # "localeStr":Ljava/lang/String;
    .end local v4    # "separator":I
    :cond_1
    return-object v1
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@0
    .prologue
    .line 913
    if-nez p1, :cond_0

    #@2
    .line 914
    const-string/jumbo v0, "handleRuimRefresh received without input"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@8
    .line 915
    return-void

    #@9
    .line 918
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 919
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 924
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@1d
    packed-switch v0, :pswitch_data_0

    #@20
    .line 941
    const-string/jumbo v0, "handleRuimRefresh with unknown operation"

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@26
    .line 912
    :goto_0
    return-void

    #@27
    .line 921
    :cond_2
    return-void

    #@28
    .line 926
    :pswitch_0
    const-string/jumbo v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@2e
    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@30
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@33
    .line 928
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    #@36
    goto :goto_0

    #@37
    .line 931
    :pswitch_1
    const-string/jumbo v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@3d
    .line 933
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onIccRefreshInit()V

    #@40
    goto :goto_0

    #@41
    .line 937
    :pswitch_2
    const-string/jumbo v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    #@44
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@47
    goto :goto_0

    #@48
    .line 924
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 451
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3
    check-cast v0, [B

    #@5
    .line 452
    .local v0, "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "CSIM_EPRL="

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@20
    .line 455
    array-length v2, v0

    #@21
    if-le v2, v4, :cond_0

    #@23
    .line 456
    const/4 v2, 0x2

    #@24
    aget-byte v2, v0, v2

    #@26
    and-int/lit16 v2, v2, 0xff

    #@28
    shl-int/lit8 v2, v2, 0x8

    #@2a
    aget-byte v3, v0, v4

    #@2c
    and-int/lit16 v3, v3, 0xff

    #@2e
    or-int v1, v2, v3

    #@30
    .line 457
    .local v1, "prlId":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    #@36
    .line 459
    .end local v1    # "prlId":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "CSIM PRL version="

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@4f
    .line 448
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Disposing RuimRecords "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@17
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    #@1c
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@21
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    #@24
    .line 127
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    #@27
    .line 121
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RuimRecords: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 978
    const-string/jumbo v0, " extends:"

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 979
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20
    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, " mOtaCommited="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, " mMyMobileNumber="

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v1, " mMin2Min1="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v1, " mPrlVersion="

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v1, " mEFpl[]="

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    #@92
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v1, " mEFli[]="

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    #@af
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@b2
    move-result-object v1

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v0

    #@bb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@be
    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v1, " mCsimSpnDisplayCondition="

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v0

    #@d4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d7
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v1, " mMdn="

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v1, " mMin="

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v0

    #@106
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@109
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v1, " mHomeSystemId="

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    #@117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v0

    #@11f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@122
    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v1, " mHomeNetworkId="

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    #@130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v0

    #@134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v0

    #@138
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 991
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@13e
    .line 976
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 132
    const-string/jumbo v0, "RuimRecords finalized"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@6
    .line 131
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    #@0
    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@2
    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 871
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x0

    #@3
    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 217
    return-object v2

    #@8
    .line 220
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    #@a
    const/4 v2, -0x1

    #@b
    if-eq v1, v2, :cond_1

    #@d
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@13
    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    #@15
    add-int/lit8 v2, v2, 0x3

    #@17
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    .line 230
    .local v0, "mcc":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@28
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@2b
    move-result v2

    #@2c
    add-int/lit8 v2, v2, 0x3

    #@2e
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 908
    const-string/jumbo v0, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@6
    .line 909
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 592
    const/4 v3, 0x0

    #@1
    .line 594
    .local v3, "isRecordLoadResponse":Z
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v6

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 595
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "Received message "

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    .line 596
    const-string/jumbo v7, "["

    #@1c
    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    .line 596
    iget v7, p1, Landroid/os/Message;->what:I

    #@22
    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    .line 596
    const-string/jumbo v7, "] while being destroyed. Ignoring."

    #@29
    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    #@34
    .line 597
    return-void

    #@35
    .line 600
    :cond_0
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    #@37
    sparse-switch v6, :sswitch_data_0

    #@3a
    .line 705
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 712
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    #@3f
    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    #@42
    .line 587
    :cond_2
    :goto_1
    return-void

    #@43
    .line 602
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 707
    :catch_0
    move-exception v2

    #@48
    .line 709
    .local v2, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v6, "RuimRecords"

    #@4b
    const-string/jumbo v7, "Exception parsing RUIM record"

    #@4e
    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 712
    if-eqz v3, :cond_2

    #@53
    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    #@56
    goto :goto_1

    #@57
    .line 606
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string/jumbo v6, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    #@5a
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 710
    :catchall_0
    move-exception v6

    #@5f
    .line 712
    if-eqz v3, :cond_3

    #@61
    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    #@64
    .line 710
    :cond_3
    throw v6

    #@65
    .line 611
    :sswitch_2
    const/4 v3, 0x1

    #@66
    .line 613
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68
    check-cast v0, Landroid/os/AsyncResult;

    #@6a
    .line 614
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6c
    if-eqz v6, :cond_4

    #@6e
    .line 615
    new-instance v6, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v7, "Exception querying IMSI, Exception:"

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    #@87
    goto :goto_0

    #@88
    .line 619
    :cond_4
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8a
    check-cast v6, Ljava/lang/String;

    #@8c
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@8e
    .line 623
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@90
    if-eqz v6, :cond_6

    #@92
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@94
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@97
    move-result v6

    #@98
    const/4 v7, 0x6

    #@99
    if-lt v6, v7, :cond_5

    #@9b
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@9d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@a0
    move-result v6

    #@a1
    const/16 v7, 0xf

    #@a3
    if-le v6, v7, :cond_6

    #@a5
    .line 624
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v7, "invalid IMSI "

    #@ad
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v6

    #@b1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@b3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v6

    #@b7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v6

    #@bb
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    #@be
    .line 625
    const/4 v6, 0x0

    #@bf
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    #@c1
    .line 640
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    .line 641
    .local v5, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v7, "NO update mccmnc="

    #@cd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v6

    #@d1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v6

    #@d5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@dc
    goto/16 :goto_0

    #@de
    .line 647
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "operatorNumeric":Ljava/lang/String;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e0
    check-cast v0, Landroid/os/AsyncResult;

    #@e2
    .line 648
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e4
    check-cast v4, [Ljava/lang/String;

    #@e6
    .line 649
    .local v4, "localTemp":[Ljava/lang/String;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e8
    if-nez v6, :cond_1

    #@ea
    .line 653
    const/4 v6, 0x0

    #@eb
    aget-object v6, v4, v6

    #@ed
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    #@ef
    .line 654
    const/4 v6, 0x3

    #@f0
    aget-object v6, v4, v6

    #@f2
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    #@f4
    .line 655
    const/4 v6, 0x4

    #@f5
    aget-object v6, v4, v6

    #@f7
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    #@f9
    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v7, "MDN: "

    #@101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v6

    #@105
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    #@107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    const-string/jumbo v7, " MIN: "

    #@10e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    #@114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v6

    #@118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v6

    #@11c
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@11f
    goto/16 :goto_0

    #@121
    .line 662
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "localTemp":[Ljava/lang/String;
    :sswitch_4
    const/4 v3, 0x1

    #@122
    .line 664
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@124
    check-cast v0, Landroid/os/AsyncResult;

    #@126
    .line 665
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@128
    check-cast v1, [B

    #@12a
    .line 667
    .local v1, "data":[B
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@12c
    if-nez v6, :cond_1

    #@12e
    .line 671
    array-length v6, v1

    #@12f
    const/4 v7, 0x0

    #@130
    invoke-static {v1, v7, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@133
    move-result-object v6

    #@134
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    #@136
    .line 673
    new-instance v6, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v7, "iccid: "

    #@13e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v6

    #@142
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    #@144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@14f
    goto/16 :goto_0

    #@151
    .line 678
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[B
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@153
    check-cast v0, Landroid/os/AsyncResult;

    #@155
    .line 679
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@157
    if-eqz v6, :cond_1

    #@159
    .line 680
    const-string/jumbo v6, "RuimRecords"

    #@15c
    const-string/jumbo v7, "RuimRecords update failed"

    #@15f
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@161
    invoke-static {v6, v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@164
    goto/16 :goto_0

    #@166
    .line 688
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string/jumbo v6, "RuimRecords"

    #@169
    new-instance v7, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v8, "Event not supported: "

    #@171
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v7

    #@175
    iget v8, p1, Landroid/os/Message;->what:I

    #@177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v7

    #@17b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v7

    #@17f
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@182
    goto/16 :goto_0

    #@184
    .line 693
    :sswitch_7
    const-string/jumbo v6, "Event EVENT_GET_SST_DONE Received"

    #@187
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@18a
    goto/16 :goto_0

    #@18c
    .line 697
    :sswitch_8
    const/4 v3, 0x0

    #@18d
    .line 698
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18f
    check-cast v0, Landroid/os/AsyncResult;

    #@191
    .line 699
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@193
    if-nez v6, :cond_1

    #@195
    .line 700
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@197
    check-cast v6, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@199
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@19c
    goto/16 :goto_0

    #@19e
    .line 600
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0xa -> :sswitch_3
        0xe -> :sswitch_5
        0x11 -> :sswitch_7
        0x12 -> :sswitch_6
        0x13 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x1f -> :sswitch_8
    .end sparse-switch
.end method

.method public isProvisioned()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 882
    const-string/jumbo v0, "persist.radio.test-csim"

    #@5
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 883
    return v3

    #@c
    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 887
    return v2

    #@11
    .line 890
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@16
    move-result-object v0

    #@17
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@19
    if-ne v0, v1, :cond_3

    #@1b
    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    #@21
    if-nez v0, :cond_3

    #@23
    .line 892
    :cond_2
    return v2

    #@24
    .line 894
    :cond_3
    return v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 967
    const-string/jumbo v0, "RuimRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[RuimRecords] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 966
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 972
    const-string/jumbo v0, "RuimRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[RuimRecords] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 971
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 757
    const-string/jumbo v3, "record load complete"

    #@4
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@7
    .line 785
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    .line 786
    .local v1, "resource":Landroid/content/res/Resources;
    const v3, 0x1120095

    #@e
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 787
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    #@16
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    #@18
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSimLanguage([B[B)V

    #@1b
    .line 790
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@1d
    .line 791
    new-instance v4, Landroid/os/AsyncResult;

    #@1f
    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@22
    .line 790
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@25
    .line 794
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 795
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2f
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    #@36
    move-result v0

    #@37
    .line 796
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@3e
    move-result-object v2

    #@3f
    .line 797
    .local v2, "subIds":[I
    if-eqz v2, :cond_2

    #@41
    .line 798
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    #@43
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@46
    move-result-object v3

    #@47
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@49
    const/4 v5, 0x0

    #@4a
    aget v5, v2, v5

    #@4c
    invoke-virtual {v3, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    #@4f
    .line 756
    .end local v0    # "phoneId":I
    .end local v2    # "subIds":[I
    :cond_1
    :goto_0
    return-void

    #@50
    .line 800
    .restart local v0    # "phoneId":I
    .restart local v2    # "subIds":[I
    :cond_2
    const-string/jumbo v3, "Cannot call setDisplayNumber: invalid subId"

    #@53
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@56
    goto :goto_0
.end method

.method public onReady()V
    .locals 2

    #@0
    .prologue
    .line 807
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    #@3
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    #@e
    .line 806
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 744
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@7
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "onRecordLoaded "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, " requested: "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@2d
    .line 747
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@2f
    if-nez v0, :cond_1

    #@31
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 748
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    #@38
    .line 741
    :cond_0
    :goto_0
    return-void

    #@39
    .line 749
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@3b
    if-gez v0, :cond_0

    #@3d
    .line 750
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    #@40
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    #@43
    .line 751
    iput v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    #@45
    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    #@0
    .prologue
    .line 194
    if-eqz p1, :cond_0

    #@2
    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    #@5
    .line 193
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 2

    #@0
    .prologue
    .line 136
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    #@3
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "setting0 mMncLength"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@1c
    .line 138
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    #@1f
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@24
    .line 151
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    #@27
    .line 135
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 181
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@3
    move-result-object v0

    #@4
    .line 182
    new-instance v1, Lcom/android/internal/telephony/uicc/IccException;

    #@6
    const-string/jumbo v2, "setVoiceMailNumber not implemented"

    #@9
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    #@c
    .line 181
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e
    .line 183
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 184
    const-string/jumbo v0, "method setVoiceMailNumber is not implemented"

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    #@17
    .line 179
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 901
    const-string/jumbo v0, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@6
    .line 898
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RuimRecords: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 72
    const-string/jumbo v1, " m_ota_commited"

    #@17
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 72
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    #@1d
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 73
    const-string/jumbo v1, " mMyMobileNumber="

    #@24
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 73
    const-string/jumbo v1, "xxxx"

    #@2b
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 74
    const-string/jumbo v1, " mMin2Min1="

    #@32
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    #@38
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 75
    const-string/jumbo v1, " mPrlVersion="

    #@3f
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 75
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    #@45
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 76
    const-string/jumbo v1, " mEFpl="

    #@4c
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    #@52
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 77
    const-string/jumbo v1, " mEFli="

    #@59
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    #@5f
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 78
    const-string/jumbo v1, " mCsimSpnDisplayCondition="

    #@66
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 78
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@6c
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 79
    const-string/jumbo v1, " mMdn="

    #@73
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    #@79
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 80
    const-string/jumbo v1, " mMin="

    #@80
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    #@86
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    .line 81
    const-string/jumbo v1, " mHomeSystemId="

    #@8d
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    #@93
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    .line 82
    const-string/jumbo v1, " mHomeNetworkId="

    #@9a
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    #@a0
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    return-object v0
.end method
