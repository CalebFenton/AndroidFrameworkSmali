.class Ljava/nio/file/TempFileHelper;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/TempFileHelper$PosixPermissions;
    }
.end annotation


# static fields
.field private static final blacklist isPosix:Z

.field private static final blacklist random:Ljava/security/SecureRandom;

.field private static final blacklist tmpdir:Ljava/nio/file/Path;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.io.tmpdir"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    .line 53
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    const-string v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ljava/nio/file/TempFileHelper;->isPosix:Z

    .line 56
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 11
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "createDirectory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    if-nez p1, :cond_4

    .line 88
    const-string p1, ""

    .line 89
    :cond_4
    if-nez p2, :cond_e

    .line 90
    if-eqz p3, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    const-string v0, ".tmp"

    :goto_d
    move-object p2, v0

    .line 91
    :cond_e
    if-nez p0, :cond_12

    .line 92
    sget-object p0, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    .line 96
    :cond_12
    sget-boolean v0, Ljava/nio/file/TempFileHelper;->isPosix:Z

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_5f

    .line 97
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_31

    .line 99
    new-array p4, v2, [Ljava/nio/file/attribute/FileAttribute;

    .line 100
    if-eqz p3, :cond_2c

    sget-object v0, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    goto :goto_2e

    .line 101
    :cond_2c
    sget-object v0, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    :goto_2e
    aput-object v0, p4, v1

    goto :goto_5f

    .line 104
    :cond_31
    const/4 v0, 0x0

    .line 105
    .local v0, "hasPermissions":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    array-length v4, p4

    if-ge v3, v4, :cond_49

    .line 106
    aget-object v4, p4, v3

    invoke-interface {v4}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "posix:permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 107
    const/4 v0, 0x1

    .line 108
    goto :goto_49

    .line 105
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 111
    .end local v3    # "i":I
    :cond_49
    :goto_49
    if-nez v0, :cond_5f

    .line 112
    array-length v3, p4

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/nio/file/attribute/FileAttribute;

    .line 113
    .local v3, "copy":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    array-length v4, p4

    invoke-static {p4, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object p4, v3

    .line 115
    array-length v1, p4

    sub-int/2addr v1, v2

    if-eqz p3, :cond_5b

    .line 116
    sget-object v2, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    goto :goto_5d

    .line 117
    :cond_5b
    sget-object v2, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    :goto_5d
    aput-object v2, p4, v1

    .line 123
    .end local v0    # "hasPermissions":Z
    .end local v3    # "copy":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 127
    .local v0, "sm":Ljava/lang/SecurityManager;
    :goto_63
    :try_start_63
    invoke-static {p1, p2, p0}, Ljava/nio/file/TempFileHelper;->generatePath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1
    :try_end_67
    .catch Ljava/nio/file/InvalidPathException; {:try_start_63 .. :try_end_67} :catch_86

    .line 133
    .local v1, "f":Ljava/nio/file/Path;
    nop

    .line 135
    if-eqz p3, :cond_6f

    .line 136
    :try_start_6a
    invoke-static {v1, p4}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v2

    return-object v2

    .line 138
    :cond_6f
    invoke-static {v1, p4}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v2
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_73} :catch_76
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_6a .. :try_end_73} :catch_74

    return-object v2

    .line 145
    :catch_74
    move-exception v2

    .line 148
    .end local v1    # "f":Ljava/nio/file/Path;
    goto :goto_63

    .line 140
    .restart local v1    # "f":Ljava/nio/file/Path;
    :catch_76
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    if-ne p0, v3, :cond_85

    if-eqz v0, :cond_85

    .line 143
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Unable to create temporary file or directory"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_85
    throw v2

    .line 128
    .end local v1    # "f":Ljava/nio/file/Path;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_86
    move-exception v1

    .line 130
    .local v1, "e":Ljava/nio/file/InvalidPathException;
    if-eqz v0, :cond_91

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid prefix or suffix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_91
    throw v1
.end method

.method static blacklist createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/nio/file/TempFileHelper;->create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static blacklist createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ljava/nio/file/TempFileHelper;->create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generatePath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 8
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/nio/file/Path;

    .line 58
    sget-object v0, Ljava/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 59
    .local v0, "n":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    goto :goto_13

    :cond_f
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 60
    .end local v0    # "n":J
    .local v2, "n":J
    :goto_13
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 62
    .local v0, "name":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    if-nez v1, :cond_42

    .line 64
    invoke-interface {p2, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 63
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid prefix or suffix"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
