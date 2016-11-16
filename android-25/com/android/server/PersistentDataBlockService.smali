.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PersistentDataBlockService$1;
    }
.end annotation


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/PersistentDataBlockService;I)V
    .locals 0
    .param p1, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .locals 0
    .param p1, "userRestriction"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .locals 1
    .param p1, "inputStream"    # Ljava/io/DataInputStream;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/PersistentDataBlockService;)J
    .locals 2

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap6(Lcom/android/server/PersistentDataBlockService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@8
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 83
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    #@a
    .line 85
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    #@d
    .line 354
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    #@12
    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    #@14
    .line 90
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@16
    .line 91
    const-string/jumbo v0, "ro.frp.pst"

    #@19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@1f
    .line 92
    const-wide/16 v0, -0x1

    #@21
    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    #@23
    .line 93
    const/4 v0, 0x0

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    #@27
    move-result v0

    #@28
    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    #@2a
    .line 88
    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 207
    invoke-direct {p0, v4}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    #@5
    move-result-object v0

    #@6
    .line 208
    .local v0, "digest":[B
    if-eqz v0, :cond_0

    #@8
    .line 211
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    #@a
    .line 212
    new-instance v4, Ljava/io/FileOutputStream;

    #@c
    new-instance v5, Ljava/io/File;

    #@e
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@10
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@16
    .line 211
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 219
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    #@1a
    const/16 v5, 0x20

    #@1c
    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    #@1f
    .line 220
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 225
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@25
    .line 227
    const/4 v4, 0x1

    #@26
    return v4

    #@27
    .line 213
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@28
    .line 214
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@2a
    const-string/jumbo v5, "partition not available?"

    #@2d
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 215
    return v7

    #@31
    .line 221
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    #@32
    .line 222
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@34
    const-string/jumbo v5, "failed to write block checksum"

    #@37
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    .line 225
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 223
    return v7

    #@3e
    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@3f
    .line 225
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@42
    .line 224
    throw v4

    #@43
    .line 229
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :cond_0
    return v7
.end method

.method private computeDigestLocked([B)[B
    .locals 12
    .param p1, "storedDigest"    # [B

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, 0x0

    #@3
    .line 236
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    #@5
    new-instance v7, Ljava/io/FileInputStream;

    #@7
    new-instance v8, Ljava/io/File;

    #@9
    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@b
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@11
    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@14
    .line 244
    .local v4, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    const-string/jumbo v7, "SHA-256"

    #@17
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    #@1a
    move-result-object v5

    #@1b
    .line 253
    .local v5, "md":Ljava/security/MessageDigest;
    if-eqz p1, :cond_0

    #@1d
    :try_start_2
    array-length v7, p1

    #@1e
    if-ne v7, v11, :cond_0

    #@20
    .line 254
    invoke-virtual {v4, p1}, Ljava/io/DataInputStream;->read([B)I

    #@23
    .line 260
    :goto_0
    const/16 v7, 0x400

    #@25
    new-array v0, v7, [B

    #@27
    .line 261
    .local v0, "data":[B
    const/4 v7, 0x0

    #@28
    const/16 v8, 0x20

    #@2a
    invoke-virtual {v5, v0, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    #@2d
    .line 262
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    #@30
    move-result v6

    #@31
    .local v6, "read":I
    const/4 v7, -0x1

    #@32
    if-eq v6, v7, :cond_1

    #@34
    .line 263
    const/4 v7, 0x0

    #@35
    invoke-virtual {v5, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_1

    #@39
    .line 265
    .end local v0    # "data":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v2

    #@3a
    .line 266
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v7, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@3c
    const-string/jumbo v8, "failed to read partition"

    #@3f
    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 269
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 267
    return-object v10

    #@46
    .line 237
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    #@47
    .line 238
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v7, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@49
    const-string/jumbo v8, "partition not available?"

    #@4c
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    .line 239
    return-object v10

    #@50
    .line 245
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    #@51
    .line 247
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@53
    const-string/jumbo v8, "SHA-256 not supported?"

    #@56
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@59
    .line 248
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5c
    .line 249
    return-object v10

    #@5d
    .line 256
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :cond_0
    const/16 v7, 0x20

    #@5f
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 268
    :catchall_0
    move-exception v7

    #@64
    .line 269
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@67
    .line 268
    throw v7

    #@68
    .line 269
    .restart local v0    # "data":[B
    .restart local v6    # "read":I
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6b
    .line 272
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    #@6e
    move-result-object v7

    #@6f
    return-object v7
.end method

.method private doGetOemUnlockEnabled()Z
    .locals 10

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 332
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    #@3
    new-instance v3, Ljava/io/FileInputStream;

    #@5
    new-instance v5, Ljava/io/File;

    #@7
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@9
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@f
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 339
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    #@14
    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@15
    .line 340
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    #@18
    move-result-wide v6

    #@19
    const-wide/16 v8, 0x1

    #@1b
    sub-long/2addr v6, v8

    #@1c
    invoke-virtual {v2, v6, v7}, Ljava/io/DataInputStream;->skip(J)J

    #@1f
    .line 341
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v3, 0x1

    #@26
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .line 347
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2a
    .line 341
    return v3

    #@2b
    .line 333
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    #@2c
    .line 334
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@2e
    const-string/jumbo v5, "partition not available"

    #@31
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 335
    return v4

    #@35
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :cond_0
    move v3, v4

    #@36
    .line 341
    goto :goto_0

    #@37
    .line 339
    :catchall_0
    move-exception v3

    #@38
    :try_start_4
    monitor-exit v5

    #@39
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    .line 343
    :catch_1
    move-exception v1

    #@3b
    .line 344
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@3d
    const-string/jumbo v5, "unable to access persistent partition"

    #@40
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@43
    .line 347
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@46
    .line 345
    return v4

    #@47
    .line 346
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    #@48
    .line 347
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 346
    throw v3
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 304
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    #@3
    new-instance v6, Ljava/io/File;

    #@5
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@7
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a
    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 311
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@10
    move-result-object v0

    #@11
    .line 313
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    #@14
    move-result-wide v6

    #@15
    const-wide/16 v8, 0x1

    #@17
    sub-long/2addr v6, v8

    #@18
    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    #@1b
    .line 315
    const/4 v6, 0x1

    #@1c
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v1

    #@20
    .line 316
    .local v1, "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    #@22
    :goto_0
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@25
    .line 317
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@28
    .line 318
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    #@2b
    .line 319
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 324
    const-string/jumbo v6, "sys.oem_unlock_allowed"

    #@31
    if-eqz p1, :cond_1

    #@33
    const-string/jumbo v5, "1"

    #@36
    :goto_1
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 325
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 301
    return-void

    #@3d
    .line 305
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    #@3e
    .line 306
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@40
    const-string/jumbo v6, "partition not available"

    #@43
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    .line 307
    return-void

    #@47
    .line 316
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "data":Ljava/nio/ByteBuffer;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v5, 0x0

    #@48
    goto :goto_0

    #@49
    .line 324
    :cond_1
    const-string/jumbo v5, "0"

    #@4c
    goto :goto_1

    #@4d
    .line 320
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    #@4e
    .line 321
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@50
    const-string/jumbo v6, "unable to access persistent partition"

    #@53
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    .line 324
    const-string/jumbo v6, "sys.oem_unlock_allowed"

    #@59
    if-eqz p1, :cond_2

    #@5b
    const-string/jumbo v5, "1"

    #@5e
    :goto_2
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@61
    .line 325
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@64
    .line 322
    return-void

    #@65
    .line 324
    :cond_2
    const-string/jumbo v5, "0"

    #@68
    goto :goto_2

    #@69
    .line 323
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@6a
    .line 324
    const-string/jumbo v7, "sys.oem_unlock_allowed"

    #@6d
    if-eqz p1, :cond_3

    #@6f
    const-string/jumbo v6, "1"

    #@72
    :goto_3
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 325
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@78
    .line 323
    throw v5

    #@79
    .line 324
    :cond_3
    const-string/jumbo v6, "0"

    #@7c
    goto :goto_3
.end method

.method private enforceChecksumValidity()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 192
    const/16 v2, 0x20

    #@3
    new-array v1, v2, [B

    #@5
    .line 194
    .local v1, "storedDigest":[B
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 195
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    #@b
    move-result-object v0

    #@c
    .line 196
    .local v0, "digest":[B
    if-eqz v0, :cond_0

    #@e
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    monitor-exit v3

    #@15
    .line 203
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 197
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@19
    const-string/jumbo v4, "Formatting FRP partition..."

    #@1c
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 198
    const/4 v2, 0x0

    #@20
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 199
    return v5

    #@25
    .line 194
    .end local v0    # "digest":[B
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method private enforceIsAdmin()V
    .locals 4

    #@0
    .prologue
    .line 152
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v1

    #@4
    .line 153
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    #@d
    move-result v0

    #@e
    .line 154
    .local v0, "isAdmin":Z
    if-nez v0, :cond_0

    #@10
    .line 155
    new-instance v2, Ljava/lang/SecurityException;

    #@12
    .line 156
    const-string/jumbo v3, "Only the Admin user is allowed to change OEM unlock state"

    #@15
    .line 155
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 151
    :cond_0
    return-void
.end method

.method private enforceOemUnlockReadPermission()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 130
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.READ_OEM_UNLOCK_STATE"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 132
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    if-ne v0, v2, :cond_0

    #@17
    .line 134
    new-instance v0, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 129
    :cond_0
    return-void
.end method

.method private enforceOemUnlockWritePermission()V
    .locals 3

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@2
    .line 141
    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    #@5
    .line 142
    const-string/jumbo v2, "Can\'t modify OEM unlock state"

    #@8
    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 139
    return-void
.end method

.method private enforceUid(I)V
    .locals 3
    .param p1, "callingUid"    # I

    #@0
    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 147
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "uid "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " not allowed to access PST"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 145
    :cond_0
    return-void
.end method

.method private enforceUserRestriction(Ljava/lang/String;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 162
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "OEM unlock is disallowed by user restriction: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 162
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 160
    :cond_0
    return-void
.end method

.method private formatIfOemUnlockEnabled()V
    .locals 3

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    #@3
    move-result v0

    #@4
    .line 120
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    #@6
    .line 121
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 122
    const/4 v2, 0x1

    #@a
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 126
    :cond_0
    const-string/jumbo v2, "sys.oem_unlock_allowed"

    #@11
    if-eqz v0, :cond_1

    #@13
    const-string/jumbo v1, "1"

    #@16
    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 118
    return-void

    #@1a
    .line 121
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v1

    #@1c
    throw v2

    #@1d
    .line 126
    :cond_1
    const-string/jumbo v1, "0"

    #@20
    goto :goto_0
.end method

.method private formatPartitionLocked(Z)V
    .locals 8
    .param p1, "setOemUnlockEnabled"    # Z

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    .line 278
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    #@4
    new-instance v4, Ljava/io/FileOutputStream;

    #@6
    new-instance v5, Ljava/io/File;

    #@8
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@a
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@10
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 284
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    new-array v0, v7, [B

    #@15
    .line 286
    .local v0, "data":[B
    const/4 v4, 0x0

    #@16
    const/16 v5, 0x20

    #@18
    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    #@1b
    .line 287
    const v4, 0x19901873

    #@1e
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@21
    .line 288
    const/4 v4, 0x0

    #@22
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@25
    .line 289
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 294
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2b
    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    #@2e
    .line 298
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    #@31
    .line 275
    return-void

    #@32
    .line 279
    .end local v0    # "data":[B
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@33
    .line 280
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@35
    const-string/jumbo v5, "partition not available?"

    #@38
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 281
    return-void

    #@3c
    .line 290
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":[B
    .restart local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    #@3d
    .line 291
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@3f
    const-string/jumbo v5, "failed to format block"

    #@42
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 294
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 292
    return-void

    #@49
    .line 293
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@4a
    .line 294
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4d
    .line 293
    throw v4
.end method

.method private getAllowedUid(I)I
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v4

    #@6
    .line 98
    const v5, 0x1040065

    #@9
    .line 97
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 99
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v3

    #@13
    .line 100
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    #@14
    .line 103
    .local v1, "allowedUid":I
    const/high16 v4, 0x100000

    #@16
    .line 102
    :try_start_0
    invoke-virtual {v3, v0, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v1

    #@1a
    .line 108
    :goto_0
    return v1

    #@1b
    .line 104
    :catch_0
    move-exception v2

    #@1c
    .line 106
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "not able to find package "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method

.method private getBlockDeviceSize()J
    .locals 6

    #@0
    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 183
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-nez v0, :cond_0

    #@b
    .line 184
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    #@10
    move-result-wide v2

    #@11
    iput-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 188
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    #@16
    return-wide v0

    #@17
    .line 182
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .locals 3
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    const/16 v2, 0x20

    #@2
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@5
    .line 172
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@8
    move-result v0

    #@9
    .line 173
    .local v0, "blockId":I
    const v2, 0x19901873

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 174
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@11
    move-result v1

    #@12
    .line 178
    .local v1, "totalDataSize":I
    :goto_0
    return v1

    #@13
    .line 176
    .end local v1    # "totalDataSize":I
    :cond_0
    const/4 v1, 0x0

    #@14
    .restart local v1    # "totalDataSize":I
    goto :goto_0
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    #@3
    .line 114
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    #@6
    .line 115
    const-string/jumbo v0, "persistent_data_block"

    #@9
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@e
    .line 112
    return-void
.end method
