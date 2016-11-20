.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$1;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$OnTagRemovedListener;,
        Landroid/nfc/NfcAdapter$ReaderCallback;
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

.field static sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

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

.field mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 292
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@3
    .line 307
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@a
    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1273
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    #@5
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    #@8
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@a
    .line 554
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@c
    .line 555
    new-instance v0, Landroid/nfc/NfcActivityManager;

    #@e
    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    #@11
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@13
    .line 556
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@1a
    .line 557
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    #@1d
    .line 558
    new-instance v0, Ljava/lang/Object;

    #@1f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@22
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@24
    .line 553
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 547
    const-string/jumbo v0, "NFC"

    #@3
    const-string/jumbo v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    #@6
    .line 548
    new-instance v2, Ljava/lang/Exception;

    #@8
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@b
    .line 547
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    .line 550
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
    .line 516
    if-nez p0, :cond_0

    #@3
    .line 517
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "context cannot be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 519
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object p0

    #@10
    .line 520
    if-nez p0, :cond_1

    #@12
    .line 521
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    .line 522
    const-string/jumbo v2, "context not associated with any application (using a mock context?)"

    #@17
    .line 521
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 525
    :cond_1
    const-string/jumbo v1, "nfc"

    #@1e
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/nfc/NfcManager;

    #@24
    .line 526
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_2

    #@26
    .line 528
    return-object v2

    #@27
    .line 530
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
    .line 443
    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@5
    if-nez v2, :cond_2

    #@7
    .line 445
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 446
    const-string/jumbo v2, "NFC"

    #@10
    const-string/jumbo v4, "this device does not have NFC support"

    #@13
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 447
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
    .line 450
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    #@22
    move-result-object v2

    #@23
    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@25
    .line 451
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@27
    if-nez v2, :cond_1

    #@29
    .line 452
    const-string/jumbo v2, "NFC"

    #@2c
    const-string/jumbo v4, "could not retrieve NFC service"

    #@2f
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 453
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@34
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@37
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 456
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
    .line 463
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
    .line 470
    :try_start_4
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@4a
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    #@4d
    move-result-object v2

    #@4e
    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    .line 476
    const/4 v2, 0x1

    #@51
    :try_start_5
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@53
    .line 478
    :cond_2
    if-nez p0, :cond_4

    #@55
    .line 479
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    #@57
    if-nez v2, :cond_3

    #@59
    .line 480
    new-instance v2, Landroid/nfc/NfcAdapter;

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-direct {v2, v4}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    #@5f
    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    #@61
    .line 482
    :cond_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@63
    monitor-exit v3

    #@64
    return-object v2

    #@65
    .line 457
    :catch_0
    move-exception v1

    #@66
    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v2, "NFC"

    #@69
    const-string/jumbo v4, "could not retrieve NFC Tag service"

    #@6c
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 459
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@71
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@74
    throw v2

    #@75
    .line 464
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@76
    .line 465
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@79
    const-string/jumbo v4, "could not retrieve card emulation service"

    #@7c
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 466
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@81
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@84
    throw v2

    #@85
    .line 471
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    #@86
    .line 472
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@89
    const-string/jumbo v4, "could not retrieve NFC-F card emulation service"

    #@8c
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 473
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@91
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@94
    throw v2

    #@95
    .line 484
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@97
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    move-result-object v0

    #@9b
    check-cast v0, Landroid/nfc/NfcAdapter;

    #@9d
    .line 485
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_5

    #@9f
    .line 486
    new-instance v0, Landroid/nfc/NfcAdapter;

    #@a1
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    #@a4
    .line 487
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@a6
    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a9
    :cond_5
    monitor-exit v3

    #@aa
    .line 489
    return-object v0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 495
    const-string/jumbo v1, "nfc"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 496
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@a
    .line 497
    return-object v2

    #@b
    .line 499
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
    .line 424
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 425
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    #@7
    .line 426
    const-string/jumbo v2, "NFC"

    #@a
    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 427
    return v4

    #@11
    .line 430
    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.hardware.nfc"

    #@14
    const/4 v3, 0x0

    #@15
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 431
    :catch_0
    move-exception v0

    #@1b
    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@1e
    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    #@21
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 433
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
    .line 1627
    array-length v3, p2

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1628
    return v6

    #@5
    .line 1632
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    .line 1633
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@a
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 1635
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
    .line 1636
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1639
    :cond_1
    new-instance v2, Landroid/nfc/NfcAdapter$3;

    #@24
    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    #@27
    .line 1646
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@29
    .line 1647
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    #@2c
    move-result-object v5

    #@2d
    .line 1646
    invoke-interface {v3, v2, v5}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    #@30
    .line 1648
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@32
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :try_start_2
    monitor-exit v4

    #@36
    .line 1658
    const/4 v3, 0x1

    #@37
    return v3

    #@38
    .line 1632
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
    .line 1650
    :catch_0
    move-exception v0

    #@3c
    .line 1651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@3f
    .line 1652
    return v6

    #@40
    .line 1653
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@41
    .line 1654
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "NFC"

    #@44
    const-string/jumbo v4, "Unable to register LockscreenDispatch"

    #@47
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 1655
    return v6
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 609
    const-string/jumbo v2, "NFC"

    #@3
    const-string/jumbo v3, "NFC service dead - attempting to recover"

    #@6
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 610
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    #@c
    move-result-object v1

    #@d
    .line 611
    .local v1, "service":Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    #@f
    .line 612
    const-string/jumbo v2, "NFC"

    #@12
    const-string/jumbo v3, "could not retrieve NFC service during service recovery"

    #@15
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 615
    return-void

    #@19
    .line 619
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@1b
    .line 621
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@1e
    move-result-object v2

    #@1f
    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 630
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@24
    move-result-object v2

    #@25
    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    .line 636
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    #@2a
    move-result-object v2

    #@2b
    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@2d
    .line 641
    :goto_1
    return-void

    #@2e
    .line 622
    :catch_0
    move-exception v0

    #@2f
    .line 623
    .local v0, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@32
    const-string/jumbo v3, "could not retrieve NFC tag service during service recovery"

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 626
    return-void

    #@39
    .line 631
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@3a
    .line 632
    .restart local v0    # "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@3d
    const-string/jumbo v3, "could not retrieve NFC card emulation service during service recovery"

    #@40
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    goto :goto_0

    #@44
    .line 637
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@45
    .line 638
    .restart local v0    # "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@48
    const-string/jumbo v3, "could not retrieve NFC-F card emulation service during service recovery"

    #@4b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_1
.end method

.method public disable()Z
    .locals 3

    #@0
    .prologue
    .line 734
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
    .line 735
    :catch_0
    move-exception v0

    #@9
    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@c
    .line 737
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public disable(Z)Z
    .locals 2
    .param p1, "persist"    # Z

    #@0
    .prologue
    .line 748
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
    .line 749
    :catch_0
    move-exception v0

    #@8
    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 751
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1268
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@3
    move-result-object v0

    #@4
    .line 1269
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@6
    .line 1268
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    #@9
    .line 1270
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    #@d
    .line 1267
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1282
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
    .line 1283
    if-nez p2, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1280
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1284
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
    .line 1287
    :catch_0
    move-exception v0

    #@1b
    .line 1288
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
    .line 1439
    if-nez p1, :cond_0

    #@4
    .line 1440
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1442
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@d
    .line 1443
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@f
    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@12
    .line 1444
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@14
    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@17
    .line 1445
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@19
    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    #@1c
    .line 1438
    return-void
.end method

.method public disableNdefPush()Z
    .locals 2

    #@0
    .prologue
    .line 1471
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
    .line 1472
    :catch_0
    move-exception v0

    #@8
    .line 1473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 1474
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    #@5
    .line 1325
    return-void
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    .line 1587
    if-nez p1, :cond_0

    #@2
    .line 1588
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "tag cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1591
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@d
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1586
    :goto_0
    return-void

    #@11
    .line 1592
    :catch_0
    move-exception v0

    #@12
    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@15
    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    #@0
    .prologue
    .line 706
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
    .line 707
    :catch_0
    move-exception v0

    #@8
    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 709
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
    .line 1233
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1234
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1236
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_2

    #@10
    .line 1237
    new-instance v3, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v4, "Foreground dispatch can only be enabled when your activity is resumed"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 1241
    :cond_2
    const/4 v1, 0x0

    #@1a
    .line 1242
    .local v1, "parcel":Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_3

    #@1c
    :try_start_0
    array-length v3, p4

    #@1d
    if-lez v3, :cond_3

    #@1f
    .line 1243
    new-instance v2, Landroid/nfc/TechListParcel;

    #@21
    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    #@24
    .local v2, "parcel":Landroid/nfc/TechListParcel;
    move-object v1, v2

    #@25
    .line 1245
    .end local v1    # "parcel":Landroid/nfc/TechListParcel;
    .end local v2    # "parcel":Landroid/nfc/TechListParcel;
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@28
    move-result-object v3

    #@29
    .line 1246
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@2b
    .line 1245
    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    #@2e
    .line 1247
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@30
    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 1232
    :goto_0
    return-void

    #@34
    .line 1248
    :catch_0
    move-exception v0

    #@35
    .line 1249
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
    .line 1411
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1412
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1414
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@d
    .line 1415
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@13
    .line 1410
    return-void
.end method

.method public enableNdefPush()Z
    .locals 2

    #@0
    .prologue
    .line 1456
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
    .line 1457
    :catch_0
    move-exception v0

    #@8
    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 1459
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
    .line 1315
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    #@5
    .line 1314
    return-void
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1700
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1701
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "API cannot be called while activity is paused"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1699
    :cond_0
    return-void
.end method

.method public getAdapterState()I
    .locals 2

    #@0
    .prologue
    .line 680
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
    .line 681
    :catch_0
    move-exception v0

    #@8
    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 683
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method public getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .locals 1

    #@0
    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 592
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    #@5
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 565
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
    .line 1687
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1688
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 1692
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
    .line 1693
    :catch_0
    move-exception v0

    #@1c
    .line 1694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1f
    .line 1695
    return-object v3
.end method

.method public getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    #@0
    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 601
    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    #@5
    return-object v0
.end method

.method getSdkVersion()I
    .locals 1

    #@0
    .prologue
    .line 1706
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1707
    const/16 v0, 0x9

    #@6
    return v0

    #@7
    .line 1709
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
    .line 573
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 574
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@5
    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    #@0
    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 583
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    #@5
    return-object v0
.end method

.method public ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "debounceMs"    # I
    .param p3, "tagRemovedListener"    # Landroid/nfc/NfcAdapter$OnTagRemovedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1548
    const/4 v1, 0x0

    #@1
    .line 1549
    .local v1, "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    if-eqz p3, :cond_0

    #@3
    .line 1550
    new-instance v1, Landroid/nfc/NfcAdapter$2;

    #@5
    .end local v1    # "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    #@8
    .line 1569
    :cond_0
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v2

    #@b
    .line 1570
    :try_start_0
    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 1573
    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@10
    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    #@13
    move-result v3

    #@14
    invoke-interface {v2, v3, p2, v1}, Landroid/nfc/INfcAdapter;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 1569
    :catchall_0
    move-exception v3

    #@1a
    monitor-exit v2

    #@1b
    throw v3

    #@1c
    .line 1574
    :catch_0
    move-exception v0

    #@1d
    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@1e
    return v2
.end method

.method public invokeBeam(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1354
    if-nez p1, :cond_0

    #@2
    .line 1355
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "activity may not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1357
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@e
    .line 1359
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@10
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1360
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 1361
    :catch_0
    move-exception v0

    #@16
    .line 1362
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@19
    const-string/jumbo v2, "invokeBeam: NFC process has died."

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1363
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@22
    .line 1364
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public invokeBeam(Landroid/nfc/BeamShareData;)Z
    .locals 3
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    #@0
    .prologue
    .line 1373
    :try_start_0
    const-string/jumbo v1, "NFC"

    #@3
    const-string/jumbo v2, "invokeBeamInternal()"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1374
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@b
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1375
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 1376
    :catch_0
    move-exception v0

    #@11
    .line 1377
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@14
    const-string/jumbo v2, "invokeBeam: NFC process has died."

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1378
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1d
    .line 1379
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
    .line 658
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
    .line 659
    :catch_0
    move-exception v0

    #@d
    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@10
    .line 661
    return v1
.end method

.method public isNdefPushEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1503
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
    .line 1504
    :catch_0
    move-exception v0

    #@8
    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 1506
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public pausePolling(I)V
    .locals 2
    .param p1, "timeoutInMs"    # I

    #@0
    .prologue
    .line 762
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 760
    :goto_0
    return-void

    #@6
    .line 763
    :catch_0
    move-exception v0

    #@7
    .line 764
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
    .line 1670
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1671
    :try_start_1
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1672
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
    .line 1675
    :cond_0
    const/4 v1, 0x1

    #@19
    :try_start_2
    monitor-exit v2

    #@1a
    return v1

    #@1b
    .line 1670
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1677
    :catch_0
    move-exception v0

    #@1f
    .line 1678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@22
    .line 1679
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public resumePolling()V
    .locals 2

    #@0
    .prologue
    .line 776
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 774
    :goto_0
    return-void

    #@6
    .line 777
    :catch_0
    move-exception v0

    #@7
    .line 778
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
    .line 843
    if-nez p2, :cond_0

    #@2
    .line 844
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "activity cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 846
    :cond_0
    if-eqz p1, :cond_4

    #@d
    .line 847
    const/4 v2, 0x0

    #@e
    array-length v3, p1

    #@f
    :goto_0
    if-ge v2, v3, :cond_4

    #@11
    aget-object v1, p1, v2

    #@13
    .line 848
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
    .line 850
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 851
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
    .line 852
    const-string/jumbo v4, "content"

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 847
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 853
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 858
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@44
    invoke-virtual {v2, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    #@47
    .line 842
    return-void
.end method

.method public setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 919
    if-nez p2, :cond_0

    #@2
    .line 920
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 922
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    #@10
    .line 918
    return-void
.end method

.method public setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1027
    if-nez p2, :cond_0

    #@2
    .line 1028
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@10
    .line 1026
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
    .line 998
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@4
    move-result v2

    #@5
    .line 1000
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    #@7
    .line 1001
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
    .line 1010
    :catch_0
    move-exception v1

    #@11
    .line 1011
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@13
    if-ge v2, v3, :cond_3

    #@15
    .line 1013
    const-string/jumbo v3, "NFC"

    #@18
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@1b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 997
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    #@1f
    .line 1003
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@21
    const/4 v5, 0x0

    #@22
    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@25
    .line 1004
    array-length v4, p3

    #@26
    :goto_0
    if-ge v3, v4, :cond_0

    #@28
    aget-object v0, p3, v3

    #@2a
    .line 1005
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    #@2c
    .line 1006
    new-instance v3, Ljava/lang/NullPointerException;

    #@2e
    const-string/jumbo v4, "activities cannot contain null"

    #@31
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 1008
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 1004
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1017
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
    .line 1129
    if-nez p2, :cond_0

    #@2
    .line 1130
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1132
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@10
    .line 1128
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
    .line 1100
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@4
    move-result v2

    #@5
    .line 1102
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    #@7
    .line 1103
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
    .line 1112
    :catch_0
    move-exception v1

    #@11
    .line 1113
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@13
    if-ge v2, v3, :cond_3

    #@15
    .line 1115
    const-string/jumbo v3, "NFC"

    #@18
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@1b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 1099
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    #@1f
    .line 1105
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@21
    const/4 v5, 0x0

    #@22
    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@25
    .line 1106
    array-length v4, p3

    #@26
    :goto_0
    if-ge v3, v4, :cond_0

    #@28
    aget-object v0, p3, v3

    #@2a
    .line 1107
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    #@2c
    .line 1108
    new-instance v3, Ljava/lang/NullPointerException;

    #@2e
    const-string/jumbo v4, "activities cannot contain null"

    #@31
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 1110
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 1106
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1119
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
    .line 1174
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@3
    move-result v2

    #@4
    .line 1176
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    #@6
    .line 1177
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
    .line 1186
    :catch_0
    move-exception v1

    #@10
    .line 1187
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@12
    if-ge v2, v3, :cond_3

    #@14
    .line 1189
    const-string/jumbo v3, "NFC"

    #@17
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@1a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 1173
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    #@1e
    .line 1179
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@20
    invoke-virtual {v3, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    #@23
    .line 1180
    const/4 v3, 0x0

    #@24
    array-length v4, p3

    #@25
    :goto_0
    if-ge v3, v4, :cond_0

    #@27
    aget-object v0, p3, v3

    #@29
    .line 1181
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    #@2b
    .line 1182
    new-instance v3, Ljava/lang/NullPointerException;

    #@2d
    const-string/jumbo v4, "activities cannot contain null"

    #@30
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 1184
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@36
    invoke-virtual {v5, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@39
    .line 1180
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1193
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
    .line 1602
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1600
    :goto_0
    return-void

    #@6
    .line 1603
    :catch_0
    move-exception v0

    #@7
    .line 1604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method
