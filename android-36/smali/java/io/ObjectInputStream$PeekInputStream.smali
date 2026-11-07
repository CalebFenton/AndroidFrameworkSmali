.class Ljava/io/ObjectInputStream$PeekInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekInputStream"
.end annotation


# instance fields
.field private final greylist-max-o in:Ljava/io/InputStream;

.field private greylist-max-o peekb:I

.field private blacklist totalBytesRead:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 2642
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2635
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2637
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2643
    iput-object p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    .line 2644
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2716
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2720
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2721
    return-void
.end method

.method public blacklist getBytesRead()J
    .registers 3

    .line 2724
    iget-wide v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method greylist-max-o peek()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2651
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v0, :cond_7

    .line 2652
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    return v0

    .line 2654
    :cond_7
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2655
    iget-wide v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v2, :cond_18

    const-wide/16 v2, 0x1

    goto :goto_1a

    :cond_18
    const-wide/16 v2, 0x0

    :goto_1a
    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2656
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    return v0
.end method

.method public whitelist test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2660
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v0, :cond_a

    .line 2661
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2662
    .local v0, "v":I
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2663
    return v0

    .line 2665
    .end local v0    # "v":I
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2666
    .local v0, "nbytes":I
    iget-wide v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz v0, :cond_17

    const-wide/16 v3, 0x1

    goto :goto_19

    :cond_17
    const-wide/16 v3, 0x0

    :goto_19
    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2667
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2673
    if-nez p3, :cond_4

    .line 2674
    const/4 v0, 0x0

    return v0

    .line 2675
    :cond_4
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    const-wide/16 v1, 0x0

    if-gez v0, :cond_19

    .line 2676
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2677
    .local v0, "nbytes":I
    iget-wide v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz v0, :cond_15

    int-to-long v1, v0

    :cond_15
    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2678
    return v0

    .line 2680
    .end local v0    # "nbytes":I
    :cond_19
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    iget v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 2681
    const/4 p2, -0x1

    add-int/2addr p3, p2

    .line 2682
    iput p2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2683
    iget-object p2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    .line 2684
    .local p2, "nbytes":I
    iget-wide v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz p2, :cond_2f

    int-to-long v1, p2

    :cond_2f
    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2685
    if-ltz p2, :cond_37

    add-int/lit8 v1, p2, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x1

    :goto_38
    return v1
.end method

.method greylist-max-o readFully([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2690
    const/4 v0, 0x0

    .line 2691
    .local v0, "n":I
    :goto_1
    if-ge v0, p3, :cond_15

    .line 2692
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    .line 2693
    .local v1, "count":I
    if-ltz v1, :cond_f

    .line 2696
    add-int/2addr v0, v1

    .line 2697
    .end local v1    # "count":I
    goto :goto_1

    .line 2694
    .restart local v1    # "count":I
    :cond_f
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2698
    .end local v1    # "count":I
    :cond_15
    return-void
.end method

.method public whitelist test-api skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2701
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 2702
    return-wide v0

    .line 2704
    :cond_7
    const/4 v0, 0x0

    .line 2705
    .local v0, "skipped":I
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_14

    .line 2706
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2707
    add-int/lit8 v0, v0, 0x1

    .line 2708
    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    .line 2710
    :cond_14
    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 2711
    .end local p1    # "n":J
    .local v1, "n":J
    iget-wide p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2712
    return-wide v1
.end method
