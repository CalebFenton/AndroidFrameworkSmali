.class public final Ljava/nio/file/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/Files$AcceptAllFilter;,
        Ljava/nio/file/Files$FileTypeDetectors;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o BUFFER_SIZE:I = 0x2000

.field private static final greylist-max-o MAX_BUFFER_SIZE:I = 0x7ffffff7


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 90
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 105
    new-instance v0, Ljava/nio/file/Files$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/nio/file/Files$$ExternalSyntheticLambda0;-><init>(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private static greylist-max-o copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 9
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "sink"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2905
    const-wide/16 v0, 0x0

    .line 2906
    .local v0, "nread":J
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 2908
    .local v2, "buf":[B
    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-lez v3, :cond_14

    .line 2909
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 2910
    int-to-long v5, v4

    add-long/2addr v0, v5

    goto :goto_6

    .line 2912
    :cond_14
    return-wide v0
.end method

.method public static varargs whitelist test-api copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2984
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    const/4 v0, 0x0

    .line 2988
    .local v0, "replaceExisting":Z
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_36

    aget-object v4, p2, v3

    .line 2989
    .local v4, "opt":Ljava/nio/file/CopyOption;
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_13

    .line 2990
    const/4 v0, 0x1

    .line 2988
    .end local v4    # "opt":Ljava/nio/file/CopyOption;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2992
    .restart local v4    # "opt":Ljava/nio/file/CopyOption;
    :cond_13
    if-nez v4, :cond_1d

    .line 2993
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "options contains \'null\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2995
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3001
    .end local v4    # "opt":Ljava/nio/file/CopyOption;
    :cond_36
    const/4 v1, 0x0

    .line 3002
    .local v1, "se":Ljava/lang/SecurityException;
    if-eqz v0, :cond_3f

    .line 3004
    :try_start_39
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 3007
    goto :goto_3f

    .line 3005
    :catch_3d
    move-exception v3

    .line 3006
    .local v3, "x":Ljava/lang/SecurityException;
    move-object v1, v3

    .line 3016
    .end local v3    # "x":Ljava/lang/SecurityException;
    :cond_3f
    :goto_3f
    const/4 v3, 0x2

    :try_start_40
    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_4f
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_40 .. :try_end_4f} :catch_67

    .line 3023
    .local v2, "ostream":Ljava/io/OutputStream;
    nop

    .line 3026
    move-object v3, v2

    .line 3027
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_51
    invoke-static {p0, v3}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_5b

    .line 3028
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 3027
    :cond_5a
    return-wide v4

    .line 3026
    :catchall_5b
    move-exception v4

    if-eqz v3, :cond_66

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v4

    .line 3018
    .end local v2    # "ostream":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_67
    move-exception v2

    .line 3019
    .local v2, "x":Ljava/nio/file/FileAlreadyExistsException;
    if-eqz v1, :cond_6b

    .line 3020
    throw v1

    .line 3022
    :cond_6b
    throw v2
.end method

.method public static whitelist test-api copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J
    .registers 5
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3066
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 3069
    .local v0, "in":Ljava/io/InputStream;
    :try_start_a
    invoke-static {v0, p1}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_14

    .line 3070
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3069
    :cond_13
    return-wide v1

    .line 3068
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method public static varargs whitelist test-api copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 1272
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-static {p1}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-ne v1, v0, :cond_e

    .line 1274
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    goto :goto_11

    .line 1277
    :cond_e
    invoke-static {p0, p1, p2}, Ljava/nio/file/CopyMoveHelper;->copyToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 1279
    :goto_11
    return-object p1
.end method

.method private static varargs blacklist createAndCheckIsDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 6
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_3
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_3} :catch_4

    .line 785
    goto :goto_13

    .line 782
    :catch_4
    move-exception v0

    .line 783
    .local v0, "x":Ljava/nio/file/FileAlreadyExistsException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 786
    .end local v0    # "x":Ljava/nio/file/FileAlreadyExistsException;
    :goto_13
    return-void

    .line 784
    .restart local v0    # "x":Ljava/nio/file/FileAlreadyExistsException;
    :cond_14
    throw v0
.end method

.method public static varargs whitelist test-api createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 8
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
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

    .line 727
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createAndCheckIsDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    :try_end_3
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_3} :catch_55
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 728
    return-object p0

    .line 732
    :catch_4
    move-exception v0

    .line 735
    const/4 v0, 0x0

    .line 737
    .local v0, "se":Ljava/lang/SecurityException;
    :try_start_6
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_c

    move-object p0, v1

    .line 741
    goto :goto_e

    .line 738
    :catch_c
    move-exception v1

    .line 740
    .local v1, "x":Ljava/lang/SecurityException;
    move-object v0, v1

    .line 743
    .end local v1    # "x":Ljava/lang/SecurityException;
    :goto_e
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    .line 744
    .local v1, "parent":Ljava/nio/file/Path;
    :goto_12
    if-eqz v1, :cond_25

    .line 746
    :try_start_14
    invoke-static {v1}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/AccessMode;

    invoke-virtual {v2, v1, v3}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    :try_end_1e
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_14 .. :try_end_1e} :catch_1f

    .line 747
    goto :goto_25

    .line 748
    :catch_1f
    move-exception v2

    .line 751
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_12

    .line 753
    :cond_25
    :goto_25
    if-nez v1, :cond_37

    .line 755
    if-nez v0, :cond_36

    .line 756
    new-instance v2, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Unable to determine if root directory exists"

    invoke-direct {v2, v3, v4, v5}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 759
    :cond_36
    throw v0

    .line 764
    :cond_37
    move-object v2, v1

    .line 765
    .local v2, "child":Ljava/nio/file/Path;
    invoke-interface {v1, p0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 766
    .local v4, "name":Ljava/nio/file/Path;
    invoke-interface {v2, v4}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 767
    invoke-static {v2, p1}, Ljava/nio/file/Files;->createAndCheckIsDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 768
    .end local v4    # "name":Ljava/nio/file/Path;
    goto :goto_40

    .line 769
    :cond_54
    return-object p0

    .line 729
    .end local v0    # "se":Ljava/lang/SecurityException;
    .end local v1    # "parent":Ljava/nio/file/Path;
    .end local v2    # "child":Ljava/nio/file/Path;
    :catch_55
    move-exception v0

    .line 731
    .local v0, "x":Ljava/nio/file/FileAlreadyExistsException;
    throw v0
.end method

.method public static varargs whitelist test-api createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 3
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
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

    .line 674
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 675
    return-object p0
.end method

.method public static varargs whitelist test-api createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
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

    .line 630
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 631
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 632
    .local v0, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/nio/file/StandardOpenOption;>;"
    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 633
    return-object p0
.end method

.method public static whitelist test-api createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 3
    .param p0, "link"    # Ljava/nio/file/Path;
    .param p1, "existing"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 1087
    return-object p0
.end method

.method public static varargs whitelist test-api createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "link"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
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

    .line 1043
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 1044
    return-object p0
.end method

.method public static varargs whitelist test-api createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 991
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/nio/file/TempFileHelper;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 4
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

    .line 950
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2}, Ljava/nio/file/TempFileHelper;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 897
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Ljava/nio/file/TempFileHelper;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
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

    .line 852
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Ljava/nio/file/TempFileHelper;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api delete(Ljava/nio/file/Path;)V
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->delete(Ljava/nio/file/Path;)V

    .line 1127
    return-void
.end method

.method public static whitelist test-api deleteIfExists(Ljava/nio/file/Path;)Z
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static varargs whitelist test-api exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 2384
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/nio/file/Files;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 2385
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    new-array v3, v0, [Ljava/nio/file/AccessMode;

    invoke-virtual {v1, p0, v3}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    goto :goto_1d

    .line 2388
    :cond_12
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v0

    invoke-static {p0, v1, v3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 2392
    :goto_1d
    return v2

    .line 2393
    :catch_1e
    move-exception v1

    .line 2395
    .local v1, "x":Ljava/io/IOException;
    return v0
.end method

.method public static varargs whitelist test-api find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .registers 7
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p3, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "I",
            "Ljava/util/function/BiPredicate<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">;[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3687
    .local p2, "matcher":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;>;"
    new-instance v0, Ljava/nio/file/FileTreeIterator;

    invoke-direct {v0, p0, p1, p3}, Ljava/nio/file/FileTreeIterator;-><init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V

    .line 3689
    .local v0, "iterator":Ljava/nio/file/FileTreeIterator;
    const/4 v1, 0x1

    :try_start_6
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3690
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/nio/file/Files$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljava/nio/file/Files$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/FileTreeIterator;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    new-instance v2, Ljava/nio/file/Files$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Ljava/nio/file/Files$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiPredicate;)V

    .line 3691
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/nio/file/Files$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/nio/file/Files$$ExternalSyntheticLambda3;-><init>()V

    .line 3692
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_2f} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_2f} :catch_30

    .line 3689
    return-object v1

    .line 3693
    :catch_30
    move-exception v1

    .line 3694
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/nio/file/FileTreeIterator;->close()V

    .line 3695
    throw v1
.end method

.method private static varargs blacklist followLinks([Ljava/nio/file/LinkOption;)Z
    .registers 6
    .param p0, "options"    # [Ljava/nio/file/LinkOption;

    .line 2341
    const/4 v0, 0x1

    .line 2342
    .local v0, "followLinks":Z
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    .line 2343
    .local v3, "opt":Ljava/nio/file/LinkOption;
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v3, v4, :cond_10

    .line 2344
    const/4 v0, 0x0

    .line 2345
    nop

    .line 2342
    .end local v3    # "opt":Ljava/nio/file/LinkOption;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2347
    .restart local v3    # "opt":Ljava/nio/file/LinkOption;
    :cond_10
    if-nez v3, :cond_18

    .line 2348
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2349
    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not get here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2351
    .end local v3    # "opt":Ljava/nio/file/LinkOption;
    :cond_20
    return v0
.end method

.method public static varargs whitelist test-api getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .registers 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_34

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_34

    .line 1869
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 1870
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 1872
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1873
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 1874
    move-object v2, p1

    .local v2, "name":Ljava/lang/String;
    goto :goto_2f

    .line 1876
    .end local v2    # "name":Ljava/lang/String;
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_29

    const-string v2, ""

    goto :goto_2f

    :cond_29
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1878
    .restart local v2    # "name":Ljava/lang/String;
    :goto_2f
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1868
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "pos":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs whitelist test-api getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .line 1675
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2266
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2075
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    .line 2076
    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    .line 2077
    .local v0, "view":Ljava/nio/file/attribute/FileOwnerAttributeView;
    if-eqz v0, :cond_f

    .line 2079
    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    return-object v1

    .line 2078
    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static varargs whitelist test-api getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2004
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static varargs blacklist isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "modes"    # [Ljava/nio/file/AccessMode;

    .line 2455
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2456
    const/4 v0, 0x1

    return v0

    .line 2457
    :catch_9
    move-exception v0

    .line 2458
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static varargs whitelist test-api isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 2192
    :try_start_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 2193
    :catch_b
    move-exception v0

    .line 2194
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist test-api isExecutable(Ljava/nio/file/Path;)Z
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 2556
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isHidden(Ljava/nio/file/Path;)Z
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->isHidden(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isReadable(Ljava/nio/file/Path;)Z
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 2490
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static varargs whitelist test-api isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 2229
    :try_start_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 2230
    :catch_b
    move-exception v0

    .line 2231
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist test-api isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1504
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isSymbolicLink(Ljava/nio/file/Path;)Z
    .registers 5
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 2153
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    .line 2155
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 2153
    return v0

    .line 2156
    :catch_13
    move-exception v1

    .line 2157
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method public static whitelist test-api isWritable(Ljava/nio/file/Path;)Z
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 2521
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$asUncheckedRunnable$0(Ljava/io/Closeable;)V
    .registers 3
    .param p0, "c"    # Ljava/io/Closeable;

    .line 107
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catch_5
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic blacklist lambda$find$2(Ljava/util/function/BiPredicate;Ljava/nio/file/FileTreeWalker$Event;)Z
    .registers 4
    .param p0, "matcher"    # Ljava/util/function/BiPredicate;
    .param p1, "entry"    # Ljava/nio/file/FileTreeWalker$Event;

    .line 3691
    invoke-virtual {p1}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$find$3(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;
    .registers 2
    .param p0, "entry"    # Ljava/nio/file/FileTreeWalker$Event;

    .line 3692
    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$walk$1(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;
    .registers 2
    .param p0, "entry"    # Ljava/nio/file/FileTreeWalker$Event;

    .line 3578
    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3785
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;
    .registers 6
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3744
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 3746
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;
    :try_end_12
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v1

    .line 3747
    :catch_13
    move-exception v1

    .line 3749
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 3754
    goto :goto_1f

    .line 3750
    :catch_18
    move-exception v2

    .line 3752
    .local v2, "ex":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 3753
    :goto_1c
    goto :goto_1f

    :catchall_1d
    move-exception v3

    goto :goto_1c

    .line 3755
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1f
    throw v1
.end method

.method public static whitelist test-api list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .registers 6
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3451
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 3453
    .local v0, "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_4
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3456
    .local v1, "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    new-instance v2, Ljava/nio/file/Files$2;

    invoke-direct {v2, v1}, Ljava/nio/file/Files$2;-><init>(Ljava/util/Iterator;)V

    .line 3475
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v3

    .line 3476
    invoke-static {v0}, Ljava/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;
    :try_end_21
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_21} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_21} :catch_22

    .line 3475
    return-object v3

    .line 3477
    .end local v1    # "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    :catch_22
    move-exception v1

    .line 3479
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_23
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 3484
    goto :goto_2e

    .line 3480
    :catch_27
    move-exception v2

    .line 3482
    .local v2, "ex":Ljava/io/IOException;
    :try_start_28
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 3483
    :goto_2b
    goto :goto_2e

    :catchall_2c
    move-exception v3

    goto :goto_2b

    .line 3485
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_2e
    throw v1
.end method

.method public static varargs whitelist test-api move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1392
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 1393
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-static {p1}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-ne v1, v0, :cond_e

    .line 1395
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    goto :goto_11

    .line 1398
    :cond_e
    invoke-static {p0, p1, p2}, Ljava/nio/file/CopyMoveHelper;->moveToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 1400
    :goto_11
    return-object p1
.end method

.method public static whitelist test-api newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2816
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2783
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 2784
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    new-instance v1, Ljava/io/InputStreamReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    .line 2785
    .local v1, "reader":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v2
.end method

.method public static varargs whitelist test-api newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .registers 6
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2859
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2860
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    .line 2861
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v2
.end method

.method public static varargs whitelist test-api newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2896
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 406
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 407
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .registers 3
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sget-object v1, Ljava/nio/file/Files$AcceptAllFilter;->FILTER:Ljava/nio/file/Files$AcceptAllFilter;

    invoke-virtual {v0, p0, v1}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
    .registers 6
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "glob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 514
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0

    .line 517
    :cond_d
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 518
    .local v0, "fs":Ljava/nio/file/FileSystem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v1

    .line 519
    .local v1, "matcher":Ljava/nio/file/PathMatcher;
    new-instance v2, Ljava/nio/file/Files$1;

    invoke-direct {v2, v1}, Ljava/nio/file/Files$1;-><init>(Ljava/nio/file/PathMatcher;)V

    .line 525
    .local v2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist test-api newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 3
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    .local p1, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 2433
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/nio/file/Files;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2434
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/AccessMode;

    invoke-virtual {v2, p0, v3}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    goto :goto_1d

    .line 2437
    :cond_12
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v3, v0, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_1d
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_1d} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 2441
    :goto_1d
    return v1

    .line 2445
    :catch_1e
    move-exception v0

    .line 2446
    .local v0, "x":Ljava/io/IOException;
    return v1

    .line 2442
    .end local v0    # "x":Ljava/io/IOException;
    :catch_20
    move-exception v1

    .line 2444
    .local v1, "x":Ljava/nio/file/NoSuchFileException;
    return v0
.end method

.method public static whitelist test-api probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1617
    sget-object v0, Ljava/nio/file/Files$FileTypeDetectors;->installeDetectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/spi/FileTypeDetector;

    .line 1618
    .local v1, "detector":Ljava/nio/file/spi/FileTypeDetector;
    invoke-virtual {v1, p0}, Ljava/nio/file/spi/FileTypeDetector;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 1620
    return-object v2

    .line 1621
    .end local v1    # "detector":Ljava/nio/file/spi/FileTypeDetector;
    .end local v2    # "result":Ljava/lang/String;
    :cond_19
    goto :goto_6

    .line 1624
    :cond_1a
    sget-object v0, Ljava/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileTypeDetector;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 97
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o read(Ljava/io/InputStream;I)[B
    .registers 8
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3098
    move v0, p1

    .line 3099
    .local v0, "capacity":I
    new-array v1, v0, [B

    .line 3100
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 3105
    .local v2, "nread":I
    :goto_4
    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-lez v3, :cond_f

    .line 3106
    add-int/2addr v2, v4

    goto :goto_4

    .line 3110
    :cond_f
    if-ltz v4, :cond_41

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    if-gez v3, :cond_19

    .line 3111
    goto :goto_41

    .line 3114
    :cond_19
    const v3, 0x7ffffff7

    sub-int v5, v3, v0

    if-gt v0, v5, :cond_29

    .line 3115
    shl-int/lit8 v3, v0, 0x1

    const/16 v5, 0x2000

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2e

    .line 3117
    :cond_29
    if-eq v0, v3, :cond_39

    .line 3119
    const v0, 0x7ffffff7

    .line 3121
    :goto_2e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 3122
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "nread":I
    .local v3, "nread":I
    int-to-byte v5, v4

    aput-byte v5, v1, v2

    move v2, v3

    goto :goto_4

    .line 3118
    .end local v3    # "nread":I
    .restart local v2    # "nread":I
    :cond_39
    new-instance v3, Ljava/lang/OutOfMemoryError;

    const-string v5, "Required array size too large"

    invoke-direct {v3, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3124
    :cond_41
    :goto_41
    if-ne v0, v2, :cond_45

    move-object v3, v1

    goto :goto_49

    :cond_45
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :goto_49
    return-object v3
.end method

.method public static whitelist test-api readAllBytes(Ljava/nio/file/Path;)[B
    .registers 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3152
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 3153
    .local v0, "sbc":Ljava/nio/channels/SeekableByteChannel;
    :try_start_7
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_3a

    .line 3154
    .local v1, "in":Ljava/io/InputStream;
    :try_start_b
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    .line 3155
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_26

    .line 3158
    long-to-int v4, v2

    invoke-static {v1, v4}, Ljava/nio/file/Files;->read(Ljava/io/InputStream;I)[B

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_2e

    .line 3159
    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_3a

    :cond_20
    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 3158
    :cond_25
    return-object v4

    .line 3156
    :cond_26
    :try_start_26
    new-instance v4, Ljava/lang/OutOfMemoryError;

    const-string v5, "Required array size too large"

    invoke-direct {v4, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .end local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    throw v4
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3152
    .end local v2    # "size":J
    .restart local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "path":Ljava/nio/file/Path;
    :catchall_2e
    move-exception v2

    if-eqz v1, :cond_39

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local p0    # "path":Ljava/nio/file/Path;
    :cond_39
    :goto_39
    throw v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .restart local p0    # "path":Ljava/nio/file/Path;
    :catchall_3a
    move-exception v1

    if-eqz v0, :cond_45

    :try_start_3d
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v1
.end method

.method public static whitelist test-api readAllLines(Ljava/nio/file/Path;)Ljava/util/List;
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3242
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3202
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 3203
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1c

    .line 3206
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 3207
    nop

    .line 3210
    .end local v2    # "line":Ljava/lang/String;
    nop

    .line 3211
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3210
    :cond_16
    return-object v1

    .line 3208
    .restart local v2    # "line":Ljava/lang/String;
    :cond_17
    :try_start_17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    .line 3209
    nop

    .end local v2    # "line":Ljava/lang/String;
    goto :goto_9

    .line 3202
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw v1
.end method

.method public static varargs whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1737
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "attributes"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1964
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 2
    .param p0, "link"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1432
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1805
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V

    .line 1806
    return-object p0
.end method

.method public static whitelist test-api setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2305
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 2306
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 2307
    return-object p0
.end method

.method public static whitelist test-api setOwner(Ljava/nio/file/Path;Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2123
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 2124
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    .line 2125
    .local v0, "view":Ljava/nio/file/attribute/FileOwnerAttributeView;
    if-eqz v0, :cond_11

    .line 2127
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 2128
    return-object p0

    .line 2126
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static whitelist test-api setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2041
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 2042
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 2043
    .local v0, "view":Ljava/nio/file/attribute/PosixFileAttributeView;
    if-eqz v0, :cond_11

    .line 2045
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    .line 2046
    return-object p0

    .line 2044
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static whitelist test-api size(Ljava/nio/file/Path;)J
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2332
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs whitelist test-api walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .registers 6
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p2, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "I[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3574
    new-instance v0, Ljava/nio/file/FileTreeIterator;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/file/FileTreeIterator;-><init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V

    .line 3576
    .local v0, "iterator":Ljava/nio/file/FileTreeIterator;
    const/4 v1, 0x1

    :try_start_6
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3577
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/nio/file/Files$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljava/nio/file/Files$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/FileTreeIterator;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    new-instance v2, Ljava/nio/file/Files$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/nio/file/Files$$ExternalSyntheticLambda4;-><init>()V

    .line 3578
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_26} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_26} :catch_27

    .line 3576
    return-object v1

    .line 3579
    :catch_27
    move-exception v1

    .line 3580
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/nio/file/FileTreeIterator;->close()V

    .line 3581
    throw v1
.end method

.method public static varargs whitelist test-api walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .registers 3
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3625
    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "start"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2742
    .local p1, "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    const-class v0, Ljava/nio/file/FileVisitOption;

    .line 2743
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2742
    const v1, 0x7fffffff

    invoke-static {p0, v0, v1, p1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    .registers 9
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2661
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .local p3, "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    new-instance v0, Ljava/nio/file/FileTreeWalker;

    invoke-direct {v0, p1, p2}, Ljava/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    .line 2662
    .local v0, "walker":Ljava/nio/file/FileTreeWalker;
    :try_start_5
    invoke-virtual {v0, p0}, Ljava/nio/file/FileTreeWalker;->walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v1

    .line 2665
    .local v1, "ev":Ljava/nio/file/FileTreeWalker$Event;
    :cond_9
    sget-object v2, Ljava/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_96

    .line 2696
    new-instance v2, Ljava/lang/AssertionError;

    goto/16 :goto_85

    .line 2688
    :pswitch_1c
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/nio/file/FileVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v2

    .line 2691
    .local v2, "result":Ljava/nio/file/FileVisitResult;
    sget-object v3, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_66

    .line 2692
    sget-object v3, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    move-object v2, v3

    goto :goto_66

    .line 2677
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    :pswitch_30
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/nio/file/FileVisitor;->preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v2

    .line 2682
    .restart local v2    # "result":Ljava/nio/file/FileVisitResult;
    sget-object v3, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    if-eq v2, v3, :cond_44

    sget-object v3, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_66

    .line 2684
    :cond_44
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->pop()V

    goto :goto_66

    .line 2667
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    :pswitch_48
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v2

    .line 2668
    .local v2, "ioe":Ljava/io/IOException;
    if-nez v2, :cond_5d

    .line 2669
    nop

    .line 2670
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v3

    move-object v2, v3

    .local v3, "result":Ljava/nio/file/FileVisitResult;
    goto :goto_66

    .line 2672
    .end local v3    # "result":Ljava/nio/file/FileVisitResult;
    :cond_5d
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Ljava/nio/file/FileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v3

    .line 2674
    .restart local v3    # "result":Ljava/nio/file/FileVisitResult;
    move-object v2, v3

    .line 2699
    .end local v3    # "result":Ljava/nio/file/FileVisitResult;
    .local v2, "result":Ljava/nio/file/FileVisitResult;
    :cond_66
    :goto_66
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq v3, v4, :cond_7a

    .line 2700
    sget-object v3, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_73

    .line 2701
    goto :goto_81

    .line 2702
    :cond_73
    sget-object v3, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_7a

    .line 2703
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->skipRemainingSiblings()V

    .line 2706
    :cond_7a
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v3
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_8b

    move-object v1, v3

    .line 2707
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    if-nez v1, :cond_9

    .line 2708
    .end local v1    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    :goto_81
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->close()V

    .line 2710
    .end local v0    # "walker":Ljava/nio/file/FileTreeWalker;
    return-object p0

    .line 2696
    .restart local v0    # "walker":Ljava/nio/file/FileTreeWalker;
    .restart local v1    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    :goto_85
    :try_start_85
    const-string v3, "Should not get here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "walker":Ljava/nio/file/FileTreeWalker;
    .end local p0    # "start":Ljava/nio/file/Path;
    .end local p1    # "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .end local p2    # "maxDepth":I
    .end local p3    # "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    throw v2
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_8b

    .line 2661
    .end local v1    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .restart local v0    # "walker":Ljava/nio/file/FileTreeWalker;
    .restart local p0    # "start":Ljava/nio/file/Path;
    .restart local p1    # "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .restart local p2    # "maxDepth":I
    .restart local p3    # "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    :catchall_8b
    move-exception v1

    :try_start_8c
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw v1

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_48
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method

.method public static varargs whitelist test-api write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .registers 9
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3349
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 3351
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-static {p0, p3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3352
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3353
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3354
    .local v4, "line":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 3355
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_30

    .line 3356
    .end local v4    # "line":Ljava/lang/CharSequence;
    goto :goto_19

    .line 3357
    :cond_2c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 3358
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    return-object p0

    .line 3352
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_30
    move-exception v3

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw v3
.end method

.method public static varargs whitelist test-api write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3397
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0, p2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .registers 8
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "bytes"    # [B
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3290
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 3293
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_7
    array-length v1, p1

    .line 3294
    .local v1, "len":I
    move v2, v1

    .line 3295
    .local v2, "rem":I
    :goto_9
    if-lez v2, :cond_18

    .line 3296
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3297
    .local v3, "n":I
    sub-int v4, v1, v2

    invoke-virtual {v0, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1e

    .line 3298
    sub-int/2addr v2, v3

    .line 3299
    .end local v3    # "n":I
    goto :goto_9

    .line 3300
    .end local v1    # "len":I
    .end local v2    # "rem":I
    :cond_18
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3301
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_1d
    return-object p0

    .line 3292
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_1e
    move-exception v1

    if-eqz v0, :cond_29

    :try_start_21
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw v1
.end method
