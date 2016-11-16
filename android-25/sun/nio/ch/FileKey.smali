.class public Lsun/nio/ch/FileKey;
.super Ljava/lang/Object;
.source "FileKey.java"


# instance fields
.field private st_dev:J

.field private st_ino:J


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 42
    new-instance v0, Lsun/nio/ch/FileKey;

    #@2
    invoke-direct {v0}, Lsun/nio/ch/FileKey;-><init>()V

    #@5
    .line 44
    .local v0, "fk":Lsun/nio/ch/FileKey;
    :try_start_0
    invoke-direct {v0, p0}, Lsun/nio/ch/FileKey;->init(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 48
    return-object v0

    #@9
    .line 45
    :catch_0
    move-exception v1

    #@a
    .line 46
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    #@c
    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v2
.end method

.method private native init(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 57
    if-ne p1, p0, :cond_0

    #@4
    .line 58
    return v7

    #@5
    .line 59
    :cond_0
    instance-of v1, p1, Lsun/nio/ch/FileKey;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 60
    return v6

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 61
    check-cast v0, Lsun/nio/ch/FileKey;

    #@d
    .line 62
    .local v0, "other":Lsun/nio/ch/FileKey;
    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_dev:J

    #@f
    iget-wide v4, v0, Lsun/nio/ch/FileKey;->st_dev:J

    #@11
    cmp-long v1, v2, v4

    #@13
    if-nez v1, :cond_2

    #@15
    .line 63
    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_ino:J

    #@17
    iget-wide v4, v0, Lsun/nio/ch/FileKey;->st_ino:J

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 64
    :cond_2
    return v6

    #@1e
    .line 66
    :cond_3
    return v7
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 52
    iget-wide v0, p0, Lsun/nio/ch/FileKey;->st_dev:J

    #@4
    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_dev:J

    #@6
    ushr-long/2addr v2, v6

    #@7
    xor-long/2addr v0, v2

    #@8
    long-to-int v0, v0

    #@9
    .line 53
    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_ino:J

    #@b
    iget-wide v4, p0, Lsun/nio/ch/FileKey;->st_ino:J

    #@d
    ushr-long/2addr v4, v6

    #@e
    xor-long/2addr v2, v4

    #@f
    long-to-int v1, v2

    #@10
    .line 52
    add-int/2addr v0, v1

    #@11
    return v0
.end method
