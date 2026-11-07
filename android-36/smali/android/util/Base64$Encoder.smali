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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ENCODE:[B

.field private static final greylist-max-o ENCODE_WEBSAFE:[B

.field public static final greylist-max-o LINE_GROUPS:I = 0x13


# instance fields
.field private final greylist-max-o alphabet:[B

.field private greylist-max-o count:I

.field public final greylist-max-o do_cr:Z

.field public final greylist-max-o do_newline:Z

.field public final greylist-max-o do_padding:Z

.field private final greylist-max-o tail:[B

.field greylist-max-o tailLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 545
    const-class v0, Landroid/util/Base64;

    .line 557
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    .line 568
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_16
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

    :array_3a
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

.method public constructor greylist-max-o <init>(I[B)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 584
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 585
    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    .line 587
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    .line 588
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    .line 589
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    .line 590
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_28

    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    goto :goto_2a

    :cond_28
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    :goto_2a
    iput-object v0, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 592
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64$Encoder;->tail:[B

    .line 593
    iput v1, p0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 595
    iget-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3a

    const/16 v0, 0x13

    goto :goto_3b

    :cond_3a
    const/4 v0, -0x1

    :goto_3b
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    .line 596
    return-void
.end method


# virtual methods
.method public greylist-max-o maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 603
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public greylist-max-o process([BIIZ)Z
    .registers 22
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 609
    .local v1, "alphabet":[B
    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    .line 610
    .local v2, "output":[B
    const/4 v3, 0x0

    .line 611
    .local v3, "op":I
    iget v4, v0, Landroid/util/Base64$Encoder;->count:I

    .line 613
    .local v4, "count":I
    move/from16 v5, p2

    .line 614
    .local v5, "p":I
    add-int v6, p3, p2

    .line 615
    .end local p3    # "len":I
    .local v6, "len":I
    const/4 v7, -0x1

    .line 621
    .local v7, "v":I
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_212

    goto :goto_59

    .line 638
    :pswitch_16
    add-int/lit8 v8, v5, 0x1

    if-gt v8, v6, :cond_59

    .line 640
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    iget-object v11, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v11, v11, v10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v8, v11

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "p":I
    .local v11, "p":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v7, v8, v5

    .line 643
    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v11

    goto :goto_59

    .line 627
    .end local v11    # "p":I
    .restart local v5    # "p":I
    :pswitch_37
    add-int/lit8 v8, v5, 0x2

    if-gt v8, v6, :cond_59

    .line 630
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "p":I
    .restart local v11    # "p":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, v11, 0x1

    .end local v11    # "p":I
    .local v8, "p":I
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int v7, v5, v11

    .line 633
    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v8

    goto :goto_59

    .line 624
    .end local v8    # "p":I
    .restart local v5    # "p":I
    :pswitch_58
    nop

    .line 648
    :cond_59
    :goto_59
    const/4 v8, -0x1

    const/16 v9, 0xd

    const/16 v11, 0xa

    if-eq v7, v8, :cond_9a

    .line 649
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .local v8, "op":I
    shr-int/lit8 v12, v7, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 650
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 651
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 652
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 653
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_9a

    .line 654
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_93

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 655
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_93
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    .line 656
    const/16 v4, 0x13

    move v3, v8

    .line 665
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_9a
    :goto_9a
    add-int/lit8 v8, v5, 0x3

    if-gt v8, v6, :cond_f2

    .line 666
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v12, v5, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v5, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v7, v8, v12

    .line 669
    shr-int/lit8 v8, v7, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v3

    .line 670
    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 671
    add-int/lit8 v8, v3, 0x2

    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 672
    add-int/lit8 v8, v3, 0x3

    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 673
    add-int/lit8 v5, v5, 0x3

    .line 674
    add-int/lit8 v3, v3, 0x4

    .line 675
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_9a

    .line 676
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_ea

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 677
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_ea
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    .line 678
    const/16 v4, 0x13

    move v3, v8

    goto :goto_9a

    .line 682
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_f2
    if-eqz p4, :cond_1dd

    .line 688
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v8, v5, v8

    add-int/lit8 v12, v6, -0x1

    const/16 v13, 0x3d

    if-ne v8, v12, :cond_14c

    .line 689
    const/4 v8, 0x0

    .line 690
    .local v8, "t":I
    iget v12, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v12, :cond_10a

    iget-object v12, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "t":I
    .local v14, "t":I
    aget-byte v8, v12, v8

    goto :goto_111

    .end local v14    # "t":I
    .restart local v8    # "t":I
    :cond_10a
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "p":I
    .local v12, "p":I
    aget-byte v5, p1, v5

    move v14, v8

    move v8, v5

    move v5, v12

    .end local v8    # "t":I
    .end local v12    # "p":I
    .restart local v5    # "p":I
    .restart local v14    # "t":I
    :goto_111
    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v7, v8, 0x4

    .line 691
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v8, v14

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 692
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .local v8, "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 693
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 694
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v8, :cond_138

    .line 695
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v13, v2, v3

    .line 696
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v13, v2, v8

    .line 698
    :cond_138
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_14a

    .line 699
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_145

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 700
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_145
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    move v3, v8

    .line 702
    .end local v8    # "op":I
    .end local v14    # "t":I
    .restart local v3    # "op":I
    :cond_14a
    goto/16 :goto_1db

    :cond_14c
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v8, v5, v8

    add-int/lit8 v12, v6, -0x2

    if-ne v8, v12, :cond_1c3

    .line 703
    const/4 v8, 0x0

    .line 704
    .local v8, "t":I
    iget v12, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-le v12, v10, :cond_160

    iget-object v12, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "t":I
    .restart local v14    # "t":I
    aget-byte v8, v12, v8

    goto :goto_167

    .end local v14    # "t":I
    .restart local v8    # "t":I
    :cond_160
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "p":I
    .restart local v12    # "p":I
    aget-byte v5, p1, v5

    move v14, v8

    move v8, v5

    move v5, v12

    .end local v8    # "t":I
    .end local v12    # "p":I
    .restart local v5    # "p":I
    .restart local v14    # "t":I
    :goto_167
    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    .line 705
    iget v12, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v12, :cond_176

    iget-object v12, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "t":I
    .local v15, "t":I
    aget-byte v12, v12, v14

    move v14, v15

    goto :goto_17f

    .end local v15    # "t":I
    .restart local v14    # "t":I
    :cond_176
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "p":I
    .restart local v12    # "p":I
    aget-byte v5, p1, v5

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    .end local v12    # "p":I
    .restart local v5    # "p":I
    :goto_17f
    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x2

    or-int v7, v8, v12

    .line 706
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v8, v14

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 707
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .local v8, "op":I
    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 708
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 709
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 710
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v3, :cond_1af

    .line 711
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v13, v2, v8

    move v8, v3

    .line 713
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_1af
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v3, :cond_1c1

    .line 714
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_1bc

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v9, v2, v8

    move v8, v3

    .line 715
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_1bc
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v11, v2, v8

    move v8, v3

    .line 717
    .end local v3    # "op":I
    .end local v14    # "t":I
    .restart local v8    # "op":I
    :cond_1c1
    move v3, v8

    goto :goto_1db

    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_1c3
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_1db

    if-lez v3, :cond_1db

    const/16 v8, 0x13

    if-eq v4, v8, :cond_1db

    .line 718
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_1d6

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 719
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_1d6
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    move v3, v8

    .line 722
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_1db
    :goto_1db
    nop

    .line 723
    goto :goto_20c

    .line 728
    :cond_1dd
    add-int/lit8 v8, v6, -0x1

    if-ne v5, v8, :cond_1ee

    .line 729
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v11, p1, v5

    aput-byte v11, v8, v9

    goto :goto_20c

    .line 730
    :cond_1ee
    add-int/lit8 v8, v6, -0x2

    if-ne v5, v8, :cond_20c

    .line 731
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v11, p1, v5

    aput-byte v11, v8, v9

    .line 732
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v5, 0x1

    aget-byte v11, p1, v11

    aput-byte v11, v8, v9

    .line 736
    :cond_20c
    :goto_20c
    iput v3, v0, Landroid/util/Base64$Encoder;->op:I

    .line 737
    iput v4, v0, Landroid/util/Base64$Encoder;->count:I

    .line 739
    return v10

    nop

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_58
        :pswitch_37
        :pswitch_16
    .end packed-switch
.end method
