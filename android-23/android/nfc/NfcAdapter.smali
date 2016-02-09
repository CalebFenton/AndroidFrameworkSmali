.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$ReaderCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$1;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_READER_PRESENCE_CHECK_DELAY:Ljava/lang/String; = "presence"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final FLAG_NDEF_PUSH_NO_CONFIRM:I = 0x1

.field public static final FLAG_READER_NFC_A:I = 0x1

.field public static final FLAG_READER_NFC_B:I = 0x2

.field public static final FLAG_READER_NFC_BARCODE:I = 0x10

.field public static final FLAG_READER_NFC_F:I = 0x4

.field public static final FLAG_READER_NFC_V:I = 0x8

.field public static final FLAG_READER_NO_PLATFORM_SOUNDS:I = 0x100

.field public static final FLAG_READER_SKIP_NDEF_CHECK:I = 0x80

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "NFC"

.field static sCardEmulationService:Landroid/nfc/INfcCardEmulation;

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sService:Landroid/nfc/INfcAdapter;

.field static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final mContext:Landroid/content/Context;

.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final mLock:Ljava/lang/Object;

.field final mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field final mNfcUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/NfcAdapter$NfcUnlockHandler;",
            "Landroid/nfc/INfcUnlockHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 289
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@3
    .line 303
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@a
    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1236
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    #@5
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    #@8
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@a
    .line 533
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@c
    .line 534
    new-instance v0, Landroid/nfc/NfcActivityManager;

    #@e
    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    #@11
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@13
    .line 535
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@1a
    .line 536
    new-instance v0, Ljava/lang/Object;

    #@1c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@21
    .line 532
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 526
    const-string/jumbo v0, "NFC"

    #@3
    const-string/jumbo v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    #@6
    .line 527
    new-instance v2, Ljava/lang/Exception;

    #@8
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@b
    .line 526
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    .line 529
    const/4 v0, 0x0

    #@f
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 495
    if-nez p0, :cond_0

    #@3
    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "context cannot be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 498
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object p0

    #@10
    .line 499
    if-nez p0, :cond_1

    #@12
    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    .line 501
    const-string/jumbo v2, "context not associated with any application (using a mock context?)"

    #@17
    .line 500
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 504
    :cond_1
    const-string/jumbo v1, "nfc"

    #@1e
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/nfc/NfcManager;

    #@24
    .line 505
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_2

    #@26
    .line 507
    return-object v2

    #@27
    .line 509
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v3, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v3

    #@3
    .line 429
    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@5
    if-nez v2, :cond_2

    #@7
    .line 431
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 432
    const-string/jumbo v2, "NFC"

    #@10
    const-string/jumbo v4, "this device does not have NFC support"

    #@13
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 433
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@18
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2

    #@1f
    .line 436
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    #@22
    move-result-object v2

    #@23
    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@25
    .line 437
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@27
    if-nez v2, :cond_1

    #@29
    .line 438
    const-string/jumbo v2, "NFC"

    #@2c
    const-string/jumbo v4, "could not retrieve NFC service"

    #@2f
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 439
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@34
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@37
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 442
    :cond_1
    :try_start_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@3a
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@3d
    move-result-object v2

    #@3e
    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 449
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@42
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@45
    move-result-object v2

    #@46
    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .line 455
    const/4 v2, 0x1

    #@49
    :try_start_4
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@4b
    .line 457
    :cond_2
    if-nez p0, :cond_4

    #@4d
    .line 458
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    #@4f
    if-nez v2, :cond_3

    #@51
    .line 459
    new-instance v2, Landroid/nfc/NfcAdapter;

    #@53
    const/4 v4, 0x0

    #@54
    invoke-direct {v2, v4}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    #@57
    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    #@59
    .line 461
    :cond_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5b
    monitor-exit v3

    #@5c
    return-object v2

    #@5d
    .line 443
    :catch_0
    move-exception v1

    #@5e
    .line 444
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "NFC"

    #@61
    const-string/jumbo v4, "could not retrieve NFC Tag service"

    #@64
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 445
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@69
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@6c
    throw v2

    #@6d
    .line 450
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@6e
    .line 451
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@71
    const-string/jumbo v4, "could not retrieve card emulation service"

    #@74
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 452
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@79
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@7c
    throw v2

    #@7d
    .line 463
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@7f
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    check-cast v0, Landroid/nfc/NfcAdapter;

    #@85
    .line 464
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_5

    #@87
    .line 465
    new-instance v0, Landroid/nfc/NfcAdapter;

    #@89
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    #@8c
    .line 466
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@8e
    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@91
    :cond_5
    monitor-exit v3

    #@92
    .line 468
    return-object v0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 474
    const-string/jumbo v1, "nfc"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 475
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@a
    .line 476
    return-object v2

    #@b
    .line 478
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private static hasNfcFeature()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 410
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 411
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    #@7
    .line 412
    const-string/jumbo v2, "NFC"

    #@a
    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 413
    return v4

    #@11
    .line 416
    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.hardware.nfc"

    #@14
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 417
    :catch_0
    move-exception v0

    #@1a
    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@1d
    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    #@20
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 419
    return v4
.end method


# virtual methods
.method public addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .param p2, "tagTechnologies"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1521
    array-length v3, p2

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1522
    return v6

    #@5
    .line 1526
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    .line 1527
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@a
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 1529
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@12
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@14
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/nfc/INfcUnlockHandler;

    #@1a
    invoke-interface {v5, v3}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    #@1d
    .line 1530
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1533
    :cond_1
    new-instance v2, Landroid/nfc/NfcAdapter$2;

    #@24
    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    #@27
    .line 1540
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@29
    .line 1541
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    #@2c
    move-result-object v5

    #@2d
    .line 1540
    invoke-interface {v3, v2, v5}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    #@30
    .line 1542
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@32
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :try_start_2
    monitor-exit v4

    #@36
    .line 1552
    const/4 v3, 0x1

    #@37
    return v3

    #@38
    .line 1526
    .end local v2    # "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    :catchall_0
    move-exception v3

    #@39
    monitor-exit v4

    #@3a
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@3b
    .line 1544
    :catch_0
    move-exception v0

    #@3c
    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@3f
    .line 1546
    return v6

    #@40
    .line 1547
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@41
    .line 1548
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "NFC"

    #@44
    const-string/jumbo v4, "Unable to register LockscreenDispatch"

    #@47
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 1549
    return v6
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 578
    const-string/jumbo v2, "NFC"

    #@3
    const-string/jumbo v3, "NFC service dead - attempting to recover"

    #@6
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 579
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    #@c
    move-result-object v1

    #@d
    .line 580
    .local v1, "service":Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    #@f
    .line 581
    const-string/jumbo v2, "NFC"

    #@12
    const-string/jumbo v3, "could not retrieve NFC service during service recovery"

    #@15
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 584
    return-void

    #@19
    .line 588
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@1b
    .line 590
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@1e
    move-result-object v2

    #@1f
    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 599
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@24
    move-result-object v2

    #@25
    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    .line 604
    :goto_0
    return-void

    #@28
    .line 591
    :catch_0
    move-exception v0

    #@29
    .line 592
    .local v0, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@2c
    const-string/jumbo v3, "could not retrieve NFC tag service during service recovery"

    #@2f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 595
    return-void

    #@33
    .line 600
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@34
    .line 601
    .restart local v0    # "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@37
    const-string/jumbo v3, "could not retrieve NFC card emulation service during service recovery"

    #@3a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto :goto_0
.end method

.method public disable()Z
    .locals 3

    #@0
    .prologue
    .line 697
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 698
    :catch_0
    move-exception v0

    #@9
    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@c
    .line 700
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public disable(Z)Z
    .locals 2
    .param p1, "persist"    # Z

    #@0
    .prologue
    .line 711
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 712
    :catch_0
    move-exception v0

    #@8
    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 714
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1231
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@3
    move-result-object v0

    #@4
    .line 1232
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@6
    .line 1231
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    #@9
    .line 1233
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    #@d
    .line 1230
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1245
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    invoke-interface {v1, v2, v3, v4}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    #@8
    .line 1246
    if-nez p2, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1243
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1247
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v2, "You must disable foreground dispatching while your activity is still resumed"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1250
    :catch_0
    move-exception v0

    #@1b
    .line 1251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1e
    goto :goto_0
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1402
    if-nez p1, :cond_0

    #@4
    .line 1403
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1405
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@d
    .line 1406
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@f
    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@12
    .line 1407
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@14
    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@17
    .line 1408
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@19
    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    #@1c
    .line 1401
    return-void
.end method

.method public disableNdefPush()Z
    .locals 2

    #@0
    .prologue
    .line 1434
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1435
    :catch_0
    move-exception v0

    #@8
    .line 1436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 1437
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    #@5
    .line 1288
    return-void
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    .line 1481
    if-nez p1, :cond_0

    #@2
    .line 1482
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "tag cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1485
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@d
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1480
    :goto_0
    return-void

    #@11
    .line 1486
    :catch_0
    move-exception v0

    #@12
    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@15
    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    #@0
    .prologue
    .line 669
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 670
    :catch_0
    move-exception v0

    #@8
    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 672
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "filters"    # [Landroid/content/IntentFilter;
    .param p4, "techLists"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 1196
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1197
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1199
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_2

    #@10
    .line 1200
    new-instance v3, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v4, "Foreground dispatch can only be enabled when your activity is resumed"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 1204
    :cond_2
    const/4 v1, 0x0

    #@1a
    .line 1205
    .local v1, "parcel":Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_3

    #@1c
    :try_start_0
    array-length v3, p4

    #@1d
    if-lez v3, :cond_3

    #@1f
    .line 1206
    new-instance v2, Landroid/nfc/TechListParcel;

    #@21
    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    #@24
    .local v2, "parcel":Landroid/nfc/TechListParcel;
    move-object v1, v2

    #@25
    .line 1208
    .end local v1    # "parcel":Landroid/nfc/TechListParcel;
    .end local v2    # "parcel":Landroid/nfc/TechListParcel;
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@28
    move-result-object v3

    #@29
    .line 1209
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@2b
    .line 1208
    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    #@2e
    .line 1210
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@30
    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 1195
    :goto_0
    return-void

    #@34
    .line 1211
    :catch_0
    move-exception v0

    #@35
    .line 1212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@38
    goto :goto_0
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1374
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1375
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1377
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@d
    .line 1378
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@13
    .line 1373
    return-void
.end method

.method public enableNdefPush()Z
    .locals 2

    #@0
    .prologue
    .line 1419
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1420
    :catch_0
    move-exception v0

    #@8
    .line 1421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 1422
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1278
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    #@5
    .line 1277
    return-void
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1594
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1595
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "API cannot be called while activity is paused"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1593
    :cond_0
    return-void
.end method

.method public getAdapterState()I
    .locals 2

    #@0
    .prologue
    .line 643
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 644
    :catch_0
    move-exception v0

    #@8
    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 646
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method public getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .locals 1

    #@0
    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 570
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    #@5
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1581
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1582
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 1586
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@10
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 1587
    :catch_0
    move-exception v0

    #@1c
    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1f
    .line 1589
    return-object v3
.end method

.method getSdkVersion()I
    .locals 1

    #@0
    .prologue
    .line 1600
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1601
    const/16 v0, 0x9

    #@6
    return v0

    #@7
    .line 1603
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@f
    return v0
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .locals 1

    #@0
    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 552
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@5
    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    #@0
    .prologue
    .line 560
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 561
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    #@5
    return-object v0
.end method

.method public invokeBeam(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1317
    if-nez p1, :cond_0

    #@2
    .line 1318
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "activity may not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1320
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@e
    .line 1322
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@10
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1323
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 1324
    :catch_0
    move-exception v0

    #@16
    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@19
    const-string/jumbo v2, "invokeBeam: NFC process has died."

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1326
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@22
    .line 1327
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public invokeBeam(Landroid/nfc/BeamShareData;)Z
    .locals 3
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    #@0
    .prologue
    .line 1336
    :try_start_0
    const-string/jumbo v1, "NFC"

    #@3
    const-string/jumbo v2, "invokeBeamInternal()"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1337
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@b
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1338
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 1339
    :catch_0
    move-exception v0

    #@11
    .line 1340
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@14
    const-string/jumbo v2, "invokeBeam: NFC process has died."

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1341
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1d
    .line 1342
    const/4 v1, 0x0

    #@1e
    return v1
.end method

.method public isEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 621
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@3
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v2

    #@7
    const/4 v3, 0x3

    #@8
    if-ne v2, v3, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1

    #@c
    .line 622
    :catch_0
    move-exception v0

    #@d
    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@10
    .line 624
    return v1
.end method

.method public isNdefPushEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1466
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1467
    :catch_0
    move-exception v0

    #@8
    .line 1468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 1469
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public pausePolling(I)V
    .locals 2
    .param p1, "timeoutInMs"    # I

    #@0
    .prologue
    .line 725
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 723
    :goto_0
    return-void

    #@6
    .line 726
    :catch_0
    move-exception v0

    #@7
    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    .locals 4
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    #@0
    .prologue
    .line 1564
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1565
    :try_start_1
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1566
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@d
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/nfc/INfcUnlockHandler;

    #@15
    invoke-interface {v3, v1}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 1569
    :cond_0
    const/4 v1, 0x1

    #@19
    :try_start_2
    monitor-exit v2

    #@1a
    return v1

    #@1b
    .line 1564
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1571
    :catch_0
    move-exception v0

    #@1f
    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@22
    .line 1573
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public resumePolling()V
    .locals 2

    #@0
    .prologue
    .line 739
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 737
    :goto_0
    return-void

    #@6
    .line 740
    :catch_0
    move-exception v0

    #@7
    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 806
    if-nez p2, :cond_0

    #@2
    .line 807
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "activity cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 809
    :cond_0
    if-eqz p1, :cond_4

    #@d
    .line 810
    const/4 v2, 0x0

    #@e
    array-length v3, p1

    #@f
    :goto_0
    if-ge v2, v3, :cond_4

    #@11
    aget-object v1, p1, v2

    #@13
    .line 811
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    #@15
    new-instance v2, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v3, "Uri not allowed to be null"

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 813
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 814
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@24
    const-string/jumbo v4, "file"

    #@27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_2

    #@2d
    .line 815
    const-string/jumbo v4, "content"

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 810
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 816
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 821
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@44
    invoke-virtual {v2, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    #@47
    .line 805
    return-void
.end method

.method public setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 882
    if-nez p2, :cond_0

    #@2
    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 885
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    #@10
    .line 881
    return-void
.end method

.method public setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 990
    if-nez p2, :cond_0

    #@2
    .line 991
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 993
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@10
    .line 989
    return-void
.end method

.method public varargs setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 961
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@4
    move-result v2

    #@5
    .line 963
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    #@7
    .line 964
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v4, "activity cannot be null"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 973
    :catch_0
    move-exception v1

    #@11
    .line 974
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@13
    if-ge v2, v3, :cond_3

    #@15
    .line 976
    const-string/jumbo v3, "NFC"

    #@18
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@1b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 960
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    #@1f
    .line 966
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@21
    const/4 v5, 0x0

    #@22
    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@25
    .line 967
    array-length v4, p3

    #@26
    :goto_0
    if-ge v3, v4, :cond_0

    #@28
    aget-object v0, p3, v3

    #@2a
    .line 968
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    #@2c
    .line 969
    new-instance v3, Ljava/lang/NullPointerException;

    #@2e
    const-string/jumbo v4, "activities cannot contain null"

    #@31
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 971
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 967
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 980
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    throw v1
.end method

.method public setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1092
    if-nez p2, :cond_0

    #@2
    .line 1093
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1095
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@10
    .line 1091
    return-void
.end method

.method public varargs setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1063
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@4
    move-result v2

    #@5
    .line 1065
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    #@7
    .line 1066
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v4, "activity cannot be null"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1075
    :catch_0
    move-exception v1

    #@11
    .line 1076
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@13
    if-ge v2, v3, :cond_3

    #@15
    .line 1078
    const-string/jumbo v3, "NFC"

    #@18
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@1b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 1062
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    #@1f
    .line 1068
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@21
    const/4 v5, 0x0

    #@22
    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@25
    .line 1069
    array-length v4, p3

    #@26
    :goto_0
    if-ge v3, v4, :cond_0

    #@28
    aget-object v0, p3, v3

    #@2a
    .line 1070
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    #@2c
    .line 1071
    new-instance v3, Ljava/lang/NullPointerException;

    #@2e
    const-string/jumbo v4, "activities cannot contain null"

    #@31
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 1073
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 1069
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1082
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    throw v1
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    #@0
    .prologue
    .line 1137
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@3
    move-result v2

    #@4
    .line 1139
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    #@6
    .line 1140
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v4, "activity cannot be null"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1149
    :catch_0
    move-exception v1

    #@10
    .line 1150
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@12
    if-ge v2, v3, :cond_3

    #@14
    .line 1152
    const-string/jumbo v3, "NFC"

    #@17
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@1a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 1136
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    #@1e
    .line 1142
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@20
    invoke-virtual {v3, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    #@23
    .line 1143
    const/4 v3, 0x0

    #@24
    array-length v4, p3

    #@25
    :goto_0
    if-ge v3, v4, :cond_0

    #@27
    aget-object v0, p3, v3

    #@29
    .line 1144
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    #@2b
    .line 1145
    new-instance v3, Ljava/lang/NullPointerException;

    #@2d
    const-string/jumbo v4, "activities cannot contain null"

    #@30
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 1147
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@36
    invoke-virtual {v5, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@39
    .line 1143
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1156
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    throw v1
.end method

.method public setP2pModes(II)V
    .locals 2
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I

    #@0
    .prologue
    .line 1496
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1494
    :goto_0
    return-void

    #@6
    .line 1497
    :catch_0
    move-exception v0

    #@7
    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method
