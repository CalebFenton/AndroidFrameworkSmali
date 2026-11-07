.class public Lcom/android/internal/telephony/uicc/IsimUiccRecords;
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
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;
    }
.end annotation


# static fields
.field public static final blacklist INTENT_ISIM_REFRESH:Ljava/lang/String; = "com.android.intent.isim_refresh"

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "IsimUiccRecords"

.field private static final blacklist VDBG:Z


# instance fields
.field private greylist-max-r auth_rsp:Ljava/lang/String;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private greylist-max-r mIsimDomain:Ljava/lang/String;

.field private greylist-max-r mIsimImpi:Ljava/lang/String;

.field private greylist-max-r mIsimImpu:[Ljava/lang/String;

.field private greylist-max-r mIsimIst:Ljava/lang/String;

.field private greylist-max-r mIsimPcscf:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsimImpu(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsimPcscf(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsimDomain(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsimImpi(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsimImpu(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsimIst(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsimPcscf(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVDBG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->VDBG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisimTlvToString([B)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    const-string v0, "IsimUiccRecords"

    const/4 v1, 0x2

    .line 53
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 92
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 96
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 99
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->resetRecords()V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IsimUiccRecords X ctor this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastRefresh()V
    .registers 3

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.isim_refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v1, "send ISim REFRESH: com.android.intent.isim_refresh"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 400
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist getIsimServiceTable()Lcom/android/internal/telephony/uicc/IsimServiceTable;
    .registers 2

    .line 519
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    if-eqz p0, :cond_e

    .line 520
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 521
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IsimServiceTable;-><init>([B)V

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-r isimTlvToString([B)Ljava/lang/String;
    .registers 4

    .line 306
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 308
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1f

    .line 309
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 311
    :cond_1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_7

    .line 313
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->VDBG:Z

    if-eqz v0, :cond_43

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ISIM] can\'t find TLV. record = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IsimUiccRecords"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist onLockedAllRecordsLoaded()V
    .registers 4

    .line 337
    const-string v0, "SIM locked; record load complete"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :cond_16
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 344
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLockedAllRecordsLoaded: unexpected mLockedRecordsReqReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->resetRecords()V

    .line 109
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsimServiceTable="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimServiceTable()Lcom/android/internal/telephony/uicc/IsimServiceTable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected greylist-max-r fetchIsimRecords()V
    .registers 7

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    const/16 v4, 0x64

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x6f02

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 145
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x6f04

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 149
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x6f03

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 153
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x6f07

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 156
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x6f09

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 159
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x6f43

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 162
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fe5

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 166
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchIsimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getIsimDomain()Ljava/lang/String;
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimImpi()Ljava/lang/String;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimImpu()[Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIsimIst()Ljava/lang/String;
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimIstObject()Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    return-object v0
.end method

.method public blacklist getIsimPcscf()[Ljava/lang/String;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPsiSmscObject()Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;
    .registers 3

    .line 296
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    return-object v0
.end method

.method public blacklist getVoiceMessageCount()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist handleFileUpdate(I)V
    .registers 6

    const/16 v0, 0x6f07

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq p1, v0, :cond_72

    const/16 v0, 0x6f09

    if-eq p1, v0, :cond_54

    packed-switch p1, :pswitch_data_88

    goto :goto_68

    .line 366
    :pswitch_f
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6f04

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 368
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void

    .line 372
    :pswitch_26
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6f03

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 374
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void

    .line 360
    :pswitch_3d
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6f02

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 362
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void

    .line 384
    :cond_54
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 386
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 389
    :goto_68
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    return-void

    .line 378
    :cond_72
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 380
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x6f02
        :pswitch_3d
        :pswitch_26
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "["

    const-string v2, "IsimUiccRecords"

    if-eqz v0, :cond_2e

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received message "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] while being destroyed. Ignoring."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsimUiccRecords: handleMessage "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 124
    :try_start_4f
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_5b

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V

    return-void

    :catch_59
    move-exception p0

    goto :goto_62

    .line 126
    :cond_5b
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->broadcastRefresh()V

    .line 127
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_61} :catch_59

    return-void

    .line 135
    :goto_62
    const-string p1, "Exception parsing SIM record"

    invoke-static {v2, p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "IsimUiccRecords"

    if-eqz v0, :cond_29

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIM-"

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

    .line 487
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ISIM] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "IsimUiccRecords"

    if-eqz v0, :cond_29

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIM-"

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

    .line 496
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ISIM] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist onAllRecordsLoaded()V
    .registers 3

    .line 351
    const-string v0, "record load complete"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist onReady()V
    .registers 1

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    return-void
.end method

.method protected blacklist onRecordLoaded()V
    .registers 3

    .line 323
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    .line 324
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->onAllRecordsLoaded()V

    return-void

    .line 328
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_4a

    .line 330
    :cond_3d
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-gez v0, :cond_49

    .line 331
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    :cond_49
    return-void

    .line 329
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->onLockedAllRecordsLoaded()V

    return-void
.end method

.method public blacklist onRefresh(Z[I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    :cond_5
    return-void
.end method

.method protected blacklist resetRecords()V
    .registers 2

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 183
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setVoiceMessageWaiting(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimUiccRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
