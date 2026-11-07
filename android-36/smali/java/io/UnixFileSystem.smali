.class Ljava/io/UnixFileSystem;
.super Ljava/io/FileSystem;
.source "UnixFileSystem.java"


# instance fields
.field private blacklist cache:Ljava/io/ExpiringCache;

.field private final blacklist colon:C

.field private final blacklist javaHome:Ljava/lang/String;

.field private blacklist javaHomePrefixCache:Ljava/io/ExpiringCache;

.field private final blacklist slash:C

.field private final blacklist userDir:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 495
    invoke-static {}, Ljava/io/UnixFileSystem;->initIDs()V

    .line 496
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/io/FileSystem;-><init>()V

    .line 184
    new-instance v0, Ljava/io/ExpiringCache;

    invoke-direct {v0}, Ljava/io/ExpiringCache;-><init>()V

    iput-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    .line 188
    new-instance v0, Ljava/io/ExpiringCache;

    invoke-direct {v0}, Ljava/io/ExpiringCache;-><init>()V

    iput-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    .line 56
    invoke-static {}, Lsun/security/action/GetPropertyAction;->privilegedGetProperties()Ljava/util/Properties;

    move-result-object v0

    .line 57
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "file.separator"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Ljava/io/UnixFileSystem;->slash:C

    .line 58
    const-string v1, "path.separator"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Ljava/io/UnixFileSystem;->colon:C

    .line 59
    invoke-static {}, Ljdk/internal/util/StaticProperty;->javaHome()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/UnixFileSystem;->javaHome:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljdk/internal/util/StaticProperty;->userDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/UnixFileSystem;->userDir:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private blacklist canonicalize0(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_13

    .line 244
    const-wide/32 v0, 0x129ed651

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 245
    .local v0, "isAtLeastTargetSdk35":Z
    :goto_14
    invoke-direct {p0, p1, v0}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private native blacklist canonicalize0(Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native blacklist createDirectory0(Ljava/io/File;)Z
.end method

.method private native blacklist createFileExclusively0(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native blacklist getBooleanAttributes0(Ljava/lang/String;)I
.end method

.method private native blacklist getLastModifiedTime0(Ljava/io/File;)J
.end method

.method private native blacklist getNameMax0(Ljava/lang/String;)J
.end method

.method private native blacklist getSpace0(Ljava/io/File;I)J
.end method

.method private static native blacklist initIDs()V
.end method

.method private native blacklist list0(Ljava/io/File;)[Ljava/lang/String;
.end method

.method static blacklist parentOrNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "path"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 261
    :cond_4
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 262
    .local v1, "sep":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 263
    .local v2, "last":I
    move v4, v2

    .line 264
    .local v4, "idx":I
    const/4 v5, 0x0

    .line 265
    .local v5, "adjacentDots":I
    const/4 v6, 0x0

    .line 266
    .local v6, "nonDotCount":I
    :goto_f
    if-lez v4, :cond_43

    .line 267
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 268
    .local v7, "c":C
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_1f

    .line 269
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x2

    if-lt v5, v8, :cond_3f

    .line 271
    return-object v0

    .line 273
    :cond_1f
    if-ne v7, v1, :cond_3c

    .line 274
    if-ne v5, v3, :cond_26

    if-nez v6, :cond_26

    .line 276
    return-object v0

    .line 278
    :cond_26
    if-eqz v4, :cond_3b

    add-int/lit8 v3, v2, -0x1

    if-ge v4, v3, :cond_3b

    add-int/lit8 v3, v4, -0x1

    .line 280
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_35

    goto :goto_3b

    .line 285
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_3b
    :goto_3b
    return-object v0

    .line 287
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    .line 288
    const/4 v5, 0x0

    .line 290
    :cond_3f
    nop

    .end local v7    # "c":C
    add-int/lit8 v4, v4, -0x1

    .line 291
    goto :goto_f

    .line 292
    :cond_43
    return-object v0
.end method

.method private native blacklist setLastModifiedTime0(Ljava/io/File;J)Z
.end method

.method private native blacklist setPermission0(Ljava/io/File;IZZ)Z
.end method

.method private native blacklist setReadOnly0(Ljava/io/File;)Z
.end method


# virtual methods
.method public blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-boolean v0, Ljava/io/UnixFileSystem;->useCanonCaches:Z

    if-nez v0, :cond_9

    .line 192
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_9
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v0, p1}, Ljava/io/ExpiringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_ab

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "dir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 198
    .local v2, "resDir":Ljava/lang/String;
    sget-boolean v3, Ljava/io/UnixFileSystem;->useCanonPrefixCache:Z

    if-eqz v3, :cond_62

    .line 202
    invoke-static {p1}, Ljava/io/UnixFileSystem;->parentOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_62

    .line 204
    iget-object v3, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v3, v1}, Ljava/io/ExpiringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_62

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, p0, Ljava/io/UnixFileSystem;->slash:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v4, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Ljava/io/UnixFileSystem;->slash:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v3    # "filename":Ljava/lang/String;
    :cond_62
    if-nez v0, :cond_ab

    .line 215
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 216
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v3

    invoke-interface {v3, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v3, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v3, p1, v0}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-boolean v3, Ljava/io/UnixFileSystem;->useCanonPrefixCache:Z

    if-eqz v3, :cond_ab

    if-eqz v1, :cond_ab

    iget-object v3, p0, Ljava/io/UnixFileSystem;->javaHome:Ljava/lang/String;

    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 222
    invoke-static {v0}, Ljava/io/UnixFileSystem;->parentOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_ab

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 228
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 230
    iget-object v4, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v4, v1, v2}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v1    # "dir":Ljava/lang/String;
    .end local v2    # "resDir":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_ab
    return-object v0
.end method

.method public blacklist checkAccess(Ljava/io/File;I)Z
    .registers 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "access"    # I

    .line 314
    sparse-switch p2, :sswitch_data_36

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad access mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :sswitch_1c
    sget v0, Landroid/system/OsConstants;->F_OK:I

    .line 317
    .local v0, "mode":I
    goto :goto_28

    .line 319
    .end local v0    # "mode":I
    :sswitch_1f
    sget v0, Landroid/system/OsConstants;->R_OK:I

    .line 320
    .restart local v0    # "mode":I
    goto :goto_28

    .line 322
    .end local v0    # "mode":I
    :sswitch_22
    sget v0, Landroid/system/OsConstants;->W_OK:I

    .line 323
    .restart local v0    # "mode":I
    goto :goto_28

    .line 325
    .end local v0    # "mode":I
    :sswitch_25
    sget v0, Landroid/system/OsConstants;->X_OK:I

    .line 326
    .restart local v0    # "mode":I
    nop

    .line 332
    :goto_28
    :try_start_28
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    move-result v1
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_28 .. :try_end_32} :catch_33

    return v1

    .line 333
    :catch_33
    move-exception v1

    .line 334
    .local v1, "e":Landroid/system/ErrnoException;
    const/4 v2, 0x0

    return v2

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_22
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1c
    .end sparse-switch
.end method

.method public blacklist compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .line 484
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist createDirectory(Ljava/io/File;)Z
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .line 403
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 404
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->createDirectory0(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist createFileExclusively(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 367
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->createFileExclusively0(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist delete(Ljava/io/File;)Z
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .line 378
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 379
    iget-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 382
    :try_start_a
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_13} :catch_15

    .line 383
    const/4 v0, 0x1

    return v0

    .line 384
    :catch_15
    move-exception v0

    .line 385
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist fromURIPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 154
    move-object v0, p1

    .line 155
    .local v0, "p":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_1a
    return-object v0
.end method

.method public blacklist getBooleanAttributes(Ljava/io/File;)I
    .registers 7
    .param p1, "f"    # Ljava/io/File;

    .line 301
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 302
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/UnixFileSystem;->getBooleanAttributes0(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "rv":I
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    move v2, v3

    .line 308
    .local v2, "hidden":Z
    :goto_30
    if-eqz v2, :cond_34

    const/16 v3, 0x8

    :cond_34
    or-int/2addr v3, v0

    return v3
.end method

.method public blacklist getDefaultParent()Ljava/lang/String;
    .registers 2

    .line 150
    const-string v0, "/"

    return-object v0
.end method

.method public blacklist getLastModifiedTime(Ljava/io/File;)J
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .line 340
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 341
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->getLastModifiedTime0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLength(Ljava/io/File;)J
    .registers 5
    .param p1, "f"    # Ljava/io/File;

    .line 349
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 350
    :catch_d
    move-exception v0

    .line 351
    .local v0, "e":Landroid/system/ErrnoException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist getNameMax(Ljava/lang/String;)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 476
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->getNameMax0(Ljava/lang/String;)J

    move-result-wide v0

    .line 477
    .local v0, "nameMax":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    .line 478
    const-wide/32 v0, 0x7fffffff

    .line 480
    :cond_e
    long-to-int v2, v0

    return v2
.end method

.method public blacklist getPathSeparator()C
    .registers 2

    .line 71
    iget-char v0, p0, Ljava/io/UnixFileSystem;->colon:C

    return v0
.end method

.method public blacklist getSeparator()C
    .registers 2

    .line 67
    iget-char v0, p0, Ljava/io/UnixFileSystem;->slash:C

    return v0
.end method

.method public blacklist getSpace(Ljava/io/File;I)J
    .registers 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "t"    # I

    .line 464
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 465
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->getSpace0(Ljava/io/File;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hashCode(Ljava/io/File;)I
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .line 488
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12d591

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isAbsolute(Ljava/io/File;)Z
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->getPrefixLength()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist list(Ljava/io/File;)[Ljava/lang/String;
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .line 395
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 396
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->list0(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist listRoots()[Ljava/io/File;
    .registers 6

    .line 451
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_17

    .line 452
    .local v1, "security":Ljava/lang/SecurityManager;
    const-string v2, "/"

    if-eqz v1, :cond_c

    .line 453
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 455
    :cond_c
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_16} :catch_17

    return-object v3

    .line 456
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :catch_17
    move-exception v1

    .line 457
    .local v1, "x":Ljava/lang/SecurityException;
    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public blacklist normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pathname"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    .local v0, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 109
    .local v1, "normalized":[C
    const/4 v2, 0x0

    .line 110
    .local v2, "index":I
    const/4 v3, 0x0

    .line 111
    .local v3, "prevChar":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    const/16 v5, 0x2f

    if-ge v4, v0, :cond_1e

    .line 112
    aget-char v6, v1, v4

    .line 114
    .local v6, "current":C
    if-ne v6, v5, :cond_15

    if-eq v3, v5, :cond_1a

    .line 115
    :cond_15
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput-char v6, v1, v2

    move v2, v5

    .line 118
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_1a
    move v3, v6

    .line 111
    .end local v6    # "current":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 122
    .end local v4    # "i":I
    :cond_1e
    if-ne v3, v5, :cond_25

    const/4 v4, 0x1

    if-le v0, v4, :cond_25

    .line 123
    add-int/lit8 v2, v2, -0x1

    .line 126
    :cond_25
    if-eq v2, v0, :cond_2e

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2f

    :cond_2e
    move-object v4, p1

    :goto_2f
    return-object v4
.end method

.method public blacklist prefixLength(Ljava/lang/String;)I
    .registers 5
    .param p1, "pathname"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 131
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public blacklist rename(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .line 415
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 416
    iget-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 419
    :try_start_a
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_17} :catch_19

    .line 420
    const/4 v0, 0x1

    return v0

    .line 421
    :catch_19
    move-exception v0

    .line 422
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist resolve(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p1, "f"    # Ljava/io/File;

    .line 170
    invoke-virtual {p0, p1}, Ljava/io/UnixFileSystem;->isAbsolute(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 172
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 173
    const-string v1, "user.dir"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 175
    :cond_16
    iget-object v1, p0, Ljava/io/UnixFileSystem;->userDir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/io/UnixFileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5f

    .line 140
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_31

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-object p2

    .line 142
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_5f
    :goto_5f
    return-object p1
.end method

.method public blacklist setLastModifiedTime(Ljava/io/File;J)Z
    .registers 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "time"    # J

    .line 432
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 433
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, p1, p2, p3}, Ljava/io/UnixFileSystem;->setLastModifiedTime0(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public blacklist setPermission(Ljava/io/File;IZZ)Z
    .registers 7
    .param p1, "f"    # Ljava/io/File;
    .param p2, "access"    # I
    .param p3, "enable"    # Z
    .param p4, "owneronly"    # Z

    .line 357
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 358
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/io/UnixFileSystem;->setPermission0(Ljava/io/File;IZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist setReadOnly(Ljava/io/File;)Z
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .line 440
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 441
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->setReadOnly0(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
