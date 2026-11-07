.class public final Landroid/nfc/cardemulation/NfcFCardEmulation;
.super Ljava/lang/Object;
.source "NfcFCardEmulation.java"


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "NfcFCardEmulation"

.field static greylist-max-o sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/NfcFCardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sIsInitialized:Z

.field static greylist-max-o sService:Landroid/nfc/INfcFCardEmulation;


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcFCardEmulation;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    .line 54
    sput-object p2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    .line 55
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/NfcFCardEmulation;
    .registers 7
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/nfc/cardemulation/NfcFCardEmulation;

    monitor-enter v0

    .line 64
    if-eqz p0, :cond_75

    .line 65
    :try_start_5
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_66

    .line 70
    sget-boolean v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    if-nez v2, :cond_3b

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_2e

    .line 76
    const-string v3, "android.hardware.nfc.hcef"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 80
    const/4 v3, 0x1

    sput-boolean v3, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    goto :goto_3b

    .line 77
    :cond_21
    const-string v3, "NfcFCardEmulation"

    const-string v4, "This device does not support NFC-F card emulation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 73
    :cond_2e
    const-string v3, "NfcFCardEmulation"

    const-string v4, "Cannot get PackageManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 82
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_3b
    :goto_3b
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    .line 83
    .local v2, "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    if-nez v2, :cond_64

    .line 85
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v3

    .line 86
    .local v3, "service":Landroid/nfc/INfcFCardEmulation;
    if-eqz v3, :cond_57

    .line 90
    new-instance v4, Landroid/nfc/cardemulation/NfcFCardEmulation;

    invoke-direct {v4, v1, v3}, Landroid/nfc/cardemulation/NfcFCardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V

    move-object v2, v4

    .line 91
    sget-object v4, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 87
    :cond_57
    const-string v4, "NfcFCardEmulation"

    const-string v5, "This device does not implement the INfcFCardEmulation interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_73

    .line 93
    .end local v3    # "service":Landroid/nfc/INfcFCardEmulation;
    :cond_64
    :goto_64
    monitor-exit v0

    return-object v2

    .line 67
    .end local v2    # "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    :cond_66
    :try_start_66
    const-string v2, "NfcFCardEmulation"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 63
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catchall_73
    move-exception p0

    goto :goto_7d

    .line 64
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_75
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_73

    throw p0
.end method

.method public static greylist-max-o isValidNfcid2(Ljava/lang/String;)Z
    .registers 8
    .param p0, "nfcid2"    # Ljava/lang/String;

    .line 446
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 447
    return v0

    .line 449
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    const-string v3, " is not a valid NFCID2."

    const-string v4, "NFCID2 "

    const-string v5, "NfcFCardEmulation"

    if-eq v1, v2, :cond_2b

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v0

    .line 454
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "02FE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v0

    .line 459
    :cond_50
    :try_start_50
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_53} :catch_56

    .line 463
    nop

    .line 464
    const/4 v0, 0x1

    return v0

    .line 460
    :catch_56
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v0
.end method

.method public static greylist-max-o isValidSystemCode(Ljava/lang/String;)Z
    .registers 7
    .param p0, "systemCode"    # Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 422
    return v0

    .line 424
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, " is not a valid System Code."

    const-string v4, "System Code "

    const-string v5, "NfcFCardEmulation"

    if-eq v1, v2, :cond_2a

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v0

    .line 429
    :cond_2a
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_61

    .line 434
    :cond_3f
    const/16 v1, 0x10

    :try_start_41
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_44} :catch_47

    .line 438
    nop

    .line 439
    const/4 v0, 0x1

    return v0

    .line 435
    :catch_47
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v0

    .line 430
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_61
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v0
.end method


# virtual methods
.method public whitelist disableService(Landroid/app/Activity;)Z
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 348
    if-eqz p1, :cond_39

    .line 351
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 355
    :try_start_8
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 356
    :catch_f
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 359
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_20

    .line 360
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v2

    .line 364
    :cond_20
    :try_start_20
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v1}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 365
    :catch_27
    move-exception v1

    .line 366
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 368
    return v2

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 311
    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    .line 315
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 319
    :try_start_a
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v0, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 320
    :catch_11
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 323
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_22

    .line 324
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v2

    .line 328
    :cond_22
    :try_start_22
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v1, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    return v1

    .line 329
    :catch_29
    move-exception v1

    .line 330
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 332
    return v2

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getMaxNumOfRegisterableSystemCodes()I
    .registers 6

    .line 400
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 401
    :catch_7
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 404
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, -0x1

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_18

    .line 405
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v2

    .line 409
    :cond_18
    :try_start_18
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v1}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    return v1

    .line 410
    :catch_1f
    move-exception v1

    .line 411
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v2
.end method

.method public greylist-max-o getNfcFServices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .line 378
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 379
    :catch_11
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 382
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_22

    .line 383
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v2

    .line 387
    :cond_22
    :try_start_22
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;

    move-result-object v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_32} :catch_33

    return-object v1

    .line 388
    :catch_33
    move-exception v1

    .line 389
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v2
.end method

.method public whitelist getNfcid2ForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 223
    if-eqz p1, :cond_3f

    .line 227
    :try_start_2
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    return-object v0

    .line 228
    :catch_13
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 231
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_24

    .line 232
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v2

    .line 236
    :cond_24
    :try_start_24
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_35

    return-object v1

    .line 237
    :catch_35
    move-exception v1

    .line 238
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 240
    return-object v2

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSystemCodeForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 109
    if-eqz p1, :cond_3f

    .line 113
    :try_start_2
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    return-object v0

    .line 114
    :catch_13
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 117
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_24

    .line 118
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v2

    .line 122
    :cond_24
    :try_start_24
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_35

    return-object v1

    .line 124
    :catch_35
    move-exception v1

    .line 125
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 127
    return-object v2

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o recoverService()V
    .registers 2

    .line 468
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/NfcFCardEmulation;

    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    sput-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    .line 469
    return-void
.end method

.method public whitelist registerSystemCodeForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    .line 160
    :try_start_4
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return v0

    .line 162
    :catch_15
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 165
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_26

    .line 166
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v2

    .line 170
    :cond_26
    :try_start_26
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_36} :catch_37

    return v1

    .line 172
    :catch_37
    move-exception v1

    .line 173
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 175
    return v2

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or systemCode is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNfcid2ForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "nfcid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 266
    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    .line 270
    :try_start_4
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return v0

    .line 272
    :catch_15
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 275
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_26

    .line 276
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 280
    :cond_26
    :try_start_26
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_36} :catch_37

    return v1

    .line 282
    :catch_37
    move-exception v1

    .line 283
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 285
    return v2

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or nfcid2 is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterSystemCodeForService(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 187
    if-eqz p1, :cond_3f

    .line 191
    :try_start_2
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    return v0

    .line 192
    :catch_13
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 195
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_24

    .line 196
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v2

    .line 200
    :cond_24
    :try_start_24
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_35

    return v1

    .line 202
    :catch_35
    move-exception v1

    .line 203
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 205
    return v2

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
