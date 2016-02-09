.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x40

    #@2
    const-class v0, Landroid/util/Base64$Encoder;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    sput-boolean v0, Landroid/util/Base64$Encoder;->-assertionsDisabled:Z

    #@d
    .line 554
    new-array v0, v1, [B

    #@f
    fill-array-data v0, :array_0

    #@12
    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    #@14
    .line 565
    new-array v0, v1, [B

    #@16
    fill-array-data v0, :array_1

    #@19
    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    #@1b
    .line 542
    return-void

    #@1c
    :cond_0
    const/4 v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 554
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    #@42
    .line 565
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 581
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    #@5
    .line 582
    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    #@7
    .line 584
    and-int/lit8 v0, p1, 0x1

    #@9
    if-nez v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    #@e
    .line 585
    and-int/lit8 v0, p1, 0x2

    #@10
    if-nez v0, :cond_1

    #@12
    move v0, v1

    #@13
    :goto_1
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    #@15
    .line 586
    and-int/lit8 v0, p1, 0x4

    #@17
    if-eqz v0, :cond_2

    #@19
    :goto_2
    iput-boolean v1, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    #@1b
    .line 587
    and-int/lit8 v0, p1, 0x8

    #@1d
    if-nez v0, :cond_3

    #@1f
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    #@21
    :goto_3
    iput-object v0, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    #@23
    .line 589
    const/4 v0, 0x2

    #@24
    new-array v0, v0, [B

    #@26
    iput-object v0, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@28
    .line 590
    iput v2, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@2a
    .line 592
    iget-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    #@2c
    if-eqz v0, :cond_4

    #@2e
    const/16 v0, 0x13

    #@30
    :goto_4
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    #@32
    .line 581
    return-void

    #@33
    :cond_0
    move v0, v2

    #@34
    .line 584
    goto :goto_0

    #@35
    :cond_1
    move v0, v2

    #@36
    .line 585
    goto :goto_1

    #@37
    :cond_2
    move v1, v2

    #@38
    .line 586
    goto :goto_2

    #@39
    .line 587
    :cond_3
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    #@3b
    goto :goto_3

    #@3c
    .line 592
    :cond_4
    const/4 v0, -0x1

    #@3d
    goto :goto_4
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 600
    mul-int/lit8 v0, p1, 0x8

    #@2
    div-int/lit8 v0, v0, 0x5

    #@4
    add-int/lit8 v0, v0, 0xa

    #@6
    return v0
.end method

.method public process([BIIZ)Z
    .locals 14
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    #@0
    .prologue
    .line 605
    iget-object v1, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    #@2
    .line 606
    .local v1, "alphabet":[B
    iget-object v5, p0, Landroid/util/Base64$Encoder;->output:[B

    #@4
    .line 607
    .local v5, "output":[B
    const/4 v3, 0x0

    #@5
    .line 608
    .local v3, "op":I
    iget v2, p0, Landroid/util/Base64$Encoder;->count:I

    #@7
    .line 610
    .local v2, "count":I
    move/from16 v6, p2

    #@9
    .line 611
    .local v6, "p":I
    add-int p3, p3, p2

    #@b
    .line 612
    const/4 v10, -0x1

    #@c
    .line 618
    .local v10, "v":I
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@e
    packed-switch v11, :pswitch_data_0

    #@11
    .line 645
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v11, -0x1

    #@12
    if-eq v10, v11, :cond_2

    #@14
    .line 607
    const/4 v11, 0x0

    #@15
    .line 646
    const/4 v3, 0x1

    #@16
    shr-int/lit8 v12, v10, 0x12

    #@18
    and-int/lit8 v12, v12, 0x3f

    #@1a
    aget-byte v12, v1, v12

    #@1c
    aput-byte v12, v5, v11

    #@1e
    .line 647
    add-int/lit8 v4, v3, 0x1

    #@20
    .end local v3    # "op":I
    .local v4, "op":I
    shr-int/lit8 v11, v10, 0xc

    #@22
    and-int/lit8 v11, v11, 0x3f

    #@24
    aget-byte v11, v1, v11

    #@26
    aput-byte v11, v5, v3

    #@28
    .line 648
    add-int/lit8 v3, v4, 0x1

    #@2a
    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0x6

    #@2c
    and-int/lit8 v11, v11, 0x3f

    #@2e
    aget-byte v11, v1, v11

    #@30
    aput-byte v11, v5, v4

    #@32
    .line 649
    add-int/lit8 v4, v3, 0x1

    #@34
    .end local v3    # "op":I
    .restart local v4    # "op":I
    and-int/lit8 v11, v10, 0x3f

    #@36
    aget-byte v11, v1, v11

    #@38
    aput-byte v11, v5, v3

    #@3a
    .line 650
    add-int/lit8 v2, v2, -0x1

    #@3c
    if-nez v2, :cond_18

    #@3e
    .line 651
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    #@40
    if-eqz v11, :cond_17

    #@42
    add-int/lit8 v3, v4, 0x1

    #@44
    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0xd

    #@46
    aput-byte v11, v5, v4

    #@48
    .line 652
    :goto_1
    add-int/lit8 v4, v3, 0x1

    #@4a
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    #@4c
    aput-byte v11, v5, v3

    #@4e
    .line 653
    const/16 v2, 0x13

    #@50
    move v7, v6

    #@51
    .line 662
    .end local v6    # "p":I
    .local v7, "p":I
    :goto_2
    add-int/lit8 v11, v7, 0x3

    #@53
    move/from16 v0, p3

    #@55
    if-gt v11, v0, :cond_3

    #@57
    .line 663
    aget-byte v11, p1, v7

    #@59
    and-int/lit16 v11, v11, 0xff

    #@5b
    shl-int/lit8 v11, v11, 0x10

    #@5d
    .line 664
    add-int/lit8 v12, v7, 0x1

    #@5f
    aget-byte v12, p1, v12

    #@61
    and-int/lit16 v12, v12, 0xff

    #@63
    shl-int/lit8 v12, v12, 0x8

    #@65
    .line 663
    or-int/2addr v11, v12

    #@66
    .line 665
    add-int/lit8 v12, v7, 0x2

    #@68
    aget-byte v12, p1, v12

    #@6a
    and-int/lit16 v12, v12, 0xff

    #@6c
    .line 663
    or-int v10, v11, v12

    #@6e
    .line 666
    shr-int/lit8 v11, v10, 0x12

    #@70
    and-int/lit8 v11, v11, 0x3f

    #@72
    aget-byte v11, v1, v11

    #@74
    aput-byte v11, v5, v4

    #@76
    .line 667
    add-int/lit8 v11, v4, 0x1

    #@78
    shr-int/lit8 v12, v10, 0xc

    #@7a
    and-int/lit8 v12, v12, 0x3f

    #@7c
    aget-byte v12, v1, v12

    #@7e
    aput-byte v12, v5, v11

    #@80
    .line 668
    add-int/lit8 v11, v4, 0x2

    #@82
    shr-int/lit8 v12, v10, 0x6

    #@84
    and-int/lit8 v12, v12, 0x3f

    #@86
    aget-byte v12, v1, v12

    #@88
    aput-byte v12, v5, v11

    #@8a
    .line 669
    add-int/lit8 v11, v4, 0x3

    #@8c
    and-int/lit8 v12, v10, 0x3f

    #@8e
    aget-byte v12, v1, v12

    #@90
    aput-byte v12, v5, v11

    #@92
    .line 670
    add-int/lit8 v6, v7, 0x3

    #@94
    .line 671
    .end local v7    # "p":I
    .restart local v6    # "p":I
    add-int/lit8 v3, v4, 0x4

    #@96
    .line 672
    .end local v4    # "op":I
    .restart local v3    # "op":I
    add-int/lit8 v2, v2, -0x1

    #@98
    if-nez v2, :cond_2

    #@9a
    .line 673
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    #@9c
    if-eqz v11, :cond_1

    #@9e
    add-int/lit8 v4, v3, 0x1

    #@a0
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    #@a2
    aput-byte v11, v5, v3

    #@a4
    move v3, v4

    #@a5
    .line 674
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_1
    add-int/lit8 v4, v3, 0x1

    #@a7
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    #@a9
    aput-byte v11, v5, v3

    #@ab
    .line 675
    const/16 v2, 0x13

    #@ad
    move v3, v4

    #@ae
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_2
    move v7, v6

    #@af
    .end local v6    # "p":I
    .restart local v7    # "p":I
    move v4, v3

    #@b0
    .end local v3    # "op":I
    .restart local v4    # "op":I
    goto :goto_2

    #@b1
    .line 624
    .end local v4    # "op":I
    .end local v7    # "p":I
    .restart local v3    # "op":I
    .restart local v6    # "p":I
    :pswitch_1
    add-int/lit8 v11, v6, 0x2

    #@b3
    move/from16 v0, p3

    #@b5
    if-gt v11, v0, :cond_0

    #@b7
    .line 627
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@b9
    const/4 v12, 0x0

    #@ba
    aget-byte v11, v11, v12

    #@bc
    and-int/lit16 v11, v11, 0xff

    #@be
    shl-int/lit8 v11, v11, 0x10

    #@c0
    .line 628
    add-int/lit8 v7, v6, 0x1

    #@c2
    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v12, p1, v6

    #@c4
    and-int/lit16 v12, v12, 0xff

    #@c6
    shl-int/lit8 v12, v12, 0x8

    #@c8
    .line 627
    or-int/2addr v11, v12

    #@c9
    .line 629
    add-int/lit8 v6, v7, 0x1

    #@cb
    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v12, p1, v7

    #@cd
    and-int/lit16 v12, v12, 0xff

    #@cf
    .line 627
    or-int v10, v11, v12

    #@d1
    .line 630
    const/4 v11, 0x0

    #@d2
    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@d4
    goto/16 :goto_0

    #@d6
    .line 635
    :pswitch_2
    add-int/lit8 v11, v6, 0x1

    #@d8
    move/from16 v0, p3

    #@da
    if-gt v11, v0, :cond_0

    #@dc
    .line 637
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@de
    const/4 v12, 0x0

    #@df
    aget-byte v11, v11, v12

    #@e1
    and-int/lit16 v11, v11, 0xff

    #@e3
    shl-int/lit8 v11, v11, 0x10

    #@e5
    .line 638
    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@e7
    const/4 v13, 0x1

    #@e8
    aget-byte v12, v12, v13

    #@ea
    and-int/lit16 v12, v12, 0xff

    #@ec
    shl-int/lit8 v12, v12, 0x8

    #@ee
    .line 637
    or-int/2addr v11, v12

    #@ef
    .line 639
    add-int/lit8 v7, v6, 0x1

    #@f1
    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v12, p1, v6

    #@f3
    and-int/lit16 v12, v12, 0xff

    #@f5
    .line 637
    or-int v10, v11, v12

    #@f7
    .line 640
    const/4 v11, 0x0

    #@f8
    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@fa
    move v6, v7

    #@fb
    .end local v7    # "p":I
    .restart local v6    # "p":I
    goto/16 :goto_0

    #@fd
    .line 679
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_3
    if-eqz p4, :cond_11

    #@ff
    .line 685
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@101
    sub-int v11, v7, v11

    #@103
    add-int/lit8 v12, p3, -0x1

    #@105
    if-ne v11, v12, :cond_7

    #@107
    .line 686
    const/4 v8, 0x0

    #@108
    .line 687
    .local v8, "t":I
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@10a
    if-lez v11, :cond_6

    #@10c
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@10e
    .line 686
    const/4 v12, 0x0

    #@10f
    .line 687
    const/4 v8, 0x1

    #@110
    aget-byte v11, v11, v12

    #@112
    move v6, v7

    #@113
    .end local v7    # "p":I
    .restart local v6    # "p":I
    :goto_3
    and-int/lit16 v11, v11, 0xff

    #@115
    shl-int/lit8 v10, v11, 0x4

    #@117
    .line 688
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@119
    sub-int/2addr v11, v8

    #@11a
    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@11c
    .line 689
    add-int/lit8 v3, v4, 0x1

    #@11e
    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0x6

    #@120
    and-int/lit8 v11, v11, 0x3f

    #@122
    aget-byte v11, v1, v11

    #@124
    aput-byte v11, v5, v4

    #@126
    .line 690
    add-int/lit8 v4, v3, 0x1

    #@128
    .end local v3    # "op":I
    .restart local v4    # "op":I
    and-int/lit8 v11, v10, 0x3f

    #@12a
    aget-byte v11, v1, v11

    #@12c
    aput-byte v11, v5, v3

    #@12e
    .line 691
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    #@130
    if-eqz v11, :cond_16

    #@132
    .line 692
    add-int/lit8 v3, v4, 0x1

    #@134
    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0x3d

    #@136
    aput-byte v11, v5, v4

    #@138
    .line 693
    add-int/lit8 v4, v3, 0x1

    #@13a
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0x3d

    #@13c
    aput-byte v11, v5, v3

    #@13e
    move v3, v4

    #@13f
    .line 695
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :goto_4
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    #@141
    if-eqz v11, :cond_5

    #@143
    .line 696
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    #@145
    if-eqz v11, :cond_4

    #@147
    add-int/lit8 v4, v3, 0x1

    #@149
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    #@14b
    aput-byte v11, v5, v3

    #@14d
    move v3, v4

    #@14e
    .line 697
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_4
    add-int/lit8 v4, v3, 0x1

    #@150
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    #@152
    aput-byte v11, v5, v3

    #@154
    move v3, v4

    #@155
    .line 719
    .end local v4    # "op":I
    .end local v8    # "t":I
    .restart local v3    # "op":I
    :cond_5
    :goto_5
    sget-boolean v11, Landroid/util/Base64$Encoder;->-assertionsDisabled:Z

    #@157
    if-nez v11, :cond_f

    #@159
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@15b
    if-nez v11, :cond_e

    #@15d
    const/4 v11, 0x1

    #@15e
    :goto_6
    if-nez v11, :cond_f

    #@160
    new-instance v11, Ljava/lang/AssertionError;

    #@162
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@165
    throw v11

    #@166
    .line 687
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    .restart local v8    # "t":I
    :cond_6
    add-int/lit8 v6, v7, 0x1

    #@168
    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v11, p1, v7

    #@16a
    goto :goto_3

    #@16b
    .line 699
    .end local v6    # "p":I
    .end local v8    # "t":I
    .restart local v7    # "p":I
    :cond_7
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@16d
    sub-int v11, v7, v11

    #@16f
    add-int/lit8 v12, p3, -0x2

    #@171
    if-ne v11, v12, :cond_c

    #@173
    .line 700
    const/4 v8, 0x0

    #@174
    .line 701
    .restart local v8    # "t":I
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@176
    const/4 v12, 0x1

    #@177
    if-le v11, v12, :cond_a

    #@179
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@17b
    .line 700
    const/4 v12, 0x0

    #@17c
    .line 701
    const/4 v8, 0x1

    #@17d
    aget-byte v11, v11, v12

    #@17f
    move v6, v7

    #@180
    .end local v7    # "p":I
    .restart local v6    # "p":I
    :goto_7
    and-int/lit16 v11, v11, 0xff

    #@182
    shl-int/lit8 v12, v11, 0xa

    #@184
    .line 702
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@186
    if-lez v11, :cond_b

    #@188
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@18a
    add-int/lit8 v9, v8, 0x1

    #@18c
    .end local v8    # "t":I
    .local v9, "t":I
    aget-byte v11, v11, v8

    #@18e
    move v8, v9

    #@18f
    .end local v9    # "t":I
    .restart local v8    # "t":I
    :goto_8
    and-int/lit16 v11, v11, 0xff

    #@191
    shl-int/lit8 v11, v11, 0x2

    #@193
    .line 701
    or-int v10, v12, v11

    #@195
    .line 703
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@197
    sub-int/2addr v11, v8

    #@198
    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@19a
    .line 704
    add-int/lit8 v3, v4, 0x1

    #@19c
    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0xc

    #@19e
    and-int/lit8 v11, v11, 0x3f

    #@1a0
    aget-byte v11, v1, v11

    #@1a2
    aput-byte v11, v5, v4

    #@1a4
    .line 705
    add-int/lit8 v4, v3, 0x1

    #@1a6
    .end local v3    # "op":I
    .restart local v4    # "op":I
    shr-int/lit8 v11, v10, 0x6

    #@1a8
    and-int/lit8 v11, v11, 0x3f

    #@1aa
    aget-byte v11, v1, v11

    #@1ac
    aput-byte v11, v5, v3

    #@1ae
    .line 706
    add-int/lit8 v3, v4, 0x1

    #@1b0
    .end local v4    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v11, v10, 0x3f

    #@1b2
    aget-byte v11, v1, v11

    #@1b4
    aput-byte v11, v5, v4

    #@1b6
    .line 707
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    #@1b8
    if-eqz v11, :cond_8

    #@1ba
    .line 708
    add-int/lit8 v4, v3, 0x1

    #@1bc
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0x3d

    #@1be
    aput-byte v11, v5, v3

    #@1c0
    move v3, v4

    #@1c1
    .line 710
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_8
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    #@1c3
    if-eqz v11, :cond_5

    #@1c5
    .line 711
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    #@1c7
    if-eqz v11, :cond_9

    #@1c9
    add-int/lit8 v4, v3, 0x1

    #@1cb
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    #@1cd
    aput-byte v11, v5, v3

    #@1cf
    move v3, v4

    #@1d0
    .line 712
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_9
    add-int/lit8 v4, v3, 0x1

    #@1d2
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    #@1d4
    aput-byte v11, v5, v3

    #@1d6
    move v3, v4

    #@1d7
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_5

    #@1d9
    .line 701
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_a
    add-int/lit8 v6, v7, 0x1

    #@1db
    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v11, p1, v7

    #@1dd
    goto :goto_7

    #@1de
    .line 702
    :cond_b
    add-int/lit8 v7, v6, 0x1

    #@1e0
    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v11, p1, v6

    #@1e2
    move v6, v7

    #@1e3
    .end local v7    # "p":I
    .restart local v6    # "p":I
    goto :goto_8

    #@1e4
    .line 714
    .end local v6    # "p":I
    .end local v8    # "t":I
    .restart local v7    # "p":I
    :cond_c
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    #@1e6
    if-eqz v11, :cond_d

    #@1e8
    if-lez v4, :cond_d

    #@1ea
    const/16 v11, 0x13

    #@1ec
    if-eq v2, v11, :cond_d

    #@1ee
    .line 715
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    #@1f0
    if-eqz v11, :cond_15

    #@1f2
    add-int/lit8 v3, v4, 0x1

    #@1f4
    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0xd

    #@1f6
    aput-byte v11, v5, v4

    #@1f8
    .line 716
    :goto_9
    add-int/lit8 v4, v3, 0x1

    #@1fa
    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    #@1fc
    aput-byte v11, v5, v3

    #@1fe
    move v6, v7

    #@1ff
    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    #@200
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_5

    #@202
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_d
    move v6, v7

    #@203
    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    #@204
    .line 714
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_5

    #@206
    .line 719
    :cond_e
    const/4 v11, 0x0

    #@207
    goto/16 :goto_6

    #@209
    .line 720
    :cond_f
    sget-boolean v11, Landroid/util/Base64$Encoder;->-assertionsDisabled:Z

    #@20b
    if-nez v11, :cond_12

    #@20d
    move/from16 v0, p3

    #@20f
    if-ne v6, v0, :cond_10

    #@211
    const/4 v11, 0x1

    #@212
    :goto_a
    if-nez v11, :cond_12

    #@214
    new-instance v11, Ljava/lang/AssertionError;

    #@216
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@219
    throw v11

    #@21a
    :cond_10
    const/4 v11, 0x0

    #@21b
    goto :goto_a

    #@21c
    .line 725
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_11
    add-int/lit8 v11, p3, -0x1

    #@21e
    if-ne v7, v11, :cond_13

    #@220
    .line 726
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@222
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@224
    add-int/lit8 v13, v12, 0x1

    #@226
    iput v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@228
    aget-byte v13, p1, v7

    #@22a
    aput-byte v13, v11, v12

    #@22c
    move v6, v7

    #@22d
    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    #@22e
    .line 733
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_12
    :goto_b
    iput v3, p0, Landroid/util/Base64$Encoder;->op:I

    #@230
    .line 734
    iput v2, p0, Landroid/util/Base64$Encoder;->count:I

    #@232
    .line 736
    const/4 v11, 0x1

    #@233
    return v11

    #@234
    .line 727
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_13
    add-int/lit8 v11, p3, -0x2

    #@236
    if-ne v7, v11, :cond_14

    #@238
    .line 728
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@23a
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@23c
    add-int/lit8 v13, v12, 0x1

    #@23e
    iput v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@240
    aget-byte v13, p1, v7

    #@242
    aput-byte v13, v11, v12

    #@244
    .line 729
    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    #@246
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@248
    add-int/lit8 v13, v12, 0x1

    #@24a
    iput v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    #@24c
    add-int/lit8 v13, v7, 0x1

    #@24e
    aget-byte v13, p1, v13

    #@250
    aput-byte v13, v11, v12

    #@252
    move v6, v7

    #@253
    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    #@254
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto :goto_b

    #@255
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_14
    move v6, v7

    #@256
    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    #@257
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto :goto_b

    #@258
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_15
    move v3, v4

    #@259
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto :goto_9

    #@25a
    .end local v3    # "op":I
    .end local v7    # "p":I
    .restart local v4    # "op":I
    .restart local v6    # "p":I
    .restart local v8    # "t":I
    :cond_16
    move v3, v4

    #@25b
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_4

    #@25d
    .end local v3    # "op":I
    .end local v8    # "t":I
    .restart local v4    # "op":I
    :cond_17
    move v3, v4

    #@25e
    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_1

    #@260
    .end local v3    # "op":I
    .restart local v4    # "op":I
    :cond_18
    move v7, v6

    #@261
    .end local v6    # "p":I
    .restart local v7    # "p":I
    goto/16 :goto_2

    #@263
    .line 618
    nop

    #@264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
