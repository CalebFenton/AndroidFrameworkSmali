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

.field static sHasNfcFeature:Z

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
    .line 308
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
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1344
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    #@5
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    #@8
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@a
    .line 578
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@c
    .line 579
    new-instance v0, Landroid/nfc/NfcActivityManager;

    #@e
    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    #@11
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@13
    .line 580
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@1a
    .line 581
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    #@1d
    .line 582
    new-instance v0, Ljava/lang/Object;

    #@1f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@22
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@24
    .line 577
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 571
    const-string/jumbo v0, "NFC"

    #@3
    const-string/jumbo v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    #@6
    .line 572
    new-instance v2, Ljava/lang/Exception;

    #@8
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@b
    .line 571
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    .line 574
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
    .line 540
    if-nez p0, :cond_0

    #@3
    .line 541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "context cannot be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object p0

    #@10
    .line 544
    if-nez p0, :cond_1

    #@12
    .line 545
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    .line 546
    const-string/jumbo v2, "context not associated with any application (using a mock context?)"

    #@17
    .line 545
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 549
    :cond_1
    const-string/jumbo v1, "nfc"

    #@1e
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/nfc/NfcManager;

    #@24
    .line 550
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_2

    #@26
    .line 552
    return-object v2

    #@27
    .line 554
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v4, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v4

    #@3
    .line 464
    :try_start_0
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@5
    if-nez v3, :cond_5

    #@7
    .line 465
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    #@a
    move-result v3

    #@b
    sput-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@d
    .line 466
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcHceFeature()Z

    #@10
    move-result v2

    #@11
    .line 468
    .local v2, "hasHceFeature":Z
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@13
    if-nez v3, :cond_0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 472
    :cond_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    #@1a
    move-result-object v3

    #@1b
    sput-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@1d
    .line 473
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@1f
    if-nez v3, :cond_2

    #@21
    .line 474
    const-string/jumbo v3, "NFC"

    #@24
    const-string/jumbo v5, "could not retrieve NFC service"

    #@27
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 475
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@2c
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@2f
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .end local v2    # "hasHceFeature":Z
    :catchall_0
    move-exception v3

    #@31
    monitor-exit v4

    #@32
    throw v3

    #@33
    .line 469
    .restart local v2    # "hasHceFeature":Z
    :cond_1
    :try_start_1
    const-string/jumbo v3, "NFC"

    #@36
    const-string/jumbo v5, "this device does not have NFC support"

    #@39
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 470
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@3e
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@41
    throw v3

    #@42
    .line 477
    :cond_2
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 479
    :try_start_2
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@48
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@4b
    move-result-object v3

    #@4c
    sput-object v3, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    .line 485
    :cond_3
    if-eqz v2, :cond_4

    #@50
    .line 487
    :try_start_3
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@52
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    #@55
    move-result-object v3

    #@56
    sput-object v3, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    .line 493
    :try_start_4
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@5a
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@5d
    move-result-object v3

    #@5e
    sput-object v3, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    .line 500
    :cond_4
    const/4 v3, 0x1

    #@61
    :try_start_5
    sput-boolean v3, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    #@63
    .line 502
    .end local v2    # "hasHceFeature":Z
    :cond_5
    if-nez p0, :cond_7

    #@65
    .line 503
    sget-object v3, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    #@67
    if-nez v3, :cond_6

    #@69
    .line 504
    new-instance v3, Landroid/nfc/NfcAdapter;

    #@6b
    const/4 v5, 0x0

    #@6c
    invoke-direct {v3, v5}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    #@6f
    sput-object v3, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    #@71
    .line 506
    :cond_6
    sget-object v3, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@73
    monitor-exit v4

    #@74
    return-object v3

    #@75
    .line 480
    .restart local v2    # "hasHceFeature":Z
    :catch_0
    move-exception v1

    #@76
    .line 481
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v3, "NFC"

    #@79
    const-string/jumbo v5, "could not retrieve NFC Tag service"

    #@7c
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 482
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@81
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@84
    throw v3

    #@85
    .line 488
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@86
    .line 489
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NFC"

    #@89
    const-string/jumbo v5, "could not retrieve NFC-F card emulation service"

    #@8c
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 490
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@91
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@94
    throw v3

    #@95
    .line 494
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    #@96
    .line 495
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NFC"

    #@99
    const-string/jumbo v5, "could not retrieve card emulation service"

    #@9c
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 496
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@a1
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a4
    throw v3

    #@a5
    .line 508
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "hasHceFeature":Z
    :cond_7
    sget-object v3, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@a7
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    move-result-object v0

    #@ab
    check-cast v0, Landroid/nfc/NfcAdapter;

    #@ad
    .line 509
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_8

    #@af
    .line 510
    new-instance v0, Landroid/nfc/NfcAdapter;

    #@b1
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    #@b4
    .line 511
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    sget-object v3, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    #@b6
    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b9
    :cond_8
    monitor-exit v4

    #@ba
    .line 513
    return-object v0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 519
    const-string/jumbo v1, "nfc"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 520
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@a
    .line 521
    return-object v2

    #@b
    .line 523
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
    .line 425
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 426
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    #@7
    .line 427
    const-string/jumbo v2, "NFC"

    #@a
    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 428
    return v4

    #@11
    .line 431
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
    .line 432
    :catch_0
    move-exception v0

    #@1b
    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@1e
    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    #@21
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 434
    return v4
.end method

.method private static hasNfcHceFeature()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 444
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 445
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    #@7
    .line 446
    const-string/jumbo v2, "NFC"

    #@a
    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 447
    return v4

    #@11
    .line 450
    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.hardware.nfc.hce"

    #@14
    const/4 v3, 0x0

    #@15
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 451
    const-string/jumbo v2, "android.hardware.nfc.hcef"

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v2

    #@23
    .line 450
    :goto_0
    return v2

    #@24
    :cond_1
    const/4 v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 452
    :catch_0
    move-exception v0

    #@27
    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@2a
    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    #@2d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 454
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
    .line 1741
    const-class v4, Landroid/nfc/NfcAdapter;

    #@3
    monitor-enter v4

    #@4
    .line 1742
    :try_start_0
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1743
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@a
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1741
    :catchall_0
    move-exception v3

    #@f
    monitor-exit v4

    #@10
    throw v3

    #@11
    :cond_0
    monitor-exit v4

    #@12
    .line 1747
    array-length v3, p2

    #@13
    if-nez v3, :cond_1

    #@15
    .line 1748
    return v6

    #@16
    .line 1752
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@18
    monitor-enter v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@19
    .line 1753
    :try_start_2
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 1755
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@23
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@25
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/nfc/INfcUnlockHandler;

    #@2b
    invoke-interface {v5, v3}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    #@2e
    .line 1756
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@30
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 1759
    :cond_2
    new-instance v2, Landroid/nfc/NfcAdapter$3;

    #@35
    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    #@38
    .line 1766
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@3a
    .line 1767
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    #@3d
    move-result-object v5

    #@3e
    .line 1766
    invoke-interface {v3, v2, v5}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    #@41
    .line 1768
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@43
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@46
    :try_start_3
    monitor-exit v4

    #@47
    .line 1778
    const/4 v3, 0x1

    #@48
    return v3

    #@49
    .line 1752
    .end local v2    # "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    :catchall_1
    move-exception v3

    #@4a
    monitor-exit v4

    #@4b
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    #@4c
    .line 1770
    :catch_0
    move-exception v0

    #@4d
    .line 1771
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@50
    .line 1772
    return v6

    #@51
    .line 1773
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@52
    .line 1774
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "NFC"

    #@55
    const-string/jumbo v4, "Unable to register LockscreenDispatch"

    #@58
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 1775
    return v6
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 633
    const-string/jumbo v2, "NFC"

    #@3
    const-string/jumbo v3, "NFC service dead - attempting to recover"

    #@6
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 634
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    #@c
    move-result-object v1

    #@d
    .line 635
    .local v1, "service":Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    #@f
    .line 636
    const-string/jumbo v2, "NFC"

    #@12
    const-string/jumbo v3, "could not retrieve NFC service during service recovery"

    #@15
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 639
    return-void

    #@19
    .line 643
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@1b
    .line 645
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@1e
    move-result-object v2

    #@1f
    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 654
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@24
    move-result-object v2

    #@25
    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    .line 660
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
    .line 665
    :goto_1
    return-void

    #@2e
    .line 646
    :catch_0
    move-exception v0

    #@2f
    .line 647
    .local v0, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@32
    const-string/jumbo v3, "could not retrieve NFC tag service during service recovery"

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 650
    return-void

    #@39
    .line 655
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@3a
    .line 656
    .restart local v0    # "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@3d
    const-string/jumbo v3, "could not retrieve NFC card emulation service during service recovery"

    #@40
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    goto :goto_0

    #@44
    .line 661
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@45
    .line 662
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
    .line 758
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
    .line 759
    :catch_0
    move-exception v0

    #@9
    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@c
    .line 761
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public disable(Z)Z
    .locals 2
    .param p1, "persist"    # Z

    #@0
    .prologue
    .line 772
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
    .line 773
    :catch_0
    move-exception v0

    #@8
    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 775
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1334
    const-class v1, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 1335
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1334
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1339
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@14
    move-result-object v0

    #@15
    .line 1340
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@17
    .line 1339
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    #@1a
    .line 1341
    const/4 v0, 0x0

    #@1b
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    #@1e
    .line 1333
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1353
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
    .line 1354
    if-nez p2, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1351
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1355
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
    .line 1358
    :catch_0
    move-exception v0

    #@1b
    .line 1359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1e
    goto :goto_0
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1535
    const-class v1, Landroid/nfc/NfcAdapter;

    #@4
    monitor-enter v1

    #@5
    .line 1536
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@b
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 1535
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 1540
    if-nez p1, :cond_1

    #@15
    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 1543
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@1e
    .line 1544
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@20
    invoke-virtual {v0, p1, v2, v3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@23
    .line 1545
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@25
    invoke-virtual {v0, p1, v2, v3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@28
    .line 1546
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@2a
    invoke-virtual {v0, p1, v2}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    #@2d
    .line 1534
    return-void
.end method

.method public disableNdefPush()Z
    .locals 3

    #@0
    .prologue
    .line 1574
    const-class v2, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v2

    #@3
    .line 1575
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1576
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1574
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 1580
    :try_start_1
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@13
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1581
    :catch_0
    move-exception v0

    #@19
    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1c
    .line 1583
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1404
    const-class v1, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 1405
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1404
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1409
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@13
    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    #@16
    .line 1403
    return-void
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    .line 1702
    if-nez p1, :cond_0

    #@2
    .line 1703
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "tag cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1706
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@d
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1701
    :goto_0
    return-void

    #@11
    .line 1707
    :catch_0
    move-exception v0

    #@12
    .line 1708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@15
    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    #@0
    .prologue
    .line 730
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
    .line 731
    :catch_0
    move-exception v0

    #@8
    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 733
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
    .line 1293
    const-class v4, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v4

    #@3
    .line 1294
    :try_start_0
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1295
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1293
    :catchall_0
    move-exception v3

    #@e
    monitor-exit v4

    #@f
    throw v3

    #@10
    :cond_0
    monitor-exit v4

    #@11
    .line 1298
    if-eqz p1, :cond_1

    #@13
    if-nez p2, :cond_2

    #@15
    .line 1299
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v3

    #@1b
    .line 1301
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_3

    #@21
    .line 1302
    new-instance v3, Ljava/lang/IllegalStateException;

    #@23
    const-string/jumbo v4, "Foreground dispatch can only be enabled when your activity is resumed"

    #@26
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 1306
    :cond_3
    const/4 v1, 0x0

    #@2b
    .line 1307
    .local v1, "parcel":Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_4

    #@2d
    :try_start_1
    array-length v3, p4

    #@2e
    if-lez v3, :cond_4

    #@30
    .line 1308
    new-instance v2, Landroid/nfc/TechListParcel;

    #@32
    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    #@35
    .local v2, "parcel":Landroid/nfc/TechListParcel;
    move-object v1, v2

    #@36
    .line 1310
    .end local v1    # "parcel":Landroid/nfc/TechListParcel;
    .end local v2    # "parcel":Landroid/nfc/TechListParcel;
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@39
    move-result-object v3

    #@3a
    .line 1311
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    #@3c
    .line 1310
    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    #@3f
    .line 1312
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@41
    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@44
    .line 1292
    :goto_0
    return-void

    #@45
    .line 1313
    :catch_0
    move-exception v0

    #@46
    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@49
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
    .line 1501
    const-class v1, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 1502
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1501
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1506
    if-eqz p1, :cond_1

    #@13
    if-nez p2, :cond_2

    #@15
    .line 1507
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 1509
    :cond_2
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@1e
    .line 1510
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@24
    .line 1500
    return-void
.end method

.method public enableNdefPush()Z
    .locals 2

    #@0
    .prologue
    .line 1556
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1557
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1560
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@c
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1561
    :catch_0
    move-exception v0

    #@12
    .line 1562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@15
    .line 1563
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1387
    const-class v1, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 1388
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1387
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1392
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    #@16
    .line 1386
    return-void
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1825
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1826
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "API cannot be called while activity is paused"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1824
    :cond_0
    return-void
.end method

.method public getAdapterState()I
    .locals 2

    #@0
    .prologue
    .line 704
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
    .line 705
    :catch_0
    move-exception v0

    #@8
    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@b
    .line 707
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method public getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .locals 1

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 616
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    #@5
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 589
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
    .line 1812
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1813
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 1817
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
    .line 1818
    :catch_0
    move-exception v0

    #@1c
    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1f
    .line 1820
    return-object v3
.end method

.method public getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    #@0
    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 625
    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    #@5
    return-object v0
.end method

.method getSdkVersion()I
    .locals 1

    #@0
    .prologue
    .line 1831
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1832
    const/16 v0, 0x9

    #@6
    return v0

    #@7
    .line 1834
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
    .line 597
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 598
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@5
    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    #@3
    .line 607
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
    .line 1663
    const/4 v1, 0x0

    #@1
    .line 1664
    .local v1, "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    if-eqz p3, :cond_0

    #@3
    .line 1665
    new-instance v1, Landroid/nfc/NfcAdapter$2;

    #@5
    .end local v1    # "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    #@8
    .line 1684
    :cond_0
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v2

    #@b
    .line 1685
    :try_start_0
    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 1688
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
    .line 1684
    :catchall_0
    move-exception v3

    #@1a
    monitor-exit v2

    #@1b
    throw v3

    #@1c
    .line 1689
    :catch_0
    move-exception v0

    #@1d
    .line 1690
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
    .line 1438
    const-class v2, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v2

    #@3
    .line 1439
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1440
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1438
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 1443
    if-nez p1, :cond_1

    #@13
    .line 1444
    new-instance v1, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v2, "activity may not be null."

    #@18
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1446
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    #@1f
    .line 1448
    :try_start_1
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@21
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@24
    .line 1449
    const/4 v1, 0x1

    #@25
    return v1

    #@26
    .line 1450
    :catch_0
    move-exception v0

    #@27
    .line 1451
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@2a
    const-string/jumbo v2, "invokeBeam: NFC process has died."

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1452
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@33
    .line 1453
    const/4 v1, 0x0

    #@34
    return v1
.end method

.method public invokeBeam(Landroid/nfc/BeamShareData;)Z
    .locals 3
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    #@0
    .prologue
    .line 1462
    :try_start_0
    const-string/jumbo v1, "NFC"

    #@3
    const-string/jumbo v2, "invokeBeamInternal()"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1463
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@b
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1464
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 1465
    :catch_0
    move-exception v0

    #@11
    .line 1466
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@14
    const-string/jumbo v2, "invokeBeam: NFC process has died."

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1467
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1d
    .line 1468
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
    .line 682
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
    .line 683
    :catch_0
    move-exception v0

    #@d
    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@10
    .line 685
    return v1
.end method

.method public isNdefPushEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 1612
    const-class v2, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v2

    #@3
    .line 1613
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1614
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1612
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 1618
    :try_start_1
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@13
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1619
    :catch_0
    move-exception v0

    #@19
    .line 1620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1c
    .line 1621
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method public pausePolling(I)V
    .locals 2
    .param p1, "timeoutInMs"    # I

    #@0
    .prologue
    .line 786
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 784
    :goto_0
    return-void

    #@6
    .line 787
    :catch_0
    move-exception v0

    #@7
    .line 788
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
    .line 1789
    const-class v2, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v2

    #@3
    .line 1790
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1791
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1789
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 1795
    :try_start_1
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@14
    .line 1796
    :try_start_2
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1797
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@1e
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    #@20
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/nfc/INfcUnlockHandler;

    #@26
    invoke-interface {v3, v1}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 1800
    :cond_1
    const/4 v1, 0x1

    #@2a
    :try_start_3
    monitor-exit v2

    #@2b
    return v1

    #@2c
    .line 1795
    :catchall_1
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@2f
    .line 1802
    :catch_0
    move-exception v0

    #@30
    .line 1803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@33
    .line 1804
    const/4 v1, 0x0

    #@34
    return v1
.end method

.method public resumePolling()V
    .locals 2

    #@0
    .prologue
    .line 800
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 798
    :goto_0
    return-void

    #@6
    .line 801
    :catch_0
    move-exception v0

    #@7
    .line 802
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
    .line 868
    const-class v3, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v3

    #@3
    .line 869
    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 870
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 868
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v3

    #@f
    throw v2

    #@10
    :cond_0
    monitor-exit v3

    #@11
    .line 873
    if-nez p2, :cond_1

    #@13
    .line 874
    new-instance v2, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v3, "activity cannot be null"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 876
    :cond_1
    if-eqz p1, :cond_5

    #@1e
    .line 877
    const/4 v2, 0x0

    #@1f
    array-length v3, p1

    #@20
    :goto_0
    if-ge v2, v3, :cond_5

    #@22
    aget-object v1, p1, v2

    #@24
    .line 878
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    #@26
    new-instance v2, Ljava/lang/NullPointerException;

    #@28
    const-string/jumbo v3, "Uri not allowed to be null"

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 880
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 881
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@35
    const-string/jumbo v4, "file"

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_3

    #@3e
    .line 882
    const-string/jumbo v4, "content"

    #@41
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_4

    #@47
    .line 877
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 883
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4c
    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    #@4f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 888
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@55
    invoke-virtual {v2, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    #@58
    .line 867
    return-void
.end method

.method public setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 950
    const-class v1, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 951
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 950
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 955
    if-nez p2, :cond_1

    #@13
    .line 956
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "activity cannot be null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 958
    :cond_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@1e
    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    #@21
    .line 949
    return-void
.end method

.method public setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1069
    const-class v1, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 1070
    :try_start_0
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1071
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1069
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1074
    if-nez p2, :cond_1

    #@13
    .line 1075
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "activity cannot be null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1077
    :cond_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@1e
    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@21
    .line 1068
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
    .line 1035
    const-class v4, Landroid/nfc/NfcAdapter;

    #@3
    monitor-enter v4

    #@4
    .line 1036
    :try_start_0
    sget-boolean v5, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@6
    if-nez v5, :cond_0

    #@8
    .line 1037
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@a
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1035
    :catchall_0
    move-exception v3

    #@f
    monitor-exit v4

    #@10
    throw v3

    #@11
    :cond_0
    monitor-exit v4

    #@12
    .line 1040
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@15
    move-result v2

    #@16
    .line 1042
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_2

    #@18
    .line 1043
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v4, "activity cannot be null"

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    .line 1052
    :catch_0
    move-exception v1

    #@22
    .line 1053
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@24
    if-ge v2, v3, :cond_4

    #@26
    .line 1055
    const-string/jumbo v3, "NFC"

    #@29
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@2c
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 1034
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    return-void

    #@30
    .line 1045
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    #@36
    .line 1046
    array-length v4, p3

    #@37
    :goto_0
    if-ge v3, v4, :cond_1

    #@39
    aget-object v0, p3, v3

    #@3b
    .line 1047
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_3

    #@3d
    .line 1048
    new-instance v3, Ljava/lang/NullPointerException;

    #@3f
    const-string/jumbo v4, "activities cannot contain null"

    #@42
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3

    #@46
    .line 1050
    :cond_3
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@48
    const/4 v6, 0x0

    #@49
    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@4c
    .line 1046
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1059
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    throw v1
.end method

.method public setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1182
    if-nez p2, :cond_0

    #@2
    .line 1183
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "activity cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1185
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@d
    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@10
    .line 1181
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
    .line 1148
    const-class v4, Landroid/nfc/NfcAdapter;

    #@3
    monitor-enter v4

    #@4
    .line 1149
    :try_start_0
    sget-boolean v5, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@6
    if-nez v5, :cond_0

    #@8
    .line 1150
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@a
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1148
    :catchall_0
    move-exception v3

    #@f
    monitor-exit v4

    #@10
    throw v3

    #@11
    :cond_0
    monitor-exit v4

    #@12
    .line 1153
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@15
    move-result v2

    #@16
    .line 1155
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_2

    #@18
    .line 1156
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v4, "activity cannot be null"

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    .line 1165
    :catch_0
    move-exception v1

    #@22
    .line 1166
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@24
    if-ge v2, v3, :cond_4

    #@26
    .line 1168
    const-string/jumbo v3, "NFC"

    #@29
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@2c
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 1147
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    return-void

    #@30
    .line 1158
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    #@36
    .line 1159
    array-length v4, p3

    #@37
    :goto_0
    if-ge v3, v4, :cond_1

    #@39
    aget-object v0, p3, v3

    #@3b
    .line 1160
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_3

    #@3d
    .line 1161
    new-instance v3, Ljava/lang/NullPointerException;

    #@3f
    const-string/jumbo v4, "activities cannot contain null"

    #@42
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3

    #@46
    .line 1163
    :cond_3
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@48
    const/4 v6, 0x0

    #@49
    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@4c
    .line 1159
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1172
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    throw v1
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    #@0
    .prologue
    .line 1228
    const-class v4, Landroid/nfc/NfcAdapter;

    #@2
    monitor-enter v4

    #@3
    .line 1229
    :try_start_0
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1230
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1228
    :catchall_0
    move-exception v3

    #@e
    monitor-exit v4

    #@f
    throw v3

    #@10
    :cond_0
    monitor-exit v4

    #@11
    .line 1233
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    #@14
    move-result v2

    #@15
    .line 1235
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_2

    #@17
    .line 1236
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    #@19
    const-string/jumbo v4, "activity cannot be null"

    #@1c
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    .line 1245
    :catch_0
    move-exception v1

    #@21
    .line 1246
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    #@23
    if-ge v2, v3, :cond_4

    #@25
    .line 1248
    const-string/jumbo v3, "NFC"

    #@28
    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    #@2b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 1227
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    return-void

    #@2f
    .line 1238
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@31
    invoke-virtual {v3, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    #@34
    .line 1239
    const/4 v3, 0x0

    #@35
    array-length v4, p3

    #@36
    :goto_0
    if-ge v3, v4, :cond_1

    #@38
    aget-object v0, p3, v3

    #@3a
    .line 1240
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_3

    #@3c
    .line 1241
    new-instance v3, Ljava/lang/NullPointerException;

    #@3e
    const-string/jumbo v4, "activities cannot contain null"

    #@41
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3

    #@45
    .line 1243
    :cond_3
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    #@47
    invoke-virtual {v5, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@4a
    .line 1239
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1252
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    throw v1
.end method

.method public setP2pModes(II)V
    .locals 2
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I

    #@0
    .prologue
    .line 1717
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1715
    :goto_0
    return-void

    #@6
    .line 1718
    :catch_0
    move-exception v0

    #@7
    .line 1719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method
