.class public final Landroid/nfc/cardemulation/NfcFCardEmulation;
.super Ljava/lang/Object;
.source "NfcFCardEmulation.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcFCardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/NfcFCardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcFCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    #@3
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    sput-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    #@a
    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcFCardEmulation;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    #@9
    .line 57
    sput-object p2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@b
    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/NfcFCardEmulation;
    .locals 8
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    #@0
    .prologue
    const-class v6, Landroid/nfc/cardemulation/NfcFCardEmulation;

    #@2
    monitor-enter v6

    #@3
    .line 67
    if-nez p0, :cond_0

    #@5
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v7, "NfcAdapter is null"

    #@a
    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v5

    #@f
    monitor-exit v6

    #@10
    throw v5

    #@11
    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    .line 69
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    #@17
    .line 70
    const-string/jumbo v5, "NfcFCardEmulation"

    #@1a
    const-string/jumbo v7, "NfcAdapter context is null."

    #@1d
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 71
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@22
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@25
    throw v5

    #@26
    .line 73
    :cond_1
    sget-boolean v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    #@28
    if-nez v5, :cond_4

    #@2a
    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2d
    move-result-object v3

    #@2e
    .line 75
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_2

    #@30
    .line 76
    const-string/jumbo v5, "NfcFCardEmulation"

    #@33
    const-string/jumbo v7, "Cannot get PackageManager"

    #@36
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 77
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@3b
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@3e
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 80
    :cond_2
    :try_start_2
    const-string/jumbo v5, "android.hardware.nfc.hcef"

    #@42
    const/4 v7, 0x0

    #@43
    invoke-interface {v3, v5, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    #@46
    move-result v5

    #@47
    if-nez v5, :cond_3

    #@49
    .line 81
    const-string/jumbo v5, "NfcFCardEmulation"

    #@4c
    const-string/jumbo v7, "This device does not support NFC-F card emulation"

    #@4f
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 82
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@54
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@57
    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    .line 84
    :catch_0
    move-exception v1

    #@59
    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "NfcFCardEmulation"

    #@5c
    const-string/jumbo v7, "PackageManager query failed."

    #@5f
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 86
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@64
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@67
    throw v5

    #@68
    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x1

    #@69
    sput-boolean v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    #@6b
    .line 90
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    sget-object v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    #@6d
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    move-result-object v2

    #@71
    check-cast v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    #@73
    .line 91
    .local v2, "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    if-nez v2, :cond_6

    #@75
    .line 93
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    #@78
    move-result-object v4

    #@79
    .line 94
    .local v4, "service":Landroid/nfc/INfcFCardEmulation;
    if-nez v4, :cond_5

    #@7b
    .line 95
    const-string/jumbo v5, "NfcFCardEmulation"

    #@7e
    const-string/jumbo v7, "This device does not implement the INfcFCardEmulation interface."

    #@81
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 96
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@86
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@89
    throw v5

    #@8a
    .line 98
    :cond_5
    new-instance v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    #@8c
    .end local v2    # "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/NfcFCardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V

    #@8f
    .line 99
    .restart local v2    # "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    sget-object v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    #@91
    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@94
    .end local v4    # "service":Landroid/nfc/INfcFCardEmulation;
    :cond_6
    monitor-exit v6

    #@95
    .line 101
    return-object v2
.end method

.method public static isValidNfcid2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nfcid2"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    const/4 v4, 0x0

    #@3
    .line 452
    if-nez p0, :cond_0

    #@5
    .line 453
    return v4

    #@6
    .line 455
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-eq v1, v2, :cond_1

    #@c
    .line 456
    const-string/jumbo v1, "NfcFCardEmulation"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "NFCID2 "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " is not a valid NFCID2."

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 457
    return v4

    #@2e
    .line 460
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, "02FE"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_2

    #@3b
    .line 461
    const-string/jumbo v1, "NfcFCardEmulation"

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "NFCID2 "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    const-string/jumbo v3, " is not a valid NFCID2."

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 462
    return v4

    #@5d
    .line 465
    :cond_2
    const/16 v1, 0x10

    #@5f
    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 470
    const/4 v1, 0x1

    #@63
    return v1

    #@64
    .line 466
    :catch_0
    move-exception v0

    #@65
    .line 467
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "NfcFCardEmulation"

    #@68
    new-instance v2, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v3, "NFCID2 "

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    const-string/jumbo v3, " is not a valid NFCID2."

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 468
    return v4
.end method

.method public static isValidSystemCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "systemCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 427
    if-nez p0, :cond_0

    #@3
    .line 428
    return v4

    #@4
    .line 430
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x4

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 431
    const-string/jumbo v1, "NfcFCardEmulation"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "System Code "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, " is not a valid System Code."

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 432
    return v4

    #@2d
    .line 435
    :cond_1
    const-string/jumbo v1, "4"

    #@30
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "FF"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_3

    #@43
    .line 436
    :cond_2
    const-string/jumbo v1, "NfcFCardEmulation"

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "System Code "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    const-string/jumbo v3, " is not a valid System Code."

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 437
    return v4

    #@65
    .line 440
    :cond_3
    const/16 v1, 0x10

    #@67
    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 445
    const/4 v1, 0x1

    #@6b
    return v1

    #@6c
    .line 441
    :catch_0
    move-exception v0

    #@6d
    .line 442
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "NfcFCardEmulation"

    #@70
    new-instance v2, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v3, "System Code "

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    const-string/jumbo v3, " is not a valid System Code."

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 443
    return v4
.end method


# virtual methods
.method public disableService(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 354
    if-nez p1, :cond_0

    #@3
    .line 355
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "activity is null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 358
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "Activity must be resumed."

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 361
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1d
    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 362
    :catch_0
    move-exception v0

    #@23
    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@26
    .line 365
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 366
    const-string/jumbo v2, "NfcFCardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 367
    return v4

    #@34
    .line 370
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@36
    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@39
    move-result v2

    #@3a
    return v2

    #@3b
    .line 371
    :catch_1
    move-exception v1

    #@3c
    .line 372
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@3f
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@42
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 373
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@48
    .line 374
    return v4
.end method

.method public enableService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 317
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 318
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "activity or service is null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_2

    #@14
    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "Activity must be resumed."

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 325
    :cond_2
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1f
    invoke-interface {v2, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 326
    :catch_0
    move-exception v0

    #@25
    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@28
    .line 329
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@2a
    if-nez v2, :cond_3

    #@2c
    .line 330
    const-string/jumbo v2, "NfcFCardEmulation"

    #@2f
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 331
    return v4

    #@36
    .line 334
    :cond_3
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@38
    invoke-interface {v2, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-result v2

    #@3c
    return v2

    #@3d
    .line 335
    :catch_1
    move-exception v1

    #@3e
    .line 336
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@41
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@44
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 337
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@4a
    .line 338
    return v4
.end method

.method public getMaxNumOfRegisterableSystemCodes()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 406
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@3
    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 407
    :catch_0
    move-exception v0

    #@9
    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@c
    .line 410
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@e
    if-nez v2, :cond_0

    #@10
    .line 411
    const-string/jumbo v2, "NfcFCardEmulation"

    #@13
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 412
    return v4

    #@1a
    .line 415
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1c
    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 416
    :catch_1
    move-exception v1

    #@22
    .line 417
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@25
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@28
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 418
    return v4
.end method

.method public getNfcFServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 384
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 385
    :catch_0
    move-exception v0

    #@d
    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@10
    .line 388
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 389
    const-string/jumbo v2, "NfcFCardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 390
    return-object v4

    #@1e
    .line 393
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 394
    :catch_1
    move-exception v1

    #@2a
    .line 395
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 396
    return-object v4
.end method

.method public getNfcid2ForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 229
    if-nez p1, :cond_0

    #@3
    .line 230
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "service is null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 233
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@11
    move-result v3

    #@12
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 234
    :catch_0
    move-exception v0

    #@18
    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@1b
    .line 237
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 238
    const-string/jumbo v2, "NfcFCardEmulation"

    #@22
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@25
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 239
    return-object v4

    #@29
    .line 242
    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@2b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2e
    move-result v3

    #@2f
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 243
    :catch_1
    move-exception v1

    #@35
    .line 244
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@38
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 245
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@41
    .line 246
    return-object v4
.end method

.method public getSystemCodeForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 117
    if-nez p1, :cond_0

    #@3
    .line 118
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "service is null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 121
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@11
    move-result v3

    #@12
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 122
    :catch_0
    move-exception v0

    #@18
    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@1b
    .line 125
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 126
    const-string/jumbo v2, "NfcFCardEmulation"

    #@22
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@25
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 127
    return-object v4

    #@29
    .line 130
    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@2b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2e
    move-result v3

    #@2f
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 131
    :catch_1
    move-exception v1

    #@35
    .line 132
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@38
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 133
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@41
    .line 134
    return-object v4
.end method

.method recoverService()V
    .locals 2

    #@0
    .prologue
    .line 474
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    #@5
    move-result-object v0

    #@6
    .line 475
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    #@9
    move-result-object v1

    #@a
    sput-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@c
    .line 473
    return-void
.end method

.method public registerSystemCodeForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 163
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 164
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "service or systemCode is null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 167
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@13
    move-result v3

    #@14
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 169
    :catch_0
    move-exception v0

    #@1a
    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@1d
    .line 172
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1f
    if-nez v2, :cond_2

    #@21
    .line 173
    const-string/jumbo v2, "NfcFCardEmulation"

    #@24
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 174
    return v4

    #@2b
    .line 177
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@2d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@30
    move-result v3

    #@31
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@34
    move-result v2

    #@35
    return v2

    #@36
    .line 179
    :catch_1
    move-exception v1

    #@37
    .line 180
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@3a
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@3d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 181
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@43
    .line 182
    return v4
.end method

.method public setNfcid2ForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "nfcid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 272
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 273
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "service or nfcid2 is null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 276
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@13
    move-result v3

    #@14
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 278
    :catch_0
    move-exception v0

    #@1a
    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@1d
    .line 281
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1f
    if-nez v2, :cond_2

    #@21
    .line 282
    const-string/jumbo v2, "NfcFCardEmulation"

    #@24
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 283
    return v4

    #@2b
    .line 286
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@2d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@30
    move-result v3

    #@31
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@34
    move-result v2

    #@35
    return v2

    #@36
    .line 288
    :catch_1
    move-exception v1

    #@37
    .line 289
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@3a
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@3d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 290
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@43
    .line 291
    return v4
.end method

.method public unregisterSystemCodeForService(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 194
    if-nez p1, :cond_0

    #@3
    .line 195
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "service is null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 198
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@11
    move-result v3

    #@12
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 199
    :catch_0
    move-exception v0

    #@18
    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    #@1b
    .line 202
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 203
    const-string/jumbo v2, "NfcFCardEmulation"

    #@22
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@25
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 204
    return v4

    #@29
    .line 207
    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    #@2b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2e
    move-result v3

    #@2f
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    move-result v2

    #@33
    return v2

    #@34
    .line 208
    :catch_1
    move-exception v1

    #@35
    .line 209
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    #@38
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 210
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@41
    .line 211
    return v4
.end method
