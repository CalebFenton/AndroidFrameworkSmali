.class Ljava/io/UnixFileSystem;
.super Ljava/io/FileSystem;
.source "UnixFileSystem.java"


# instance fields
.field private cache:Ljava/io/ExpiringCache;

.field private final colon:C

.field private final javaHome:Ljava/lang/String;

.field private javaHomePrefixCache:Ljava/io/ExpiringCache;

.field private final slash:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 379
    invoke-static {}, Ljava/io/UnixFileSystem;->initIDs()V

    #@3
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 40
    invoke-direct {p0}, Ljava/io/FileSystem;-><init>()V

    #@4
    .line 139
    new-instance v0, Ljava/io/ExpiringCache;

    #@6
    invoke-direct {v0}, Ljava/io/ExpiringCache;-><init>()V

    #@9
    iput-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    #@b
    .line 143
    new-instance v0, Ljava/io/ExpiringCache;

    #@d
    invoke-direct {v0}, Ljava/io/ExpiringCache;-><init>()V

    #@10
    iput-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    #@12
    .line 42
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@14
    const-string/jumbo v1, "file.separator"

    #@17
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@1a
    .line 41
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v0

    #@24
    iput-char v0, p0, Ljava/io/UnixFileSystem;->slash:C

    #@26
    .line 44
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@28
    const-string/jumbo v1, "path.separator"

    #@2b
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@2e
    .line 43
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v0

    #@38
    iput-char v0, p0, Ljava/io/UnixFileSystem;->colon:C

    #@3a
    .line 46
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@3c
    const-string/jumbo v1, "java.home"

    #@3f
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@42
    .line 45
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Ljava/lang/String;

    #@48
    iput-object v0, p0, Ljava/io/UnixFileSystem;->javaHome:Ljava/lang/String;

    #@4a
    .line 40
    return-void
.end method

.method private native canonicalize0(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native checkAccess0(Ljava/io/File;I)Z
.end method

.method private native createDirectory0(Ljava/io/File;)Z
.end method

.method private native createFileExclusively0(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native delete0(Ljava/io/File;)Z
.end method

.method private native getBooleanAttributes0(Ljava/lang/String;)I
.end method

.method private native getLastModifiedTime0(Ljava/io/File;)J
.end method

.method private native getLength0(Ljava/io/File;)J
.end method

.method private native getSpace0(Ljava/io/File;I)J
.end method

.method private static native initIDs()V
.end method

.method private native list0(Ljava/io/File;)[Ljava/lang/String;
.end method

.method static parentOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 200
    if-nez p0, :cond_0

    #@4
    return-object v7

    #@5
    .line 201
    :cond_0
    sget-char v5, Ljava/io/File;->separatorChar:C

    #@7
    .line 202
    .local v5, "sep":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v6

    #@b
    add-int/lit8 v3, v6, -0x1

    #@d
    .line 203
    .local v3, "last":I
    move v2, v3

    #@e
    .line 204
    .local v2, "idx":I
    const/4 v0, 0x0

    #@f
    .line 205
    .local v0, "adjacentDots":I
    const/4 v4, 0x0

    #@10
    .line 206
    .local v4, "nonDotCount":I
    :goto_0
    if-lez v2, :cond_7

    #@12
    .line 207
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 208
    .local v1, "c":C
    const/16 v6, 0x2e

    #@18
    if-ne v1, v6, :cond_1

    #@1a
    .line 209
    add-int/lit8 v0, v0, 0x1

    #@1c
    const/4 v6, 0x2

    #@1d
    if-lt v0, v6, :cond_6

    #@1f
    .line 211
    return-object v7

    #@20
    .line 213
    :cond_1
    if-ne v1, v5, :cond_5

    #@22
    .line 214
    const/4 v6, 0x1

    #@23
    if-ne v0, v6, :cond_2

    #@25
    if-nez v4, :cond_2

    #@27
    .line 216
    return-object v7

    #@28
    .line 218
    :cond_2
    if-eqz v2, :cond_3

    #@2a
    .line 219
    add-int/lit8 v6, v3, -0x1

    #@2c
    if-lt v2, v6, :cond_4

    #@2e
    .line 223
    :cond_3
    return-object v7

    #@2f
    .line 220
    :cond_4
    add-int/lit8 v6, v2, -0x1

    #@31
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v6

    #@35
    if-eq v6, v5, :cond_3

    #@37
    .line 225
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    return-object v6

    #@3c
    .line 227
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@3e
    .line 228
    const/4 v0, 0x0

    #@3f
    .line 230
    :cond_6
    add-int/lit8 v2, v2, -0x1

    #@41
    goto :goto_0

    #@42
    .line 232
    .end local v1    # "c":C
    :cond_7
    return-object v7
.end method

.method private native rename0(Ljava/io/File;Ljava/io/File;)Z
.end method

.method private native setLastModifiedTime0(Ljava/io/File;J)Z
.end method

.method private native setPermission0(Ljava/io/File;IZZ)Z
.end method

.method private native setReadOnly0(Ljava/io/File;)Z
.end method


# virtual methods
.method public canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    sget-boolean v5, Ljava/io/UnixFileSystem;->useCanonCaches:Z

    #@2
    if-nez v5, :cond_0

    #@4
    .line 147
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    return-object v5

    #@9
    .line 149
    :cond_0
    iget-object v5, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    #@b
    invoke-virtual {v5, p1}, Ljava/io/ExpiringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 150
    .local v3, "res":Ljava/lang/String;
    if-nez v3, :cond_2

    #@11
    .line 151
    const/4 v0, 0x0

    #@12
    .line 152
    .local v0, "dir":Ljava/lang/String;
    const/4 v4, 0x0

    #@13
    .line 153
    .local v4, "resDir":Ljava/lang/String;
    sget-boolean v5, Ljava/io/UnixFileSystem;->useCanonPrefixCache:Z

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 157
    invoke-static {p1}, Ljava/io/UnixFileSystem;->parentOrNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 158
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1d
    .line 159
    iget-object v5, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    #@1f
    invoke-virtual {v5, v0}, Ljava/io/ExpiringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 160
    .local v4, "resDir":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@25
    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@28
    move-result v5

    #@29
    add-int/lit8 v5, v5, 0x1

    #@2b
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 163
    .local v2, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    iget-char v6, p0, Ljava/io/UnixFileSystem;->slash:C

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 164
    iget-object v5, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    #@48
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    iget-char v7, p0, Ljava/io/UnixFileSystem;->slash:C

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v5, v6, v3}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 168
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "resDir":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    #@64
    .line 169
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@67
    move-result-object v5

    #@68
    invoke-interface {v5}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@6b
    .line 170
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    .line 171
    iget-object v5, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    #@71
    invoke-virtual {v5, p1, v3}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 172
    sget-boolean v5, Ljava/io/UnixFileSystem;->useCanonPrefixCache:Z

    #@76
    if-eqz v5, :cond_2

    #@78
    .line 173
    if-eqz v0, :cond_2

    #@7a
    iget-object v5, p0, Ljava/io/UnixFileSystem;->javaHome:Ljava/lang/String;

    #@7c
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7f
    move-result v5

    #@80
    .line 172
    if-eqz v5, :cond_2

    #@82
    .line 174
    invoke-static {v3}, Ljava/io/UnixFileSystem;->parentOrNull(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    .line 179
    .restart local v4    # "resDir":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@88
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_2

    #@8e
    .line 180
    new-instance v1, Ljava/io/File;

    #@90
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@93
    .line 181
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@96
    move-result v5

    #@97
    if-eqz v5, :cond_2

    #@99
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@9c
    move-result v5

    #@9d
    if-eqz v5, :cond_3

    #@9f
    .line 188
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "resDir":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    #@a0
    .line 182
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "resDir":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    #@a2
    invoke-virtual {v5, v0, v4}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@a5
    goto :goto_0
.end method

.method public checkAccess(Ljava/io/File;I)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "access"    # I

    #@0
    .prologue
    .line 249
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 250
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->checkAccess0(Ljava/io/File;I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    #@0
    .prologue
    .line 368
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public createDirectory(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 307
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 308
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->createDirectory0(Ljava/io/File;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public createFileExclusively(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 280
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->createFileExclusively0(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public delete(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    #@2
    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    #@5
    .line 292
    iget-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    #@7
    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    #@a
    .line 293
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@11
    .line 294
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->delete0(Ljava/io/File;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public fromURIPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    move-object v0, p1

    #@1
    .line 114
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v1, "/"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x1

    #@f
    if-le v1, v2, :cond_0

    #@11
    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    const/4 v2, 0x0

    #@18
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 118
    :cond_0
    return-object v0
.end method

.method public getBooleanAttributes(Ljava/io/File;)I
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 240
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@4
    move-result-object v4

    #@5
    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@8
    .line 242
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-direct {p0, v4}, Ljava/io/UnixFileSystem;->getBooleanAttributes0(Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    .line 243
    .local v2, "rv":I
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 244
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@17
    move-result v4

    #@18
    if-lez v4, :cond_1

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v4

    #@1e
    const/16 v5, 0x2e

    #@20
    if-ne v4, v5, :cond_1

    #@22
    const/4 v0, 0x1

    #@23
    .line 245
    .local v0, "hidden":Z
    :goto_0
    if-eqz v0, :cond_0

    #@25
    const/16 v3, 0x8

    #@27
    :cond_0
    or-int/2addr v3, v2

    #@28
    return v3

    #@29
    .end local v0    # "hidden":Z
    :cond_1
    move v0, v3

    #@2a
    .line 244
    goto :goto_0
.end method

.method public getDefaultParent()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    const-string/jumbo v0, "/"

    #@3
    return-object v0
.end method

.method public getLastModifiedTime(Ljava/io/File;)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 256
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 257
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->getLastModifiedTime0(Ljava/io/File;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public getLength(Ljava/io/File;)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 263
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 264
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->getLength0(Ljava/io/File;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public getPathSeparator()C
    .locals 1

    #@0
    .prologue
    .line 57
    iget-char v0, p0, Ljava/io/UnixFileSystem;->colon:C

    #@2
    return v0
.end method

.method public getSeparator()C
    .locals 1

    #@0
    .prologue
    .line 53
    iget-char v0, p0, Ljava/io/UnixFileSystem;->slash:C

    #@2
    return v0
.end method

.method public getSpace(Ljava/io/File;I)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "t"    # I

    #@0
    .prologue
    .line 358
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->getSpace0(Ljava/io/File;I)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public hashCode(Ljava/io/File;)I
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    const v1, 0x12d591

    #@b
    xor-int/2addr v0, v1

    #@c
    return v0
.end method

.method public isAbsolute(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 125
    invoke-virtual {p1}, Ljava/io/File;->getPrefixLength()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public list(Ljava/io/File;)[Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 300
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 301
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->list0(Ljava/io/File;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public listRoots()[Ljava/io/File;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 346
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 347
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 348
    const-string/jumbo v2, "/"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@d
    .line 350
    :cond_0
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/io/File;

    #@10
    new-instance v3, Ljava/io/File;

    #@12
    const-string/jumbo v4, "/"

    #@15
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    return-object v2

    #@1c
    .line 351
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v1

    #@1d
    .line 352
    .local v1, "x":Ljava/lang/SecurityException;
    new-array v2, v5, [Ljava/io/File;

    #@1f
    return-object v2
.end method

.method public normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pathname"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    .line 67
    .local v4, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@9
    move-result-object v5

    #@a
    .line 68
    .local v5, "normalized":[C
    const/4 v2, 0x0

    #@b
    .line 69
    .local v2, "index":I
    const/4 v6, 0x0

    #@c
    .line 70
    .local v6, "prevChar":C
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    move v3, v2

    #@e
    .end local v2    # "index":I
    .end local v6    # "prevChar":C
    .local v3, "index":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@10
    .line 71
    aget-char v0, v5, v1

    #@12
    .line 73
    .local v0, "current":C
    if-ne v0, v7, :cond_0

    #@14
    if-eq v6, v7, :cond_1

    #@16
    .line 74
    :cond_0
    add-int/lit8 v2, v3, 0x1

    #@18
    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-char v0, v5, v3

    #@1a
    .line 77
    :goto_1
    move v6, v0

    #@1b
    .line 70
    .local v6, "prevChar":C
    add-int/lit8 v1, v1, 0x1

    #@1d
    move v3, v2

    #@1e
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@1f
    .end local v6    # "prevChar":C
    :cond_1
    move v2, v3

    #@20
    .line 73
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    #@21
    .line 81
    .end local v0    # "current":C
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_2
    if-ne v6, v7, :cond_4

    #@23
    const/4 v7, 0x1

    #@24
    if-le v4, v7, :cond_4

    #@26
    .line 82
    add-int/lit8 v2, v3, -0x1

    #@28
    .line 85
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_2
    if-eq v2, v4, :cond_3

    #@2a
    new-instance p1, Ljava/lang/String;

    #@2c
    .end local p1    # "pathname":Ljava/lang/String;
    const/4 v7, 0x0

    #@2d
    invoke-direct {p1, v5, v7, v2}, Ljava/lang/String;-><init>([CII)V

    #@30
    :cond_3
    return-object p1

    #@31
    .end local v2    # "index":I
    .restart local v3    # "index":I
    .restart local p1    # "pathname":Ljava/lang/String;
    :cond_4
    move v2, v3

    #@32
    .line 81
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2
.end method

.method public prefixLength(Ljava/lang/String;)I
    .locals 3
    .param p1, "pathname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v0

    #@8
    .line 90
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v1

    #@c
    const/16 v2, 0x2f

    #@e
    if-ne v1, v2, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    :cond_1
    return v0
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    #@2
    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    #@5
    .line 320
    iget-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    #@7
    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    #@a
    .line 321
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@11
    .line 322
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->rename0(Ljava/io/File;Ljava/io/File;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public resolve(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljava/io/UnixFileSystem;->isAbsolute(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 130
    :cond_0
    const-string/jumbo v0, "user.dir"

    #@e
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v0, v1}, Ljava/io/UnixFileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x2f

    #@2
    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const-string/jumbo v0, "/"

    #@b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 96
    :cond_0
    return-object p1

    #@12
    .line 99
    :cond_1
    const/4 v0, 0x0

    #@13
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    if-ne v0, v1, :cond_3

    #@19
    .line 100
    const-string/jumbo v0, "/"

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    return-object p2

    #@23
    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    .line 104
    :cond_3
    const-string/jumbo v0, "/"

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4

    #@3e
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    return-object v0

    #@50
    .line 105
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    return-object v0
.end method

.method public setLastModifiedTime(Ljava/io/File;J)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 328
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 329
    invoke-direct {p0, p1, p2, p3}, Ljava/io/UnixFileSystem;->setLastModifiedTime0(Ljava/io/File;J)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public setPermission(Ljava/io/File;IZZ)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "access"    # I
    .param p3, "enable"    # Z
    .param p4, "owneronly"    # Z

    #@0
    .prologue
    .line 270
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/io/UnixFileSystem;->setPermission0(Ljava/io/File;IZZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public setReadOnly(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 335
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 336
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->setReadOnly0(Ljava/io/File;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
