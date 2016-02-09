.class Lcom/android/server/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$CredentialHash;,
        Lcom/android/server/LockSettingsStorage$Callback;,
        Lcom/android/server/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/LockSettingsStorage$Cache;
    }
.end annotation


# static fields
.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"


# instance fields
.field private final mCache:Lcom/android/server/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private final mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

.field private mStoredCredentialType:I


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 51
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 52
    const-string/jumbo v1, "value"

    #@7
    aput-object v1, v0, v2

    #@9
    .line 51
    sput-object v0, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    #@b
    .line 54
    const/4 v0, 0x2

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 55
    const-string/jumbo v1, "name"

    #@11
    aput-object v1, v0, v2

    #@13
    const-string/jumbo v1, "value"

    #@16
    aput-object v1, v0, v3

    #@18
    .line 54
    sput-object v0, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    #@1a
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@1c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1f
    sput-object v0, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    #@21
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache;-><init>(Lcom/android/server/LockSettingsStorage$Cache;)V

    #@9
    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@b
    .line 70
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    #@12
    .line 100
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    #@14
    .line 101
    new-instance v0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@16
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    #@19
    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@1b
    .line 99
    return-void
.end method

.method private clearPasswordHash(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    #@8
    .line 347
    return-void
.end method

.method private clearPatternHash(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    #@8
    .line 335
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 322
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    #@7
    .line 323
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    .line 320
    :cond_0
    return-void
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 372
    const-string/jumbo v0, "gatekeeper.gesture.key"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "basename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getUserParentOrSelfId(I)I

    #@3
    move-result p1

    #@4
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 379
    const-string/jumbo v2, "/system/"

    #@18
    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 380
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    #@22
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 384
    :cond_0
    new-instance v1, Ljava/io/File;

    #@36
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method

.method private getUserParentOrSelfId(I)I
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 389
    if-eqz p1, :cond_0

    #@2
    .line 390
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v3, "user"

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/os/UserManager;

    #@d
    .line 391
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@10
    move-result-object v0

    #@11
    .line 392
    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@13
    .line 393
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@15
    return v2

    #@16
    .line 396
    .end local v0    # "pi":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    return p1
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 258
    .local v0, "contents":[B
    if-eqz v0, :cond_0

    #@7
    array-length v2, v0

    #@8
    if-lez v2, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    iget-object v6, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@2
    monitor-enter v6

    #@3
    .line 264
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@5
    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 265
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@d
    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v5

    #@11
    monitor-exit v6

    #@12
    return-object v5

    #@13
    .line 267
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@15
    invoke-static {v5}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result v4

    #@19
    .local v4, "version":I
    monitor-exit v6

    #@1a
    .line 270
    const/4 v1, 0x0

    #@1b
    .line 271
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    #@1c
    .line 273
    .local v3, "stored":[B
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    #@1e
    const-string/jumbo v5, "r"

    #@21
    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .line 274
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    #@27
    move-result-wide v6

    #@28
    long-to-int v5, v6

    #@29
    new-array v3, v5, [B

    #@2b
    .line 275
    .local v3, "stored":[B
    array-length v5, v3

    #@2c
    const/4 v6, 0x0

    #@2d
    invoke-virtual {v2, v3, v6, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@30
    .line 276
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@33
    .line 280
    if-eqz v2, :cond_1

    #@35
    .line 282
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@38
    :cond_1
    :goto_0
    move-object v1, v2

    #@39
    .line 288
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@3b
    invoke-virtual {v5, p1, v3, v4}, Lcom/android/server/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    #@3e
    .line 289
    return-object v3

    #@3f
    .line 263
    .end local v4    # "version":I
    :catchall_0
    move-exception v5

    #@40
    monitor-exit v6

    #@41
    throw v5

    #@42
    .line 283
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "stored":[B
    .restart local v4    # "version":I
    :catch_0
    move-exception v0

    #@43
    .line 284
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "LockSettingsStorage"

    #@46
    new-instance v6, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v7, "Error closing file "

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_0

    #@5e
    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "stored":[B
    :catch_1
    move-exception v0

    #@5f
    .line 278
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string/jumbo v5, "LockSettingsStorage"

    #@62
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, "Cannot read file "

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@79
    .line 280
    if-eqz v1, :cond_2

    #@7b
    .line 282
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@7e
    goto :goto_1

    #@7f
    .line 283
    :catch_2
    move-exception v0

    #@80
    .line 284
    const-string/jumbo v5, "LockSettingsStorage"

    #@83
    new-instance v6, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v7, "Error closing file "

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    goto :goto_1

    #@9b
    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    #@9c
    .line 280
    :goto_3
    if-eqz v1, :cond_3

    #@9e
    .line 282
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@a1
    .line 279
    :cond_3
    :goto_4
    throw v5

    #@a2
    .line 283
    :catch_3
    move-exception v0

    #@a3
    .line 284
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "LockSettingsStorage"

    #@a6
    new-instance v7, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v8, "Error closing file "

    #@ae
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v7

    #@b2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    goto :goto_4

    #@be
    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v5

    #@bf
    move-object v1, v2

    #@c0
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    #@c1
    .line 277
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    #@c2
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@c3
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    #@0
    .prologue
    .line 293
    iget-object v4, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 294
    const/4 v1, 0x0

    #@4
    .line 297
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    #@6
    const-string/jumbo v3, "rw"

    #@9
    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@c
    .line 299
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    #@e
    :try_start_1
    array-length v3, p2

    #@f
    if-nez v3, :cond_3

    #@11
    .line 300
    :cond_0
    const-wide/16 v6, 0x0

    #@13
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    #@16
    .line 304
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@19
    .line 308
    if-eqz v2, :cond_1

    #@1b
    .line 310
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    :cond_1
    :goto_1
    move-object v1, v2

    #@1f
    .line 316
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@21
    invoke-virtual {v3, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    monitor-exit v4

    #@25
    .line 292
    return-void

    #@26
    .line 302
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_4
    array-length v3, p2

    #@27
    const/4 v5, 0x0

    #@28
    invoke-virtual {v2, p2, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@2b
    goto :goto_0

    #@2c
    .line 305
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    #@2e
    .line 306
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_5
    const-string/jumbo v3, "LockSettingsStorage"

    #@31
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "Error writing to file "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@48
    .line 308
    if-eqz v1, :cond_2

    #@4a
    .line 310
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@4d
    goto :goto_2

    #@4e
    .line 311
    :catch_1
    move-exception v0

    #@4f
    .line 312
    :try_start_7
    const-string/jumbo v3, "LockSettingsStorage"

    #@52
    new-instance v5, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v6, "Error closing file "

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@69
    goto :goto_2

    #@6a
    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@6b
    :goto_4
    monitor-exit v4

    #@6c
    throw v3

    #@6d
    .line 311
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    #@6e
    .line 312
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v3, "LockSettingsStorage"

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Error closing file "

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@88
    goto :goto_1

    #@89
    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    #@8a
    move-object v1, v2

    #@8b
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    #@8c
    .line 307
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    #@8d
    .line 308
    :goto_5
    if-eqz v1, :cond_4

    #@8f
    .line 310
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@92
    .line 307
    :cond_4
    :goto_6
    :try_start_a
    throw v3

    #@93
    .line 311
    :catch_3
    move-exception v0

    #@94
    .line 312
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "LockSettingsStorage"

    #@97
    new-instance v6, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v7, "Error closing file "

    #@9f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@ae
    goto :goto_6

    #@af
    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v3

    #@b0
    move-object v1, v2

    #@b1
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    #@b2
    .line 305
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    #@b3
    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_3
.end method


# virtual methods
.method clearCache()V
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$Cache;->clear()V

    #@5
    .line 439
    return-void
.end method

.method closeDatabase()V
    .locals 1

    #@0
    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->close()V

    #@5
    .line 434
    return-void
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 368
    const-string/jumbo v0, "password.key"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 363
    const-string/jumbo v0, "gesture.key"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 358
    const-string/jumbo v0, "gatekeeper.password.key"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 353
    const-string/jumbo v0, "gatekeeper.pattern.key"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getStoredCredentialType(I)I
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 182
    iget v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 183
    iget v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@8
    return v2

    #@9
    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@c
    move-result-object v1

    #@d
    .line 187
    .local v1, "pattern":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v1, :cond_2

    #@f
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 189
    iput v4, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@17
    .line 207
    :goto_0
    iget v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@19
    return v2

    #@1a
    .line 191
    :cond_1
    const/4 v2, -0x1

    #@1b
    iput v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@1d
    goto :goto_0

    #@1e
    .line 194
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@21
    move-result-object v0

    #@22
    .line 195
    .local v0, "password":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_4

    #@24
    .line 197
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    #@26
    if-ne v2, v3, :cond_3

    #@28
    .line 198
    iput v4, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@2a
    goto :goto_0

    #@2b
    .line 200
    :cond_3
    iput v3, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@2d
    goto :goto_0

    #@2e
    .line 203
    :cond_4
    iput v3, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@30
    goto :goto_0
.end method

.method public hasPassword(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 246
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method public hasPattern(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 251
    if-nez v0, :cond_0

    #@14
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    .line 251
    :goto_0
    return v0

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method

.method public prefetchUser(I)V
    .locals 14
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 154
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@5
    monitor-enter v2

    #@6
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->isFetched(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    monitor-exit v2

    #@f
    .line 156
    return-void

    #@10
    .line 158
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->setFetched(I)V

    #@15
    .line 159
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@17
    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v11

    #@1b
    .local v11, "version":I
    monitor-exit v2

    #@1c
    .line 163
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@21
    move-result-object v0

    #@22
    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    #@25
    sget-object v2, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    #@27
    .line 165
    const-string/jumbo v3, "user=?"

    #@2a
    .line 166
    new-array v4, v13, [Ljava/lang/String;

    #@2c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    aput-object v6, v4, v12

    #@32
    move-object v6, v5

    #@33
    move-object v7, v5

    #@34
    .line 164
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@37
    move-result-object v8

    #@38
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    #@3a
    .line 168
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_1

    #@40
    .line 169
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    .line 170
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    .line 171
    .local v10, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@4a
    invoke-virtual {v1, v9, v10, p1, v11}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    #@4d
    goto :goto_0

    #@4e
    .line 154
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "version":I
    :catchall_0
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1

    #@51
    .line 173
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "version":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@54
    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@57
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@5a
    .line 152
    return-void
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 129
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@4
    monitor-enter v2

    #@5
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@7
    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 131
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@f
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v1

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    .line 133
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@17
    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v10

    #@1b
    .local v10, "version":I
    monitor-exit v2

    #@1c
    .line 137
    sget-object v9, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    #@1e
    .line 138
    .local v9, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@20
    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@23
    move-result-object v0

    #@24
    .line 139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    #@27
    sget-object v2, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    #@29
    .line 140
    const-string/jumbo v3, "user=? AND name=?"

    #@2c
    .line 141
    const/4 v4, 0x2

    #@2d
    new-array v4, v4, [Ljava/lang/String;

    #@2f
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    aput-object v6, v4, v11

    #@35
    const/4 v6, 0x1

    #@36
    aput-object p1, v4, v6

    #@38
    move-object v6, v5

    #@39
    move-object v7, v5

    #@3a
    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3d
    move-result-object v8

    #@3e
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    #@40
    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_1

    #@46
    .line 144
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    .line 146
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4d
    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@4f
    invoke-virtual {v1, p1, v9, p3, v10}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    #@52
    .line 149
    sget-object v1, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    #@54
    if-ne v9, v1, :cond_3

    #@56
    .end local v9    # "result":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    #@57
    .line 129
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "version":I
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@58
    monitor-exit v2

    #@59
    throw v1

    #@5a
    .line 149
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "result":Ljava/lang/Object;
    .restart local v10    # "version":I
    :cond_3
    check-cast v9, Ljava/lang/String;

    #@5c
    move-object p2, v9

    #@5d
    goto :goto_0
.end method

.method public readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    .line 213
    .local v0, "stored":[B
    if-eqz v0, :cond_0

    #@c
    array-length v1, v0

    #@d
    if-lez v1, :cond_0

    #@f
    .line 214
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    #@15
    return-object v1

    #@16
    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    #@1d
    move-result-object v0

    #@1e
    .line 218
    if-eqz v0, :cond_1

    #@20
    array-length v1, v0

    #@21
    if-lez v1, :cond_1

    #@23
    .line 219
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@25
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    #@28
    return-object v1

    #@29
    .line 222
    :cond_1
    return-object v3
.end method

.method public readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    .line 227
    .local v0, "stored":[B
    if-eqz v0, :cond_0

    #@d
    array-length v1, v0

    #@e
    if-lez v1, :cond_0

    #@10
    .line 228
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@12
    invoke-direct {v1, p0, v0, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    #@15
    return-object v1

    #@16
    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    #@1d
    move-result-object v0

    #@1e
    .line 232
    if-eqz v0, :cond_1

    #@20
    array-length v1, v0

    #@21
    if-lez v1, :cond_1

    #@23
    .line 233
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@25
    invoke-direct {v1, p0, v0, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BZ)V

    #@28
    return-object v1

    #@29
    .line 236
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    #@30
    move-result-object v0

    #@31
    .line 237
    if-eqz v0, :cond_2

    #@33
    array-length v1, v0

    #@34
    if-lez v1, :cond_2

    #@36
    .line 238
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@38
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    #@3b
    return-object v1

    #@3c
    .line 241
    :cond_2
    return-object v3
.end method

.method public removeUser(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 400
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@2
    invoke-virtual {v5}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v6, "user"

    #@b
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/os/UserManager;

    #@11
    .line 403
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@14
    move-result-object v3

    #@15
    .line 405
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_2

    #@17
    .line 407
    iget-object v6, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    #@19
    monitor-enter v6

    #@1a
    .line 408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 409
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@20
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@23
    .line 410
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 411
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@2c
    .line 412
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@2e
    const/4 v7, 0x0

    #@2f
    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    #@32
    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 415
    new-instance v1, Ljava/io/File;

    #@38
    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3b
    .line 416
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_1

    #@41
    .line 417
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@44
    .line 418
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@46
    const/4 v7, 0x0

    #@47
    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    :cond_1
    monitor-exit v6

    #@4b
    .line 424
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@4e
    .line 425
    const-string/jumbo v5, "locksettings"

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "user=\'"

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    const-string/jumbo v7, "\'"

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    const/4 v7, 0x0

    #@6d
    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@70
    .line 426
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@73
    .line 427
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@75
    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->removeUser(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@78
    .line 429
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@7b
    .line 399
    return-void

    #@7c
    .line 407
    :catchall_0
    move-exception v5

    #@7d
    monitor-exit v6

    #@7e
    throw v5

    #@7f
    .line 428
    :catchall_1
    move-exception v5

    #@80
    .line 429
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@83
    .line 428
    throw v5
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 110
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 111
    const-string/jumbo v1, "user"

    #@e
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@15
    .line 112
    const-string/jumbo v1, "value"

    #@18
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@1e
    .line 116
    :try_start_0
    const-string/jumbo v1, "locksettings"

    #@21
    const-string/jumbo v2, "name=? AND user=?"

    #@24
    .line 117
    const/4 v3, 0x2

    #@25
    new-array v3, v3, [Ljava/lang/String;

    #@27
    const/4 v4, 0x0

    #@28
    aput-object p2, v3, v4

    #@2a
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x1

    #@2f
    aput-object v4, v3, v5

    #@31
    .line 116
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@34
    .line 118
    const-string/jumbo v1, "locksettings"

    #@37
    const/4 v2, 0x0

    #@38
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@3b
    .line 119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@3e
    .line 120
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    #@40
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 122
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@46
    .line 108
    return-void

    #@47
    .line 121
    :catchall_0
    move-exception v1

    #@48
    .line 122
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@4b
    .line 121
    throw v1
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    .line 104
    return-void
.end method

.method public writePasswordHash([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 340
    if-nez p1, :cond_0

    #@2
    .line 341
    const/4 v0, -0x1

    #@3
    .line 340
    :goto_0
    iput v0, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@5
    .line 343
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    #@c
    .line 344
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsStorage;->clearPatternHash(I)V

    #@f
    .line 339
    return-void

    #@10
    .line 342
    :cond_0
    const/4 v0, 0x2

    #@11
    goto :goto_0
.end method

.method public writePatternHash([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 328
    if-nez p1, :cond_0

    #@2
    .line 329
    const/4 v0, -0x1

    #@3
    .line 328
    :goto_0
    iput v0, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    #@5
    .line 331
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    #@c
    .line 332
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsStorage;->clearPasswordHash(I)V

    #@f
    .line 327
    return-void

    #@10
    .line 330
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method
