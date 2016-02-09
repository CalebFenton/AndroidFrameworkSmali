.class public Landroid/content/pm/LimitedLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedLengthInputStream.java"


# instance fields
.field private final mEnd:J

.field private mOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 33
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 35
    if-nez p1, :cond_0

    #@7
    .line 36
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "in == null"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 39
    :cond_0
    cmp-long v0, p2, v2

    #@12
    if-gez v0, :cond_1

    #@14
    .line 40
    new-instance v0, Ljava/io/IOException;

    #@16
    const-string/jumbo v1, "offset < 0"

    #@19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 43
    :cond_1
    cmp-long v0, p4, v2

    #@1f
    if-gez v0, :cond_2

    #@21
    .line 44
    new-instance v0, Ljava/io/IOException;

    #@23
    const-string/jumbo v1, "length < 0"

    #@26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 47
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    #@2f
    sub-long/2addr v0, p2

    #@30
    cmp-long v0, p4, v0

    #@32
    if-lez v0, :cond_3

    #@34
    .line 48
    new-instance v0, Ljava/io/IOException;

    #@36
    const-string/jumbo v1, "offset + length > Long.MAX_VALUE"

    #@39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 51
    :cond_3
    add-long v0, p2, p4

    #@3f
    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    #@41
    .line 53
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/LimitedLengthInputStream;->skip(J)J

    #@44
    .line 54
    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@46
    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 59
    :try_start_0
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@3
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 60
    const/4 v0, -0x1

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    .line 63
    :cond_0
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@e
    const-wide/16 v2, 0x1

    #@10
    add-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@13
    .line 64
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v0

    #@17
    monitor-exit p0

    #@18
    return v0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/LimitedLengthInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@2
    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    #@4
    cmp-long v2, v2, v4

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 70
    const/4 v2, -0x1

    #@9
    return v2

    #@a
    .line 73
    :cond_0
    array-length v0, p1

    #@b
    .line 74
    .local v0, "arrayLength":I
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@e
    .line 76
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@10
    int-to-long v4, p3

    #@11
    const-wide v6, 0x7fffffffffffffffL

    #@16
    sub-long v4, v6, v4

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-lez v2, :cond_1

    #@1c
    .line 77
    new-instance v2, Ljava/io/IOException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "offset out of bounds: "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@2c
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, " + "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 80
    :cond_1
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@45
    int-to-long v4, p3

    #@46
    add-long/2addr v2, v4

    #@47
    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    #@49
    cmp-long v2, v2, v4

    #@4b
    if-lez v2, :cond_2

    #@4d
    .line 81
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    #@4f
    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@51
    sub-long/2addr v2, v4

    #@52
    long-to-int p3, v2

    #@53
    .line 84
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@56
    move-result v1

    #@57
    .line 85
    .local v1, "numRead":I
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@59
    int-to-long v4, v1

    #@5a
    add-long/2addr v2, v4

    #@5b
    iput-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    #@5d
    .line 87
    return v1
.end method
