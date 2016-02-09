.class public Lcom/android/server/usb/UsbDebuggingManager;
.super Ljava/lang/Object;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;,
        Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDebuggingManager"


# instance fields
.field private final ADBD_SOCKET:Ljava/lang/String;

.field private final ADB_DIRECTORY:Ljava/lang/String;

.field private final ADB_KEYS_FILE:Ljava/lang/String;

.field private final BUFFER_SIZE:I

.field private mAdbEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbDebuggingManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbDebuggingManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbDebuggingManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->deleteKeyFile()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fingerprints"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->startConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->writeKey(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const-string/jumbo v0, "adbd"

    #@6
    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADBD_SOCKET:Ljava/lang/String;

    #@8
    .line 59
    const-string/jumbo v0, "misc/adb"

    #@b
    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADB_DIRECTORY:Ljava/lang/String;

    #@d
    .line 60
    const-string/jumbo v0, "adb_keys"

    #@10
    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADB_KEYS_FILE:Ljava/lang/String;

    #@12
    .line 61
    const/16 v0, 0x1000

    #@14
    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->BUFFER_SIZE:I

    #@16
    .line 66
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    #@19
    .line 70
    new-instance v0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;

    #@1b
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;-><init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V

    #@26
    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@28
    .line 71
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    #@2a
    .line 69
    return-void
.end method

.method private createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fingerprints"    # Ljava/lang/String;

    #@0
    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 385
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 386
    const-string/jumbo v1, "key"

    #@13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 387
    const-string/jumbo v1, "fingerprints"

    #@19
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 388
    return-object v0
.end method

.method private deleteKeyFile()V
    .locals 1

    #@0
    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "keyFile":Ljava/io/File;
    if-eqz v0, :cond_0

    #@6
    .line 431
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@9
    .line 428
    :cond_0
    return-void
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 292
    const-string/jumbo v5, "0123456789ABCDEF"

    #@4
    .line 293
    .local v5, "hex":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 296
    .local v7, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    #@b
    .line 297
    const-string/jumbo v8, ""

    #@e
    return-object v8

    #@f
    .line 301
    :cond_0
    :try_start_0
    const-string/jumbo v8, "MD5"

    #@12
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 307
    .local v2, "digester":Ljava/security/MessageDigest;
    const-string/jumbo v8, "\\s+"

    #@19
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    aget-object v8, v8, v9

    #@1f
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    #@22
    move-result-object v0

    #@23
    .line 310
    .local v0, "base64_data":[B
    const/4 v8, 0x0

    #@24
    :try_start_1
    invoke-static {v0, v8}, Landroid/util/Base64;->decode([BI)[B

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    move-result-object v1

    #@2c
    .line 315
    .local v1, "digest":[B
    const/4 v6, 0x0

    #@2d
    .local v6, "i":I
    :goto_0
    array-length v8, v1

    #@2e
    if-ge v6, v8, :cond_2

    #@30
    .line 316
    aget-byte v8, v1, v6

    #@32
    shr-int/lit8 v8, v8, 0x4

    #@34
    and-int/lit8 v8, v8, 0xf

    #@36
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v8

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 317
    aget-byte v8, v1, v6

    #@3f
    and-int/lit8 v8, v8, 0xf

    #@41
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v8

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    .line 318
    array-length v8, v1

    #@49
    add-int/lit8 v8, v8, -0x1

    #@4b
    if-ge v6, v8, :cond_1

    #@4d
    .line 319
    const-string/jumbo v8, ":"

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 315
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@55
    goto :goto_0

    #@56
    .line 302
    .end local v0    # "base64_data":[B
    .end local v1    # "digest":[B
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    #@57
    .line 303
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v8, "UsbDebuggingManager"

    #@5a
    const-string/jumbo v9, "Error getting digester"

    #@5d
    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@60
    .line 304
    const-string/jumbo v8, ""

    #@63
    return-object v8

    #@64
    .line 311
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "base64_data":[B
    .restart local v2    # "digester":Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    #@65
    .line 312
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "UsbDebuggingManager"

    #@68
    const-string/jumbo v9, "error doing base64 decoding"

    #@6b
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    .line 313
    const-string/jumbo v8, ""

    #@71
    return-object v8

    #@72
    .line 321
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "digest":[B
    .restart local v6    # "i":I
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v8

    #@76
    return-object v8
.end method

.method private getUserKeyFile()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 392
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 393
    .local v1, "dataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@6
    const-string/jumbo v2, "misc/adb"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 395
    .local v0, "adbDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 396
    const-string/jumbo v2, "UsbDebuggingManager"

    #@15
    const-string/jumbo v3, "ADB data directory does not exist"

    #@18
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 397
    const/4 v2, 0x0

    #@1c
    return-object v2

    #@1d
    .line 400
    :cond_0
    new-instance v2, Ljava/io/File;

    #@1f
    const-string/jumbo v3, "adb_keys"

    #@22
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25
    return-object v2
.end method

.method private startConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fingerprints"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v2

    #@4
    .line 327
    .local v2, "currentUserId":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@11
    move-result-object v3

    #@12
    .line 329
    .local v3, "userHandle":Landroid/os/UserHandle;
    if-nez v2, :cond_1

    #@14
    .line 330
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@17
    move-result-object v4

    #@18
    .line 331
    const v5, 0x1040045

    #@1b
    .line 330
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 338
    .local v1, "componentString":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@22
    move-result-object v0

    #@23
    .line 339
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_0

    #@29
    .line 340
    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    #@2c
    move-result v4

    #@2d
    .line 339
    if-eqz v4, :cond_2

    #@2f
    .line 341
    :cond_0
    return-void

    #@30
    .line 335
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentString":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@33
    move-result-object v4

    #@34
    .line 336
    const v5, 0x1040046

    #@37
    .line 335
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .restart local v1    # "componentString":Ljava/lang/String;
    goto :goto_0

    #@3c
    .line 343
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v4, "UsbDebuggingManager"

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 344
    const-string/jumbo v6, " as an Activity or a Service"

    #@52
    .line 343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 324
    return-void
.end method

.method private startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fingerprints"    # Ljava/lang/String;

    #@0
    .prologue
    .line 352
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v2

    #@6
    .line 353
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/usb/UsbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@9
    move-result-object v1

    #@a
    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@c
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@f
    .line 355
    const/high16 v3, 0x10000

    #@11
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v3, v1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 358
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 359
    :catch_0
    move-exception v0

    #@1f
    .line 360
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "UsbDebuggingManager"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "unable to start adb whitelist activity: "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 363
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/4 v3, 0x0

    #@3a
    return v3
.end method

.method private startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fingerprints"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/usb/UsbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v1

    #@4
    .line 373
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, v1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 374
    const/4 v2, 0x1

    #@d
    return v2

    #@e
    .line 376
    :catch_0
    move-exception v0

    #@f
    .line 377
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "UsbDebuggingManager"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "unable to start adb whitelist service: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    .line 379
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    #@2a
    return v2
.end method

.method private writeKey(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 405
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    #@3
    move-result-object v2

    #@4
    .line 407
    .local v2, "keyFile":Ljava/io/File;
    if-nez v2, :cond_0

    #@6
    .line 408
    return-void

    #@7
    .line 411
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_1

    #@d
    .line 412
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    #@10
    .line 413
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 414
    const/16 v4, 0x1a0

    #@16
    .line 415
    const/4 v5, -0x1

    #@17
    const/4 v6, -0x1

    #@18
    .line 413
    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@1b
    .line 418
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    #@1d
    const/4 v3, 0x1

    #@1e
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@21
    .line 419
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    #@28
    .line 420
    const/16 v3, 0xa

    #@2a
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    #@2d
    .line 421
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 403
    .end local v1    # "fo":Ljava/io/FileOutputStream;
    .end local v2    # "keyFile":Ljava/io/File;
    :goto_0
    return-void

    #@31
    .line 423
    :catch_0
    move-exception v0

    #@32
    .line 424
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "UsbDebuggingManager"

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Error writing key:"

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 442
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 443
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    .line 444
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@13
    .line 440
    return-void

    #@14
    .line 442
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 451
    return-void
.end method

.method public denyUsbDebugging()V
    .locals 2

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 447
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 456
    const-string/jumbo v2, "USB Debugging State:"

    #@4
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "  Connected to adbd: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@15
    if-eqz v3, :cond_0

    #@17
    const/4 v1, 0x1

    #@18
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "  Last key received: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 459
    const-string/jumbo v1, "  User keys:"

    #@3f
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 461
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@44
    const-string/jumbo v2, "/data/misc/adb/adb_keys"

    #@47
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4a
    const/4 v2, 0x0

    #@4b
    const/4 v3, 0x0

    #@4c
    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 465
    :goto_0
    const-string/jumbo v1, "  System keys:"

    #@56
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 467
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@5b
    const-string/jumbo v2, "/adb_keys"

    #@5e
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@61
    const/4 v2, 0x0

    #@62
    const/4 v3, 0x0

    #@63
    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@6a
    .line 455
    :goto_1
    return-void

    #@6b
    .line 462
    :catch_0
    move-exception v0

    #@6c
    .line 463
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "IOException: "

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@83
    goto :goto_0

    #@84
    .line 468
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@85
    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v2, "IOException: "

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9c
    goto :goto_1
.end method

.method public setAdbEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@8
    .line 435
    return-void

    #@9
    .line 437
    :cond_0
    const/4 v0, 0x2

    #@a
    goto :goto_0
.end method
