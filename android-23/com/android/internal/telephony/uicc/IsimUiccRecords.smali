.class public final Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IsimRecords;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DUMP_RECORDS:Z = false

.field private static final EVENT_AKA_AUTHENTICATE_DONE:I = 0x5a

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_ISIM_REFRESH:I = 0x1f

.field public static final INTENT_ISIM_REFRESH:Ljava/lang/String; = "com.android.intent.isim_refresh"

.field protected static final LOG_TAG:Ljava/lang/String; = "IsimUiccRecords"

.field private static final TAG_ISIM_VALUE:I = 0x80


# instance fields
.field private auth_rsp:Ljava/lang/String;

.field private mIsimDomain:Ljava/lang/String;

.field private mIsimImpi:Ljava/lang/String;

.field private mIsimImpu:[Ljava/lang/String;

.field private mIsimIst:Ljava/lang/String;

.field private mIsimPcscf:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0([B)Ljava/lang/String;
    .locals 1
    .param p0, "record"    # [B

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@5
    .line 66
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    #@c
    .line 83
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    #@e
    .line 86
    iput v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@10
    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->resetRecords()V

    #@13
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    const/16 v1, 0x1f

    #@17
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1a
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1c
    const/4 v1, 0x1

    #@1d
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@20
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, "IsimUiccRecords X ctor this="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@37
    .line 80
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 4
    .param p1, "efid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, 0x64

    #@3
    .line 307
    packed-switch p1, :pswitch_data_0

    #@6
    .line 338
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    #@9
    .line 306
    :goto_1
    return-void

    #@a
    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@c
    .line 310
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    #@e
    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;)V

    #@11
    .line 309
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    const/16 v2, 0x6f02

    #@17
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@1a
    .line 311
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@20
    goto :goto_1

    #@21
    .line 315
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@23
    .line 316
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    #@25
    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;)V

    #@28
    .line 315
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2b
    move-result-object v1

    #@2c
    const/16 v2, 0x6f04

    #@2e
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@31
    .line 317
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@37
    goto :goto_1

    #@38
    .line 321
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3a
    .line 322
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    #@3c
    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;)V

    #@3f
    .line 321
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@42
    move-result-object v1

    #@43
    const/16 v2, 0x6f03

    #@45
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@48
    .line 323
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@4a
    add-int/lit8 v0, v0, 0x1

    #@4c
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@4e
    goto :goto_1

    #@4f
    .line 327
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@51
    .line 328
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    #@53
    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;)V

    #@56
    .line 327
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@59
    move-result-object v1

    #@5a
    const/16 v2, 0x6f07

    #@5c
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@5f
    .line 329
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@61
    add-int/lit8 v0, v0, 0x1

    #@63
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@65
    goto :goto_1

    #@66
    .line 333
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@68
    .line 334
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    #@6a
    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;)V

    #@6d
    .line 333
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@70
    move-result-object v1

    #@71
    const/16 v2, 0x6f09

    #@73
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@76
    .line 335
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@78
    add-int/lit8 v0, v0, 0x1

    #@7a
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@7c
    goto :goto_0

    #@7d
    .line 307
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x6f02
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private handleIsimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@0
    .prologue
    .line 344
    if-nez p1, :cond_0

    #@2
    .line 345
    const-string/jumbo v0, "handleIsimRefresh received without input"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@8
    .line 346
    return-void

    #@9
    .line 349
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 350
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

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
    .line 356
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@1d
    packed-switch v0, :pswitch_data_0

    #@20
    .line 376
    const-string/jumbo v0, "handleIsimRefresh with unknown operation"

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@26
    .line 343
    :goto_0
    return-void

    #@27
    .line 352
    :cond_2
    const-string/jumbo v0, "handleIsimRefresh received different app"

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@2d
    .line 353
    return-void

    #@2e
    .line 358
    :pswitch_0
    const-string/jumbo v0, "handleIsimRefresh with REFRESH_RESULT_FILE_UPDATE"

    #@31
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@34
    .line 359
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->handleFileUpdate(I)V

    #@39
    goto :goto_0

    #@3a
    .line 363
    :pswitch_1
    const-string/jumbo v0, "handleIsimRefresh with REFRESH_RESULT_INIT"

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@40
    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    #@43
    goto :goto_0

    #@44
    .line 371
    :pswitch_2
    const-string/jumbo v0, "handleIsimRefresh with REFRESH_RESULT_RESET"

    #@47
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@4a
    goto :goto_0

    #@4b
    .line 356
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isimTlvToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "record"    # [B

    #@0
    .prologue
    .line 273
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    #@2
    array-length v1, p0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@7
    .line 275
    .local v0, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0x80

    #@d
    if-ne v1, v2, :cond_1

    #@f
    .line 276
    new-instance v1, Ljava/lang/String;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "UTF-8"

    #@18
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1f
    return-object v1

    #@20
    .line 278
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    .line 280
    const-string/jumbo v1, "IsimUiccRecords"

    #@29
    const-string/jumbo v2, "[ISIM] can\'t find TLV tag in ISIM record, returning null"

    #@2c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 281
    const/4 v1, 0x0

    #@30
    return-object v1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Disposing "

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
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@17
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    #@1c
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@21
    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->resetRecords()V

    #@24
    .line 102
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    #@27
    .line 96
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "IsimRecords: "

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
    .line 502
    const-string/jumbo v0, " extends:"

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 503
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, " mIsimImpi="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, " mIsimDomain="

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

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
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v1, " mIsimImpu[]="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    #@60
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v1, " mIsimIst"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v1, " mIsimPcscf"

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 509
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@a4
    .line 500
    return-void
.end method

.method protected fetchIsimRecords()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v3, 0x64

    #@3
    .line 163
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    #@6
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@8
    .line 166
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    #@a
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;)V

    #@d
    .line 165
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    const/16 v2, 0x6f02

    #@13
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@16
    .line 167
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@1c
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@1e
    .line 170
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    #@20
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;)V

    #@23
    .line 169
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@26
    move-result-object v1

    #@27
    const/16 v2, 0x6f04

    #@29
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@2c
    .line 171
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@32
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@34
    .line 174
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    #@36
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;)V

    #@39
    .line 173
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c
    move-result-object v1

    #@3d
    const/16 v2, 0x6f03

    #@3f
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@42
    .line 175
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@44
    add-int/lit8 v0, v0, 0x1

    #@46
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@48
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4a
    .line 177
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    #@4c
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;)V

    #@4f
    .line 176
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@52
    move-result-object v1

    #@53
    const/16 v2, 0x6f07

    #@55
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@58
    .line 178
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@5a
    add-int/lit8 v0, v0, 0x1

    #@5c
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@5e
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@60
    .line 180
    new-instance v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    #@62
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;)V

    #@65
    .line 179
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@68
    move-result-object v1

    #@69
    const/16 v2, 0x6f09

    #@6b
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    #@6e
    .line 181
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@70
    add-int/lit8 v0, v0, 0x1

    #@72
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@74
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v1, "fetchIsimRecords "

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    iget v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    const-string/jumbo v1, " requested: "

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@9a
    .line 162
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nonce"    # Ljava/lang/String;

    #@0
    .prologue
    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "getIsimChallengeResponse-nonce:"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@17
    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 440
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1c
    const/16 v4, 0x5a

    #@1e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(I)Landroid/os/Message;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v2, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 442
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    #@27
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@2b
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "getIsimChallengeResponse-auth_rsp"

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@44
    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    #@46
    return-object v2

    #@47
    .line 443
    :catch_0
    move-exception v1

    #@48
    .line 444
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v2, "interrupted while trying to request Isim Auth"

    #@4b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 439
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@50
    :try_start_5
    monitor-exit v3

    #@51
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@52
    .line 447
    :catch_1
    move-exception v0

    #@53
    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Fail while trying to request Isim Auth"

    #@56
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@59
    .line 449
    const/4 v2, 0x0

    #@5a
    return-object v2
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/lang/String;

    #@d
    :cond_0
    return-object v0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/lang/String;

    #@d
    :cond_0
    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 514
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 109
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 110
    const-string/jumbo v4, "IsimUiccRecords"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Received message "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    .line 111
    const-string/jumbo v6, "["

    #@1e
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    .line 111
    iget v6, p1, Landroid/os/Message;->what:I

    #@24
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    .line 111
    const-string/jumbo v6, "] while being destroyed. Ignoring."

    #@2b
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 112
    return-void

    #@37
    .line 114
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "IsimUiccRecords: handleMessage "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    const-string/jumbo v5, "["

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    iget v5, p1, Landroid/os/Message;->what:I

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, "] "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    #@62
    .line 117
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    #@64
    sparse-switch v4, :sswitch_data_0

    #@67
    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V

    #@6a
    .line 106
    :cond_1
    :goto_0
    return-void

    #@6b
    .line 119
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->onReady()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    goto :goto_0

    #@6f
    .line 156
    :catch_0
    move-exception v2

    #@70
    .line 158
    .local v2, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "IsimUiccRecords"

    #@73
    const-string/jumbo v5, "Exception parsing SIM record"

    #@76
    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    goto :goto_0

    #@7a
    .line 123
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v0, Landroid/os/AsyncResult;

    #@7e
    .line 124
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v5, "ISim REFRESH(EVENT_ISIM_REFRESH) with exception: "

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    #@97
    .line 125
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@99
    if-nez v4, :cond_1

    #@9b
    .line 126
    new-instance v3, Landroid/content/Intent;

    #@9d
    const-string/jumbo v4, "com.android.intent.isim_refresh"

    #@a0
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a3
    .line 127
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "send ISim REFRESH: com.android.intent.isim_refresh"

    #@a6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    #@a9
    .line 128
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mContext:Landroid/content/Context;

    #@ab
    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@ae
    .line 129
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b0
    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@b2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->handleIsimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@b5
    goto :goto_0

    #@b6
    .line 134
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b8
    check-cast v0, Landroid/os/AsyncResult;

    #@ba
    .line 135
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v4, "EVENT_AKA_AUTHENTICATE_DONE"

    #@bd
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@c0
    .line 136
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c2
    if-eqz v4, :cond_2

    #@c4
    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v5, "Exception ISIM AKA: "

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@dd
    .line 146
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    #@df
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@e0
    .line 147
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    #@e2
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@e6
    goto :goto_0

    #@e7
    .line 140
    :cond_2
    :try_start_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e9
    check-cast v4, Ljava/lang/String;

    #@eb
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    #@ed
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v5, "ISIM AKA: auth_rsp = "

    #@f5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v4

    #@f9
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    #@fb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v4

    #@ff
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v4

    #@103
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@106
    goto :goto_1

    #@107
    .line 142
    :catch_1
    move-exception v1

    #@108
    .line 143
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v5, "Failed to parse ISIM AKA contents: "

    #@110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v4

    #@114
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v4

    #@118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v4

    #@11c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@11f
    goto :goto_1

    #@120
    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@121
    monitor-exit v5

    #@122
    throw v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    #@123
    .line 117
    nop

    #@124
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1f -> :sswitch_1
        0x5a -> :sswitch_2
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 491
    const-string/jumbo v0, "IsimUiccRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ISIM] "

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
    .line 490
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 496
    const-string/jumbo v0, "IsimUiccRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ISIM] "

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
    .line 495
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    const-string/jumbo v0, "record load complete"

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@7
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@9
    .line 303
    new-instance v1, Landroid/os/AsyncResult;

    #@b
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@e
    .line 302
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@11
    .line 300
    return-void
.end method

.method public onReady()V
    .locals 0

    #@0
    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    #@3
    .line 464
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 288
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@7
    .line 289
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
    iget v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

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
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@2d
    .line 291
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@2f
    if-nez v0, :cond_1

    #@31
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->onAllRecordsLoaded()V

    #@38
    .line 285
    :cond_0
    :goto_0
    return-void

    #@39
    .line 293
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@3b
    if-gez v0, :cond_0

    #@3d
    .line 294
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    #@40
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    #@43
    .line 295
    iput v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    #@45
    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    #@0
    .prologue
    .line 470
    if-eqz p1, :cond_0

    #@2
    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    #@5
    .line 469
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 190
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    #@3
    .line 191
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    #@5
    .line 192
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    #@7
    .line 193
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    #@9
    .line 194
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    #@b
    .line 195
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    #@d
    .line 197
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    #@10
    .line 186
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 480
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 485
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "IsimUiccRecords: "

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
    .line 77
    const-string/jumbo v1, ""

    #@17
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
