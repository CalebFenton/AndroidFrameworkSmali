.class Lsun/nio/fs/UnixMountEntry;
.super Ljava/lang/Object;
.source "UnixMountEntry.java"


# instance fields
.field private blacklist dev:J

.field private blacklist dir:[B

.field private blacklist fstype:[B

.field private volatile blacklist fstypeAsString:Ljava/lang/String;

.field private blacklist name:[B

.field private volatile blacklist optionsAsString:Ljava/lang/String;

.field private blacklist opts:[B


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method blacklist dev()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lsun/nio/fs/UnixMountEntry;->dev:J

    return-wide v0
.end method

.method blacklist dir()[B
    .registers 2

    .line 56
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->dir:[B

    return-object v0
.end method

.method blacklist fstype()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 51
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstype:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    .line 52
    :cond_c
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    return-object v0
.end method

.method blacklist hasOption(Ljava/lang/String;)Z
    .registers 8
    .param p1, "requested"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 68
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->opts:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    .line 69
    :cond_c
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lsun/nio/fs/Util;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    .line 70
    .local v4, "opt":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 71
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v4    # "opt":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 73
    :cond_26
    return v2
.end method

.method blacklist isIgnored()Z
    .registers 2

    .line 78
    const-string v0, "ignore"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method blacklist isReadOnly()Z
    .registers 2

    .line 83
    const-string v0, "ro"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method blacklist name()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->name:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
