.class public Ljava/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final greylist-max-o RFC2045:Ljava/util/Base64$Decoder;

.field static final greylist-max-o RFC4648:Ljava/util/Base64$Decoder;

.field static final greylist-max-o RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

.field private static final greylist-max-o fromBase64:[I

.field private static final greylist-max-o fromBase64URL:[I


# instance fields
.field private final greylist-max-o isMIME:Z

.field private final greylist-max-o isURL:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetfromBase64()[I
    .registers 1

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 524
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 526
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 527
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-static {}, Ljava/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_21

    .line 528
    sget-object v3, Ljava/util/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Ljava/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v4

    aget-char v4, v4, v1

    aput v1, v3, v4

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 529
    .end local v1    # "i":I
    :cond_21
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    const/16 v3, 0x3d

    const/4 v4, -0x2

    aput v4, v1, v3

    .line 536
    new-array v0, v0, [I

    sput-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    .line 539
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    invoke-static {}, Ljava/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_46

    .line 541
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Ljava/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 542
    .end local v0    # "i":I
    :cond_46
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    aput v4, v0, v3

    .line 545
    new-instance v0, Ljava/util/Base64$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    .line 546
    new-instance v0, Ljava/util/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    .line 547
    new-instance v0, Ljava/util/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-void
.end method

.method private constructor greylist-max-o <init>(ZZ)V
    .registers 3
    .param p1, "isURL"    # Z
    .param p2, "isMIME"    # Z

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-boolean p1, p0, Ljava/util/Base64$Decoder;->isURL:Z

    .line 513
    iput-boolean p2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    .line 514
    return-void
.end method

.method private greylist-max-o decode0([BII[B)I
    .registers 17
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B

    .line 808
    iget-boolean v0, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    :goto_9
    move-object v8, v0

    .line 809
    .local v8, "base64":[I
    const/4 v0, 0x0

    .line 810
    .local v0, "dp":I
    const/4 v1, 0x0

    .line 811
    .local v1, "bits":I
    const/16 v2, 0x12

    move v5, v0

    move v9, v2

    move v2, p2

    move p2, v1

    .line 813
    .end local v0    # "dp":I
    .end local v1    # "bits":I
    .local v2, "sp":I
    .local v5, "dp":I
    .local v9, "shiftto":I
    .local p2, "bits":I
    :goto_12
    const/4 v10, 0x6

    if-ge v2, p3, :cond_ab

    .line 814
    const/16 v11, 0x12

    if-ne v9, v11, :cond_32

    add-int/lit8 v0, p3, -0x4

    if-ge v2, v0, :cond_32

    .line 815
    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isURL:Z

    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/Base64$Decoder;->decodeBlock([BII[BIZZ)I

    move-result v6

    .line 820
    .local v6, "dl":I
    add-int/lit8 v1, v6, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 822
    .local v1, "chars_decoded":I
    add-int/2addr v2, v1

    .line 823
    add-int/2addr v5, v6

    .line 825
    .end local v1    # "chars_decoded":I
    .end local v6    # "dl":I
    :cond_32
    if-lt v2, p3, :cond_36

    .line 827
    goto/16 :goto_ab

    .line 829
    :cond_36
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "sp":I
    .local v1, "sp":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 830
    .local v2, "b":I
    aget v4, v8, v2

    move v2, v4

    if-gez v4, :cond_89

    .line 831
    const/4 v4, -0x2

    if-ne v2, v4, :cond_60

    .line 837
    if-ne v9, v10, :cond_54

    if-eq v1, p3, :cond_58

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "sp":I
    .local v4, "sp":I
    aget-byte v1, p1, v1

    const/16 v6, 0x3d

    if-ne v1, v6, :cond_52

    move v1, v4

    goto :goto_54

    :cond_52
    move v1, v4

    goto :goto_58

    .end local v4    # "sp":I
    .restart local v1    # "sp":I
    :cond_54
    :goto_54
    if-eq v9, v11, :cond_58

    move v2, v1

    goto :goto_ab

    .line 839
    :cond_58
    :goto_58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 844
    :cond_60
    iget-boolean v4, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v4, :cond_66

    .line 845
    move v2, v1

    goto :goto_12

    .line 847
    :cond_66
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal base64 character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    aget-byte v7, p1, v7

    .line 849
    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 851
    :cond_89
    shl-int v4, v2, v9

    or-int/2addr p2, v4

    .line 852
    add-int/lit8 v9, v9, -0x6

    .line 853
    if-gez v9, :cond_a8

    .line 854
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .local v4, "dp":I
    shr-int/lit8 v6, p2, 0x10

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 855
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v6, p2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, v4

    .line 856
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v6, p2

    aput-byte v6, p4, v5

    .line 857
    const/16 v5, 0x12

    .line 858
    .end local v9    # "shiftto":I
    .local v5, "shiftto":I
    const/4 p2, 0x0

    move v9, v5

    move v5, v4

    .line 860
    .end local v2    # "b":I
    .end local v4    # "dp":I
    .local v5, "dp":I
    .restart local v9    # "shiftto":I
    :cond_a8
    move v2, v1

    goto/16 :goto_12

    .line 862
    .end local v1    # "sp":I
    .local v2, "sp":I
    :cond_ab
    :goto_ab
    if-ne v9, v10, :cond_b6

    .line 863
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "dp":I
    .local v1, "dp":I
    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p4, v5

    move v5, v1

    goto :goto_cb

    .line 864
    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    :cond_b6
    if-nez v9, :cond_c7

    .line 865
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p4, v5

    .line 866
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p4, v1

    goto :goto_cb

    .line 867
    :cond_c7
    const/16 v1, 0xc

    if-eq v9, v1, :cond_f8

    .line 874
    :goto_cb
    if-ge v2, p3, :cond_f7

    .line 875
    iget-boolean v1, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v1, :cond_de

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "sp":I
    .local v1, "sp":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    if-gez v2, :cond_dd

    .line 876
    move v2, v1

    goto :goto_cb

    .line 875
    :cond_dd
    move v2, v1

    .line 877
    .end local v1    # "sp":I
    .restart local v2    # "sp":I
    :cond_de
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input byte array has incorrect ending byte at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :cond_f7
    return v5

    .line 869
    :cond_f8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Last unit does not have enough valid bits"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist decodeBlock([BII[BIZZ)I
    .registers 18
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B
    .param p5, "dp"    # I
    .param p6, "isURL"    # Z
    .param p7, "isMIME"    # Z

    .line 788
    if-eqz p6, :cond_5

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 789
    .local v0, "base64":[I
    :goto_7
    sub-int v1, p3, p2

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, p2

    .line 790
    .local v1, "sl0":I
    move v2, p5

    .line 791
    .local v2, "new_dp":I
    :goto_d
    if-ge p2, v1, :cond_57

    .line 792
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sp":I
    .local v3, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget p2, v0, p2

    .line 793
    .local p2, "b1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sp":I
    .local v4, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v0, v3

    .line 794
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sp":I
    .local v5, "sp":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v0, v4

    .line 795
    .local v4, "b3":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "sp":I
    .local v6, "sp":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v0, v5

    .line 796
    .local v5, "b4":I
    or-int v7, p2, v3

    or-int/2addr v7, v4

    or-int/2addr v7, v5

    if-gez v7, :cond_38

    .line 797
    sub-int v7, v2, p5

    return v7

    .line 799
    :cond_38
    shl-int/lit8 v7, p2, 0x12

    shl-int/lit8 v8, v3, 0xc

    or-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x6

    or-int/2addr v7, v8

    or-int/2addr v7, v5

    .line 800
    .local v7, "bits0":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "new_dp":I
    .local v8, "new_dp":I
    shr-int/lit8 v9, v7, 0x10

    int-to-byte v9, v9

    aput-byte v9, p4, v2

    .line 801
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "new_dp":I
    .restart local v2    # "new_dp":I
    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, p4, v8

    .line 802
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "new_dp":I
    .restart local v8    # "new_dp":I
    int-to-byte v9, v7

    aput-byte v9, p4, v2

    .line 803
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    .end local v5    # "b4":I
    .end local v7    # "bits0":I
    .end local p2    # "b1":I
    move p2, v6

    move v2, v8

    goto :goto_d

    .line 804
    .end local v6    # "sp":I
    .end local v8    # "new_dp":I
    .restart local v2    # "new_dp":I
    .local p2, "sp":I
    :cond_57
    sub-int v3, v2, p5

    return v3
.end method

.method private blacklist decodedOutLength([BII)I
    .registers 12
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I

    .line 702
    iget-boolean v0, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 703
    .local v0, "base64":[I
    :goto_9
    const/4 v1, 0x0

    .line 704
    .local v1, "paddings":I
    sub-int v2, p3, p2

    .line 705
    .local v2, "len":I
    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 706
    return v3

    .line 707
    :cond_10
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_25

    .line 708
    iget-boolean v5, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v5, :cond_1d

    aget v5, v0, v3

    if-ne v5, v4, :cond_1d

    .line 709
    return v3

    .line 710
    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    :cond_25
    iget-boolean v3, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    const/16 v5, 0x3d

    if-eqz v3, :cond_48

    .line 716
    const/4 v3, 0x0

    .line 717
    .local v3, "n":I
    :goto_2c
    if-ge p2, p3, :cond_46

    .line 718
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "sp":I
    .local v6, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 719
    .local p2, "b":I
    if-ne p2, v5, :cond_3d

    .line 720
    sub-int v4, p3, v6

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v2, v4

    .line 721
    move p2, v6

    goto :goto_46

    .line 723
    :cond_3d
    aget v7, v0, p2

    move p2, v7

    if-ne v7, v4, :cond_44

    .line 724
    add-int/lit8 v3, v3, 0x1

    .line 725
    .end local p2    # "b":I
    :cond_44
    move p2, v6

    goto :goto_2c

    .line 726
    .end local v6    # "sp":I
    .local p2, "sp":I
    :cond_46
    :goto_46
    sub-int/2addr v2, v3

    .line 727
    .end local v3    # "n":I
    goto :goto_58

    .line 728
    :cond_48
    add-int/lit8 v3, p3, -0x1

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_58

    .line 729
    add-int/lit8 v1, v1, 0x1

    .line 730
    add-int/lit8 v3, p3, -0x2

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_58

    .line 731
    add-int/lit8 v1, v1, 0x1

    .line 734
    :cond_58
    :goto_58
    if-nez v1, :cond_62

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_62

    .line 735
    and-int/lit8 v3, v2, 0x3

    rsub-int/lit8 v1, v3, 0x4

    .line 742
    :cond_62
    int-to-long v3, v2

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v1

    return v3
.end method


# virtual methods
.method public whitelist test-api decode([B[B)I
    .registers 6
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .line 619
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Base64$Decoder;->decodedOutLength([BII)I

    move-result v0

    .line 620
    .local v0, "len":I
    array-length v2, p2

    if-lt v2, v0, :cond_12

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 623
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    return v1

    .line 621
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 648
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 652
    .local v0, "pos0":I
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 653
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 654
    .local v1, "src":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 655
    .local v2, "sp":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    .line 656
    .local v3, "sl":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_33

    .line 658
    .end local v1    # "src":[B
    .end local v2    # "sp":I
    .end local v3    # "sl":I
    :cond_28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 659
    .restart local v1    # "src":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 660
    const/4 v2, 0x0

    .line 661
    .restart local v2    # "sp":I
    array-length v3, v1

    .line 663
    .restart local v3    # "sl":I
    :goto_33
    invoke-direct {p0, v1, v2, v3}, Ljava/util/Base64$Decoder;->decodedOutLength([BII)I

    move-result v4

    new-array v4, v4, [B

    .line 664
    .local v4, "dst":[B
    invoke-direct {p0, v1, v2, v3, v4}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_42} :catch_43

    return-object v5

    .line 665
    .end local v1    # "src":[B
    .end local v2    # "sp":I
    .end local v3    # "sl":I
    .end local v4    # "dst":[B
    :catch_43
    move-exception v1

    .line 666
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 667
    throw v1
.end method

.method public whitelist test-api decode(Ljava/lang/String;)[B
    .registers 3
    .param p1, "src"    # Ljava/lang/String;

    .line 590
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api decode([B)[B
    .registers 5
    .param p1, "src"    # [B

    .line 564
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Base64$Decoder;->decodedOutLength([BII)I

    move-result v0

    new-array v0, v0, [B

    .line 565
    .local v0, "dst":[B
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, v0}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    .line 566
    .local v1, "ret":I
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 567
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 569
    :cond_14
    return-object v0
.end method

.method public whitelist test-api wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 687
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v0, Ljava/util/Base64$DecInputStream;

    iget-boolean v1, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_e

    :cond_c
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    :goto_e
    iget-boolean v2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v0, p1, v1, v2}, Ljava/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v0
.end method
