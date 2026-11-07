.class public Lsun/nio/fs/DefaultFileSystemProvider;
.super Ljava/lang/Object;
.source "DefaultFileSystemProvider.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()Ljava/nio/file/spi/FileSystemProvider;
    .registers 3

    .line 58
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "os.name"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "osname":Ljava/lang/String;
    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 61
    const-string v1, "sun.nio.fs.SolarisFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 64
    :cond_1c
    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "Fuchsia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_53

    .line 66
    :cond_2d
    const-string v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 67
    const-string v1, "sun.nio.fs.MacOSXFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 68
    :cond_3c
    const-string v1, "AIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 69
    const-string v1, "sun.nio.fs.AixFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 70
    :cond_4b
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Platform not recognized"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 65
    :cond_53
    :goto_53
    const-string v1, "sun.nio.fs.LinuxFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 4
    .param p0, "cn"    # Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_13

    .line 46
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/file/spi/FileSystemProvider;>;"
    nop

    .line 48
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/spi/FileSystemProvider;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v1

    .line 49
    :catch_c
    move-exception v1

    .line 50
    .local v1, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 44
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/file/spi/FileSystemProvider;>;"
    .end local v1    # "x":Ljava/lang/ReflectiveOperationException;
    :catch_13
    move-exception v0

    .line 45
    .local v0, "x":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
