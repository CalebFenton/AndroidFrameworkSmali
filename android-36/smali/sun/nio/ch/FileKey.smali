.class public Lsun/nio/ch/FileKey;
.super Ljava/lang/Object;
.source "FileKey.java"


# instance fields
.field private blacklist st_dev:J

.field private blacklist st_ino:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lsun/nio/ch/FileKey;

    invoke-direct {v0}, Lsun/nio/ch/FileKey;-><init>()V

    .line 43
    .local v0, "fk":Lsun/nio/ch/FileKey;
    invoke-direct {v0, p0}, Lsun/nio/ch/FileKey;->init(Ljava/io/FileDescriptor;)V

    .line 44
    return-object v0
.end method

.method private native blacklist init(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 54
    return v0

    .line 55
    :cond_4
    instance-of v1, p1, Lsun/nio/ch/FileKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 56
    return v2

    .line 57
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/FileKey;

    .line 58
    .local v1, "other":Lsun/nio/ch/FileKey;
    iget-wide v3, p0, Lsun/nio/ch/FileKey;->st_dev:J

    iget-wide v5, v1, Lsun/nio/ch/FileKey;->st_dev:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    iget-wide v3, p0, Lsun/nio/ch/FileKey;->st_ino:J

    iget-wide v5, v1, Lsun/nio/ch/FileKey;->st_ino:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    goto :goto_1f

    .line 62
    :cond_1e
    return v0

    .line 60
    :cond_1f
    :goto_1f
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 48
    iget-wide v0, p0, Lsun/nio/ch/FileKey;->st_dev:J

    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_dev:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Lsun/nio/ch/FileKey;->st_ino:J

    iget-wide v5, p0, Lsun/nio/ch/FileKey;->st_ino:J

    ushr-long v3, v5, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
