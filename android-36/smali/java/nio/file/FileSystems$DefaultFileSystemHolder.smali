.class Ljava/nio/file/FileSystems$DefaultFileSystemHolder;
.super Ljava/lang/Object;
.source "FileSystems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileSystems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFileSystemHolder"
.end annotation


# static fields
.field static final greylist-max-o defaultFileSystem:Ljava/nio/file/FileSystem;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaultProvider()Ljava/nio/file/spi/FileSystemProvider;
    .registers 1

    invoke-static {}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->getDefaultProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    invoke-static {}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Ljava/nio/file/FileSystem;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o defaultFileSystem()Ljava/nio/file/FileSystem;
    .registers 2

    .line 95
    new-instance v0, Ljava/nio/file/FileSystems$DefaultFileSystemHolder$1;

    invoke-direct {v0}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder$1;-><init>()V

    .line 96
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileSystemProvider;

    .line 103
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o getDefaultProvider()Ljava/nio/file/spi/FileSystemProvider;
    .registers 11

    .line 108
    invoke-static {}, Lsun/nio/fs/DefaultFileSystemProvider;->create()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 112
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    nop

    .line 113
    const-string v1, "java.nio.file.spi.DefaultFileSystemProvider"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "propValue":Ljava/lang/String;
    if-eqz v1, :cond_58

    .line 115
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_58

    aget-object v6, v2, v5

    .line 117
    .local v6, "cn":Ljava/lang/String;
    nop

    .line 118
    :try_start_1b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 119
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/nio/file/spi/FileSystemProvider;

    aput-object v9, v8, v4

    .line 120
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 121
    .local v8, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/file/spi/FileSystemProvider;

    move-object v0, v9

    .line 124
    invoke-virtual {v0}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 129
    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 115
    .end local v6    # "cn":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 125
    .restart local v6    # "cn":Ljava/lang/String;
    .restart local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_49
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Default provider must use scheme \'file\'"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v0    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    .end local v1    # "propValue":Ljava/lang/String;
    .end local v6    # "cn":Ljava/lang/String;
    throw v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_51} :catch_51

    .line 127
    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    .restart local v1    # "propValue":Ljava/lang/String;
    .restart local v6    # "cn":Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 128
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 132
    .end local v2    # "x":Ljava/lang/Exception;
    .end local v6    # "cn":Ljava/lang/String;
    :cond_58
    return-object v0
.end method
