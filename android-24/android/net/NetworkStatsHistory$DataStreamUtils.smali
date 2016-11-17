.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 673
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v1

    #@4
    .line 674
    .local v1, "size":I
    if-gez v1, :cond_0

    #@6
    new-instance v3, Ljava/net/ProtocolException;

    #@8
    const-string/jumbo v4, "negative array size"

    #@b
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 675
    :cond_0
    new-array v2, v1, [J

    #@11
    .line 676
    .local v2, "values":[J
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@13
    if-ge v0, v3, :cond_1

    #@15
    .line 677
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    #@18
    move-result-wide v4

    #@19
    aput-wide v4, v2, v0

    #@1b
    .line 676
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 679
    :cond_1
    return-object v2
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    const/4 v1, 0x0

    #@1
    .line 687
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    #@3
    .line 688
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    #@5
    if-ge v1, v4, :cond_1

    #@7
    .line 689
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    #@a
    move-result v0

    #@b
    .line 690
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    #@d
    int-to-long v4, v4

    #@e
    shl-long/2addr v4, v1

    #@f
    or-long/2addr v2, v4

    #@10
    .line 691
    and-int/lit16 v4, v0, 0x80

    #@12
    if-nez v4, :cond_0

    #@14
    .line 692
    return-wide v2

    #@15
    .line 693
    :cond_0
    add-int/lit8 v1, v1, 0x7

    #@17
    goto :goto_0

    #@18
    .line 695
    .end local v0    # "b":B
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    #@1a
    const-string/jumbo v5, "malformed long"

    #@1d
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v1

    #@4
    .line 715
    .local v1, "size":I
    const/4 v3, -0x1

    #@5
    if-ne v1, v3, :cond_0

    #@7
    const/4 v3, 0x0

    #@8
    return-object v3

    #@9
    .line 716
    :cond_0
    if-gez v1, :cond_1

    #@b
    new-instance v3, Ljava/net/ProtocolException;

    #@d
    const-string/jumbo v4, "negative array size"

    #@10
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 717
    :cond_1
    new-array v2, v1, [J

    #@16
    .line 718
    .local v2, "values":[J
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@18
    if-ge v0, v3, :cond_2

    #@1a
    .line 719
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    #@1d
    move-result-wide v4

    #@1e
    aput-wide v4, v2, v0

    #@20
    .line 718
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 721
    :cond_2
    return-object v2
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    :goto_0
    const-wide/16 v0, -0x80

    #@2
    and-long/2addr v0, p1

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 704
    long-to-int v0, p1

    #@a
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@d
    .line 705
    return-void

    #@e
    .line 707
    :cond_0
    long-to-int v0, p1

    #@f
    and-int/lit8 v0, v0, 0x7f

    #@11
    or-int/lit16 v0, v0, 0x80

    #@13
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@16
    .line 708
    const/4 v0, 0x7

    #@17
    ushr-long/2addr p1, v0

    #@18
    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .locals 4
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "values"    # [J
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    if-nez p1, :cond_0

    #@2
    .line 727
    const/4 v1, -0x1

    #@3
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@6
    .line 728
    return-void

    #@7
    .line 730
    :cond_0
    array-length v1, p1

    #@8
    if-le p2, v1, :cond_1

    #@a
    .line 731
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "size larger than length"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 733
    :cond_1
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@16
    .line 734
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    #@19
    .line 735
    aget-wide v2, p1, v0

    #@1b
    invoke-static {p0, v2, v3}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    #@1e
    .line 734
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 725
    :cond_2
    return-void
.end method
