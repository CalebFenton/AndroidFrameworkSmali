.class interface abstract Landroid/util/apk/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# direct methods
.method public static blacklist create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pos"    # J
    .param p3, "size"    # J

    .line 51
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalFileFd(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    new-instance v1, Landroid/util/apk/ReadFileDataSource;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "pos":J
    .end local p3    # "size":J
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "pos":J
    .local v5, "size":J
    invoke-direct/range {v1 .. v6}, Landroid/util/apk/ReadFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-object v1

    .line 57
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "pos":J
    .end local v5    # "size":J
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "pos":J
    .restart local p3    # "size":J
    :cond_f
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "pos":J
    .end local p3    # "size":J
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "pos":J
    .restart local v5    # "size":J
    move-wide v6, v5

    move-wide v4, v3

    move-object v3, v2

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "size":J
    .local v3, "fd":Ljava/io/FileDescriptor;
    .local v4, "pos":J
    .local v6, "size":J
    new-instance v2, Landroid/util/apk/MemoryMappedFileDataSource;

    invoke-direct/range {v2 .. v7}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    move-object p0, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    .end local v4    # "pos":J
    .end local v6    # "size":J
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .local v3, "pos":J
    .restart local v5    # "size":J
    return-object p0
.end method


# virtual methods
.method public abstract blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation
.end method

.method public abstract blacklist size()J
.end method
