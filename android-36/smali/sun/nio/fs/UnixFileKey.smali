.class Lsun/nio/fs/UnixFileKey;
.super Ljava/lang/Object;
.source "UnixFileKey.java"


# instance fields
.field private final blacklist st_dev:J

.field private final blacklist st_ino:J


# direct methods
.method constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "st_dev"    # J
    .param p3, "st_ino"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    .line 38
    iput-wide p3, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 50
    return v0

    .line 51
    :cond_4
    instance-of v1, p1, Lsun/nio/fs/UnixFileKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 52
    return v2

    .line 53
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixFileKey;

    .line 54
    .local v1, "other":Lsun/nio/fs/UnixFileKey;
    iget-wide v3, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iget-wide v5, v1, Lsun/nio/fs/UnixFileKey;->st_dev:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    iget-wide v3, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    iget-wide v5, v1, Lsun/nio/fs/UnixFileKey;->st_ino:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 43
    iget-wide v0, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    iget-wide v5, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    ushr-long v3, v5, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "(dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string v2, ",ino="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
