.class Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderAwarenessDataInputStream"
.end annotation


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mLength:J

.field private mPosition:J


# direct methods
.method static synthetic -get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2565
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    sput-object v0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    .line 2566
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    sput-object v0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@8
    .line 2564
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 2573
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@3
    .line 2568
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5
    iput-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@7
    .line 2574
    array-length v0, p1

    #@8
    int-to-long v0, v0

    #@9
    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    .line 2575
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@f
    .line 2572
    return-void
.end method


# virtual methods
.method public peek()J
    .locals 2

    #@0
    .prologue
    .line 2591
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    return-wide v0
.end method

.method public readByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2605
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    const-wide/16 v4, 0x1

    #@4
    add-long/2addr v2, v4

    #@5
    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@7
    .line 2606
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@9
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    cmp-long v1, v2, v4

    #@d
    if-lez v1, :cond_0

    #@f
    .line 2607
    new-instance v1, Ljava/io/EOFException;

    #@11
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v1

    #@15
    .line 2609
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@18
    move-result v0

    #@19
    .line 2610
    .local v0, "ch":I
    if-gez v0, :cond_1

    #@1b
    .line 2611
    new-instance v1, Ljava/io/EOFException;

    #@1d
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@20
    throw v1

    #@21
    .line 2613
    :cond_1
    int-to-byte v1, v0

    #@22
    return v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2716
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2712
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readFully([B)V
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2595
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    array-length v2, p1

    #@3
    int-to-long v2, v2

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@7
    .line 2596
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@9
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    cmp-long v0, v0, v2

    #@d
    if-lez v0, :cond_0

    #@f
    .line 2597
    new-instance v0, Ljava/io/EOFException;

    #@11
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v0

    #@15
    .line 2599
    :cond_0
    array-length v0, p1

    #@16
    const/4 v1, 0x0

    #@17
    invoke-super {p0, p1, v1, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    #@1a
    move-result v0

    #@1b
    array-length v1, p1

    #@1c
    if-eq v0, v1, :cond_1

    #@1e
    .line 2600
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Couldn\'t read up to the length of buffer"

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 2594
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2635
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    const-wide/16 v6, 0x4

    #@4
    add-long/2addr v4, v6

    #@5
    iput-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@7
    .line 2636
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@9
    iget-wide v6, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    cmp-long v4, v4, v6

    #@d
    if-lez v4, :cond_0

    #@f
    .line 2637
    new-instance v4, Ljava/io/EOFException;

    #@11
    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v4

    #@15
    .line 2639
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@18
    move-result v0

    #@19
    .line 2640
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@1c
    move-result v1

    #@1d
    .line 2641
    .local v1, "ch2":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@20
    move-result v2

    #@21
    .line 2642
    .local v2, "ch3":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@24
    move-result v3

    #@25
    .line 2643
    .local v3, "ch4":I
    or-int v4, v0, v1

    #@27
    or-int/2addr v4, v2

    #@28
    or-int/2addr v4, v3

    #@29
    if-gez v4, :cond_1

    #@2b
    .line 2644
    new-instance v4, Ljava/io/EOFException;

    #@2d
    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    #@30
    throw v4

    #@31
    .line 2646
    :cond_1
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@33
    sget-object v5, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@35
    if-ne v4, v5, :cond_2

    #@37
    .line 2647
    shl-int/lit8 v4, v3, 0x18

    #@39
    shl-int/lit8 v5, v2, 0x10

    #@3b
    add-int/2addr v4, v5

    #@3c
    shl-int/lit8 v5, v1, 0x8

    #@3e
    add-int/2addr v4, v5

    #@3f
    add-int/2addr v4, v0

    #@40
    return v4

    #@41
    .line 2648
    :cond_2
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@43
    sget-object v5, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@45
    if-ne v4, v5, :cond_3

    #@47
    .line 2649
    shl-int/lit8 v4, v0, 0x18

    #@49
    shl-int/lit8 v5, v1, 0x10

    #@4b
    add-int/2addr v4, v5

    #@4c
    shl-int/lit8 v5, v2, 0x8

    #@4e
    add-int/2addr v4, v5

    #@4f
    add-int/2addr v4, v3

    #@50
    return v4

    #@51
    .line 2651
    :cond_3
    new-instance v4, Ljava/io/IOException;

    #@53
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, "Invalid byte order: "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    iget-object v6, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v4
.end method

.method public readLong()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2684
    iget-wide v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    const-wide/16 v10, 0x8

    #@4
    add-long/2addr v8, v10

    #@5
    iput-wide v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@7
    .line 2685
    iget-wide v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@9
    iget-wide v10, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    cmp-long v8, v8, v10

    #@d
    if-lez v8, :cond_0

    #@f
    .line 2686
    new-instance v8, Ljava/io/EOFException;

    #@11
    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v8

    #@15
    .line 2688
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@18
    move-result v0

    #@19
    .line 2689
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@1c
    move-result v1

    #@1d
    .line 2690
    .local v1, "ch2":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@20
    move-result v2

    #@21
    .line 2691
    .local v2, "ch3":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@24
    move-result v3

    #@25
    .line 2692
    .local v3, "ch4":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@28
    move-result v4

    #@29
    .line 2693
    .local v4, "ch5":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@2c
    move-result v5

    #@2d
    .line 2694
    .local v5, "ch6":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@30
    move-result v6

    #@31
    .line 2695
    .local v6, "ch7":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@34
    move-result v7

    #@35
    .line 2696
    .local v7, "ch8":I
    or-int v8, v0, v1

    #@37
    or-int/2addr v8, v2

    #@38
    or-int/2addr v8, v3

    #@39
    or-int/2addr v8, v4

    #@3a
    or-int/2addr v8, v5

    #@3b
    or-int/2addr v8, v6

    #@3c
    or-int/2addr v8, v7

    #@3d
    if-gez v8, :cond_1

    #@3f
    .line 2697
    new-instance v8, Ljava/io/EOFException;

    #@41
    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    #@44
    throw v8

    #@45
    .line 2699
    :cond_1
    iget-object v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@47
    sget-object v9, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@49
    if-ne v8, v9, :cond_2

    #@4b
    .line 2700
    int-to-long v8, v7

    #@4c
    const/16 v10, 0x38

    #@4e
    shl-long/2addr v8, v10

    #@4f
    int-to-long v10, v6

    #@50
    const/16 v12, 0x30

    #@52
    shl-long/2addr v10, v12

    #@53
    add-long/2addr v8, v10

    #@54
    int-to-long v10, v5

    #@55
    const/16 v12, 0x28

    #@57
    shl-long/2addr v10, v12

    #@58
    add-long/2addr v8, v10

    #@59
    .line 2701
    int-to-long v10, v4

    #@5a
    const/16 v12, 0x20

    #@5c
    shl-long/2addr v10, v12

    #@5d
    .line 2700
    add-long/2addr v8, v10

    #@5e
    .line 2701
    int-to-long v10, v3

    #@5f
    const/16 v12, 0x18

    #@61
    shl-long/2addr v10, v12

    #@62
    .line 2700
    add-long/2addr v8, v10

    #@63
    .line 2701
    int-to-long v10, v2

    #@64
    const/16 v12, 0x10

    #@66
    shl-long/2addr v10, v12

    #@67
    .line 2700
    add-long/2addr v8, v10

    #@68
    .line 2702
    int-to-long v10, v1

    #@69
    const/16 v12, 0x8

    #@6b
    shl-long/2addr v10, v12

    #@6c
    .line 2700
    add-long/2addr v8, v10

    #@6d
    .line 2702
    int-to-long v10, v0

    #@6e
    .line 2700
    add-long/2addr v8, v10

    #@6f
    return-wide v8

    #@70
    .line 2703
    :cond_2
    iget-object v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@72
    sget-object v9, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@74
    if-ne v8, v9, :cond_3

    #@76
    .line 2704
    int-to-long v8, v0

    #@77
    const/16 v10, 0x38

    #@79
    shl-long/2addr v8, v10

    #@7a
    int-to-long v10, v1

    #@7b
    const/16 v12, 0x30

    #@7d
    shl-long/2addr v10, v12

    #@7e
    add-long/2addr v8, v10

    #@7f
    int-to-long v10, v2

    #@80
    const/16 v12, 0x28

    #@82
    shl-long/2addr v10, v12

    #@83
    add-long/2addr v8, v10

    #@84
    .line 2705
    int-to-long v10, v3

    #@85
    const/16 v12, 0x20

    #@87
    shl-long/2addr v10, v12

    #@88
    .line 2704
    add-long/2addr v8, v10

    #@89
    .line 2705
    int-to-long v10, v4

    #@8a
    const/16 v12, 0x18

    #@8c
    shl-long/2addr v10, v12

    #@8d
    .line 2704
    add-long/2addr v8, v10

    #@8e
    .line 2705
    int-to-long v10, v5

    #@8f
    const/16 v12, 0x10

    #@91
    shl-long/2addr v10, v12

    #@92
    .line 2704
    add-long/2addr v8, v10

    #@93
    .line 2706
    int-to-long v10, v6

    #@94
    const/16 v12, 0x8

    #@96
    shl-long/2addr v10, v12

    #@97
    .line 2704
    add-long/2addr v8, v10

    #@98
    .line 2706
    int-to-long v10, v7

    #@99
    .line 2704
    add-long/2addr v8, v10

    #@9a
    return-wide v8

    #@9b
    .line 2708
    :cond_3
    new-instance v8, Ljava/io/IOException;

    #@9d
    new-instance v9, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v10, "Invalid byte order: "

    #@a5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    iget-object v10, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@ab
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v9

    #@b3
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v8
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2617
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    const-wide/16 v4, 0x2

    #@4
    add-long/2addr v2, v4

    #@5
    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@7
    .line 2618
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@9
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    cmp-long v2, v2, v4

    #@d
    if-lez v2, :cond_0

    #@f
    .line 2619
    new-instance v2, Ljava/io/EOFException;

    #@11
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v2

    #@15
    .line 2621
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@18
    move-result v0

    #@19
    .line 2622
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@1c
    move-result v1

    #@1d
    .line 2623
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@1f
    if-gez v2, :cond_1

    #@21
    .line 2624
    new-instance v2, Ljava/io/EOFException;

    #@23
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@26
    throw v2

    #@27
    .line 2626
    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@29
    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 2627
    shl-int/lit8 v2, v1, 0x8

    #@2f
    add-int/2addr v2, v0

    #@30
    int-to-short v2, v2

    #@31
    return v2

    #@32
    .line 2628
    :cond_2
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@34
    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@36
    if-ne v2, v3, :cond_3

    #@38
    .line 2629
    shl-int/lit8 v2, v0, 0x8

    #@3a
    add-int/2addr v2, v1

    #@3b
    int-to-short v2, v2

    #@3c
    return v2

    #@3d
    .line 2631
    :cond_3
    new-instance v2, Ljava/io/IOException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Invalid byte order: "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2680
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const-wide v2, 0xffffffffL

    #@a
    and-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2662
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@2
    const-wide/16 v4, 0x2

    #@4
    add-long/2addr v2, v4

    #@5
    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@7
    .line 2663
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@9
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@b
    cmp-long v2, v2, v4

    #@d
    if-lez v2, :cond_0

    #@f
    .line 2664
    new-instance v2, Ljava/io/EOFException;

    #@11
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v2

    #@15
    .line 2666
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@18
    move-result v0

    #@19
    .line 2667
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@1c
    move-result v1

    #@1d
    .line 2668
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@1f
    if-gez v2, :cond_1

    #@21
    .line 2669
    new-instance v2, Ljava/io/EOFException;

    #@23
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@26
    throw v2

    #@27
    .line 2671
    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@29
    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 2672
    shl-int/lit8 v2, v1, 0x8

    #@2f
    add-int/2addr v2, v0

    #@30
    return v2

    #@31
    .line 2673
    :cond_2
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@33
    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@35
    if-ne v2, v3, :cond_3

    #@37
    .line 2674
    shl-int/lit8 v2, v0, 0x8

    #@39
    add-int/2addr v2, v1

    #@3a
    return v2

    #@3b
    .line 2676
    :cond_3
    new-instance v2, Ljava/io/IOException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Invalid byte order: "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@56
    throw v2
.end method

.method public seek(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2583
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@4
    .line 2584
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->reset()V

    #@7
    .line 2585
    invoke-virtual {p0, p1, p2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->skip(J)J

    #@a
    move-result-wide v0

    #@b
    cmp-long v0, v0, p1

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 2586
    new-instance v0, Ljava/io/IOException;

    #@11
    const-string/jumbo v1, "Couldn\'t seek up to the byteCount"

    #@14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 2582
    :cond_0
    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 2579
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@2
    .line 2578
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "byteCount"    # J

    #@0
    .prologue
    .line 2656
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    #@2
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@4
    sub-long/2addr v2, v4

    #@5
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@8
    move-result-wide v2

    #@9
    invoke-super {p0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    #@c
    move-result-wide v0

    #@d
    .line 2657
    .local v0, "skipped":J
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@f
    add-long/2addr v2, v0

    #@10
    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    #@12
    .line 2658
    return-wide v0
.end method
