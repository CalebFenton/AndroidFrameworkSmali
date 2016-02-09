.class final Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    const/16 v11, 0x8

    #@2
    const/16 v13, 0x20

    #@4
    const/4 v12, 0x4

    #@5
    const/4 v10, 0x1

    #@6
    const/4 v6, 0x0

    #@7
    .line 707
    const/16 v5, 0xa

    #@9
    new-array v5, v5, [Ljava/lang/String;

    #@b
    .line 708
    const-string/jumbo v7, "DATA"

    #@e
    aput-object v7, v5, v6

    #@10
    .line 709
    const-string/jumbo v7, "HEADERS"

    #@13
    aput-object v7, v5, v10

    #@15
    .line 710
    const-string/jumbo v7, "PRIORITY"

    #@18
    const/4 v8, 0x2

    #@19
    aput-object v7, v5, v8

    #@1b
    .line 711
    const-string/jumbo v7, "RST_STREAM"

    #@1e
    const/4 v8, 0x3

    #@1f
    aput-object v7, v5, v8

    #@21
    .line 712
    const-string/jumbo v7, "SETTINGS"

    #@24
    aput-object v7, v5, v12

    #@26
    .line 713
    const-string/jumbo v7, "PUSH_PROMISE"

    #@29
    const/4 v8, 0x5

    #@2a
    aput-object v7, v5, v8

    #@2c
    .line 714
    const-string/jumbo v7, "PING"

    #@2f
    const/4 v8, 0x6

    #@30
    aput-object v7, v5, v8

    #@32
    .line 715
    const-string/jumbo v7, "GOAWAY"

    #@35
    const/4 v8, 0x7

    #@36
    aput-object v7, v5, v8

    #@38
    .line 716
    const-string/jumbo v7, "WINDOW_UPDATE"

    #@3b
    aput-object v7, v5, v11

    #@3d
    .line 717
    const-string/jumbo v7, "CONTINUATION"

    #@40
    const/16 v8, 0x9

    #@42
    aput-object v7, v5, v8

    #@44
    .line 707
    sput-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    #@46
    .line 724
    const/16 v5, 0x40

    #@48
    new-array v5, v5, [Ljava/lang/String;

    #@4a
    sput-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@4c
    .line 725
    const/16 v5, 0x100

    #@4e
    new-array v5, v5, [Ljava/lang/String;

    #@50
    sput-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@52
    .line 728
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@55
    array-length v5, v5

    #@56
    if-ge v2, v5, :cond_0

    #@58
    .line 729
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@5a
    const-string/jumbo v7, "%8s"

    #@5d
    new-array v8, v10, [Ljava/lang/Object;

    #@5f
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    aput-object v9, v8, v6

    #@65
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    const/16 v8, 0x30

    #@6b
    invoke-virtual {v7, v13, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    aput-object v7, v5, v2

    #@71
    .line 728
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_0

    #@74
    .line 732
    :cond_0
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@76
    const-string/jumbo v7, ""

    #@79
    aput-object v7, v5, v6

    #@7b
    .line 733
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@7d
    const-string/jumbo v7, "END_STREAM"

    #@80
    aput-object v7, v5, v10

    #@82
    .line 735
    new-array v4, v10, [I

    #@84
    aput v10, v4, v6

    #@86
    .line 737
    .local v4, "prefixFlags":[I
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@88
    const-string/jumbo v7, "PADDED"

    #@8b
    aput-object v7, v5, v11

    #@8d
    .line 738
    array-length v7, v4

    #@8e
    move v5, v6

    #@8f
    :goto_1
    if-ge v5, v7, :cond_1

    #@91
    aget v3, v4, v5

    #@93
    .line 739
    .local v3, "prefixFlag":I
    sget-object v8, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@95
    or-int/lit8 v9, v3, 0x8

    #@97
    new-instance v10, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    sget-object v11, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@9e
    aget-object v11, v11, v3

    #@a0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v10

    #@a4
    const-string/jumbo v11, "|PADDED"

    #@a7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v10

    #@ab
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v10

    #@af
    aput-object v10, v8, v9

    #@b1
    .line 738
    add-int/lit8 v5, v5, 0x1

    #@b3
    goto :goto_1

    #@b4
    .line 742
    .end local v3    # "prefixFlag":I
    :cond_1
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@b6
    const-string/jumbo v7, "END_HEADERS"

    #@b9
    aput-object v7, v5, v12

    #@bb
    .line 743
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@bd
    const-string/jumbo v7, "PRIORITY"

    #@c0
    aput-object v7, v5, v13

    #@c2
    .line 744
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@c4
    const-string/jumbo v7, "END_HEADERS|PRIORITY"

    #@c7
    const/16 v8, 0x24

    #@c9
    aput-object v7, v5, v8

    #@cb
    .line 746
    const/16 v5, 0x24

    #@cd
    filled-new-array {v12, v13, v5}, [I

    #@d0
    move-result-object v1

    #@d1
    .line 748
    .local v1, "frameFlags":[I
    array-length v8, v1

    #@d2
    move v7, v6

    #@d3
    :goto_2
    if-ge v7, v8, :cond_3

    #@d5
    aget v0, v1, v7

    #@d7
    .line 749
    .local v0, "frameFlag":I
    array-length v9, v4

    #@d8
    move v5, v6

    #@d9
    :goto_3
    if-ge v5, v9, :cond_2

    #@db
    aget v3, v4, v5

    #@dd
    .line 750
    .restart local v3    # "prefixFlag":I
    sget-object v10, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@df
    or-int v11, v3, v0

    #@e1
    new-instance v12, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    sget-object v13, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@e8
    aget-object v13, v13, v3

    #@ea
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v12

    #@ee
    const/16 v13, 0x7c

    #@f0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v12

    #@f4
    sget-object v13, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@f6
    aget-object v13, v13, v0

    #@f8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v12

    #@fc
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v12

    #@100
    aput-object v12, v10, v11

    #@102
    .line 751
    sget-object v10, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@104
    or-int v11, v3, v0

    #@106
    or-int/lit8 v11, v11, 0x8

    #@108
    .line 752
    new-instance v12, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    sget-object v13, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@10f
    aget-object v13, v13, v3

    #@111
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v12

    #@115
    const/16 v13, 0x7c

    #@117
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v12

    #@11b
    sget-object v13, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@11d
    aget-object v13, v13, v0

    #@11f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v12

    #@123
    const-string/jumbo v13, "|PADDED"

    #@126
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v12

    #@12a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v12

    #@12e
    .line 751
    aput-object v12, v10, v11

    #@130
    .line 749
    add-int/lit8 v5, v5, 0x1

    #@132
    goto :goto_3

    #@133
    .line 748
    .end local v3    # "prefixFlag":I
    :cond_2
    add-int/lit8 v5, v7, 0x1

    #@135
    move v7, v5

    #@136
    goto :goto_2

    #@137
    .line 756
    .end local v0    # "frameFlag":I
    :cond_3
    const/4 v2, 0x0

    #@138
    :goto_4
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@13a
    array-length v5, v5

    #@13b
    if-ge v2, v5, :cond_5

    #@13d
    .line 757
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@13f
    aget-object v5, v5, v2

    #@141
    if-nez v5, :cond_4

    #@143
    sget-object v5, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@145
    sget-object v6, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@147
    aget-object v6, v6, v2

    #@149
    aput-object v6, v5, v2

    #@14b
    .line 756
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@14d
    goto :goto_4

    #@14e
    .line 670
    :cond_5
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    #@0
    .prologue
    .line 685
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v1, ""

    #@5
    return-object v1

    #@6
    .line 686
    :cond_0
    packed-switch p0, :pswitch_data_0

    #@9
    .line 696
    :pswitch_0
    sget-object v1, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@b
    array-length v1, v1

    #@c
    if-ge p1, v1, :cond_2

    #@e
    sget-object v1, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    #@10
    aget-object v0, v1, p1

    #@12
    .line 698
    .local v0, "result":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x5

    #@13
    if-ne p0, v1, :cond_3

    #@15
    and-int/lit8 v1, p1, 0x4

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 699
    const-string/jumbo v1, "HEADERS"

    #@1c
    const-string/jumbo v2, "PUSH_PROMISE"

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 689
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    #@25
    if-ne p1, v1, :cond_1

    #@27
    const-string/jumbo v1, "ACK"

    #@2a
    :goto_1
    return-object v1

    #@2b
    :cond_1
    sget-object v1, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@2d
    aget-object v1, v1, p1

    #@2f
    goto :goto_1

    #@30
    .line 694
    :pswitch_2
    sget-object v1, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@32
    aget-object v1, v1, p1

    #@34
    return-object v1

    #@35
    .line 696
    :cond_2
    sget-object v1, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    #@37
    aget-object v0, v1, p1

    #@39
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 700
    :cond_3
    if-nez p0, :cond_4

    #@3c
    and-int/lit8 v1, p1, 0x20

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 701
    const-string/jumbo v1, "PRIORITY"

    #@43
    const-string/jumbo v2, "COMPRESSED"

    #@46
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 703
    :cond_4
    return-object v0

    #@4c
    .line 686
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .locals 7
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 673
    sget-object v2, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-ge p3, v2, :cond_0

    #@7
    sget-object v2, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    #@9
    aget-object v1, v2, p3

    #@b
    .line 674
    .local v1, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 675
    .local v0, "formattedFlags":Ljava/lang/String;
    const-string/jumbo v3, "%s 0x%08x %5d %-13s %s"

    #@12
    const/4 v2, 0x5

    #@13
    new-array v4, v2, [Ljava/lang/Object;

    #@15
    if-eqz p0, :cond_1

    #@17
    const-string/jumbo v2, "<<"

    #@1a
    :goto_1
    aput-object v2, v4, v5

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    aput-object v2, v4, v6

    #@22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    const/4 v5, 0x2

    #@27
    aput-object v2, v4, v5

    #@29
    .line 676
    const/4 v2, 0x3

    #@2a
    aput-object v1, v4, v2

    #@2c
    const/4 v2, 0x4

    #@2d
    aput-object v0, v4, v2

    #@2f
    .line 675
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 673
    .end local v0    # "formattedFlags":Ljava/lang/String;
    .end local v1    # "formattedType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "0x%02x"

    #@37
    new-array v3, v6, [Ljava/lang/Object;

    #@39
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3c
    move-result-object v4

    #@3d
    aput-object v4, v3, v5

    #@3f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .restart local v1    # "formattedType":Ljava/lang/String;
    goto :goto_0

    #@44
    .line 675
    .restart local v0    # "formattedFlags":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ">>"

    #@47
    goto :goto_1
.end method
