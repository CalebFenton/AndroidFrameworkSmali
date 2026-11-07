.class abstract Lsun/nio/fs/UnixFileSystem;
.super Ljava/nio/file/FileSystem;
.source "UnixFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileSystem$LookupService;,
        Lsun/nio/fs/UnixFileSystem$FileStoreIterator;
    }
.end annotation


# static fields
.field private static final blacklist GLOB_SYNTAX:Ljava/lang/String; = "glob"

.field private static final blacklist REGEX_SYNTAX:Ljava/lang/String; = "regex"


# instance fields
.field private final blacklist defaultDirectory:[B

.field private final blacklist needToResolveAgainstDefaultDirectory:Z

.field private final blacklist provider:Lsun/nio/fs/UnixFileSystemProvider;

.field private final blacklist rootDirectory:Lsun/nio/fs/UnixPath;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetrootDirectory(Lsun/nio/fs/UnixFileSystem;)Lsun/nio/fs/UnixPath;
    .registers 1

    iget-object p0, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-object p0
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V
    .registers 12
    .param p1, "provider"    # Lsun/nio/fs/UnixFileSystemProvider;
    .param p2, "dir"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem;->provider:Lsun/nio/fs/UnixFileSystemProvider;

    .line 52
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    .line 53
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_6c

    .line 60
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.nio.fs.chdirAllowed"

    const-string v3, "false"

    invoke-direct {v0, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "propValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_30

    .line 63
    move v2, v3

    goto :goto_38

    :cond_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 64
    .local v2, "chdirAllowed":Z
    :goto_38
    if-eqz v2, :cond_3d

    .line 65
    iput-boolean v3, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    goto :goto_62

    .line 67
    :cond_3d
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->getcwd()[B

    move-result-object v4

    .line 68
    .local v4, "cwd":[B
    array-length v5, v4

    iget-object v6, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    array-length v6, v6

    if-ne v5, v6, :cond_49

    move v5, v3

    goto :goto_4a

    :cond_49
    move v5, v1

    .line 69
    .local v5, "defaultIsCwd":Z
    :goto_4a
    if-eqz v5, :cond_5d

    .line 70
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4d
    array-length v7, v4

    if-ge v6, v7, :cond_5d

    .line 71
    aget-byte v7, v4, v6

    iget-object v8, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_5a

    .line 72
    const/4 v5, 0x0

    .line 73
    goto :goto_5d

    .line 70
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 77
    .end local v6    # "i":I
    :cond_5d
    :goto_5d
    if-nez v5, :cond_60

    move v1, v3

    :cond_60
    iput-boolean v1, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    .line 81
    .end local v4    # "cwd":[B
    .end local v5    # "defaultIsCwd":Z
    :goto_62
    new-instance v1, Lsun/nio/fs/UnixPath;

    const-string v3, "/"

    invoke-direct {v1, p0, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    .line 82
    return-void

    .line 54
    .end local v0    # "propValue":Ljava/lang/String;
    .end local v2    # "chdirAllowed":Z
    :cond_6c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "default directory must be absolute"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist standardFileAttributeViews()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "basic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "posix"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unix"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "owner"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method blacklist compilePathMatchPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p1, "expr"    # Ljava/lang/String;

    .line 345
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method blacklist copyNonPosixAttributes(II)V
    .registers 3
    .param p1, "sfd"    # I
    .param p2, "tfd"    # I

    .line 146
    return-void
.end method

.method blacklist defaultDirectory()[B
    .registers 2

    .line 86
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    return-object v0
.end method

.method abstract blacklist getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api getFileStores()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 250
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_17

    .line 252
    :try_start_6
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileStoreAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_10} :catch_11

    .line 255
    goto :goto_17

    .line 253
    :catch_11
    move-exception v1

    .line 254
    .local v1, "se":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 257
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_17
    :goto_17
    new-instance v1, Lsun/nio/fs/UnixFileSystem$2;

    invoke-direct {v1, p0}, Lsun/nio/fs/UnixFileSystem$2;-><init>(Lsun/nio/fs/UnixFileSystem;)V

    return-object v1
.end method

.method abstract blacklist getMountEntries()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation
.end method

.method public final varargs whitelist test-api getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 8
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "more"    # [Ljava/lang/String;

    .line 267
    array-length v0, p2

    if-nez v0, :cond_5

    .line 268
    move-object v0, p1

    .local v0, "path":Ljava/lang/String;
    goto :goto_2f

    .line 270
    .end local v0    # "path":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    array-length v1, p2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2a

    aget-object v3, p2, v2

    .line 273
    .local v3, "segment":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_27

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_24

    .line 275
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .end local v3    # "segment":Ljava/lang/String;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 279
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 281
    .local v0, "path":Ljava/lang/String;
    :goto_2f
    new-instance v1, Lsun/nio/fs/UnixPath;

    invoke-direct {v1, p0, v0}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V

    return-object v1
.end method

.method public whitelist test-api getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .registers 8
    .param p1, "syntaxAndInput"    # Ljava/lang/String;

    .line 286
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 287
    .local v0, "pos":I
    if-lez v0, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 289
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "syntax":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "input":Ljava/lang/String;
    const-string v3, "glob"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 294
    invoke-static {v2}, Lsun/nio/fs/Globs;->toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "expr":Ljava/lang/String;
    goto :goto_2f

    .line 296
    .end local v3    # "expr":Ljava/lang/String;
    :cond_26
    const-string v3, "regex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 297
    move-object v3, v2

    .line 305
    .restart local v3    # "expr":Ljava/lang/String;
    :goto_2f
    invoke-virtual {p0, v3}, Lsun/nio/fs/UnixFileSystem;->compilePathMatchPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 307
    .local v4, "pattern":Ljava/util/regex/Pattern;
    new-instance v5, Lsun/nio/fs/UnixFileSystem$3;

    invoke-direct {v5, p0, v4}, Lsun/nio/fs/UnixFileSystem$3;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/regex/Pattern;)V

    return-object v5

    .line 299
    .end local v3    # "expr":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_39
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Syntax \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not recognized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    .end local v1    # "syntax":Ljava/lang/String;
    .end local v2    # "input":Ljava/lang/String;
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api getRootDirectories()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/Path;

    const/4 v1, 0x0

    iget-object v2, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    aput-object v2, v0, v1

    .line 154
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "allowedList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    new-instance v1, Lsun/nio/fs/UnixFileSystem$1;

    invoke-direct {v1, p0, v0}, Lsun/nio/fs/UnixFileSystem$1;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/List;)V

    return-object v1
.end method

.method public final whitelist test-api getSeparator()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "/"

    return-object v0
.end method

.method public final whitelist test-api getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .registers 2

    .line 320
    sget-object v0, Lsun/nio/fs/UnixFileSystem$LookupService;->instance:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-object v0
.end method

.method public final whitelist test-api isOpen()Z
    .registers 2

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api isReadOnly()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method blacklist isSolaris()Z
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method blacklist needToResolveAgainstDefaultDirectory()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    return v0
.end method

.method blacklist normalizeJavaPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 359
    return-object p1
.end method

.method blacklist normalizeNativePath([C)[C
    .registers 2
    .param p1, "path"    # [C

    .line 352
    return-object p1
.end method

.method public final whitelist test-api provider()Ljava/nio/file/spi/FileSystemProvider;
    .registers 2

    .line 107
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->provider:Lsun/nio/fs/UnixFileSystemProvider;

    return-object v0
.end method

.method blacklist rootDirectory()Lsun/nio/fs/UnixPath;
    .registers 2

    .line 94
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-object v0
.end method
