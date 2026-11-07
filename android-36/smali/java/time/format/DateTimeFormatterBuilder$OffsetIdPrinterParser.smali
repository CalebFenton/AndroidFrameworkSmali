.class final Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final greylist-max-o INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final greylist-max-o INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final greylist-max-o PATTERNS:[Ljava/lang/String;


# instance fields
.field private final greylist-max-o noOffsetText:Ljava/lang/String;

.field private final blacklist style:I

.field private final greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 3619
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+HH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "+HHmm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+HH:mm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+HHMM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "+HH:MM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "+HHMMss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+HH:MM:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v3, "+HHMMSS"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "+HH:MM:SS"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "+HHmmss"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "+HH:mm:ss"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "+H"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "+Hmm"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "+H:mm"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "+HMM"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "+H:MM"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "+HMMss"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "+H:MM:ss"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "+HMMSS"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v3, "+H:MM:SS"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "+Hmmss"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v3, "+H:mm:ss"

    aput-object v3, v0, v1

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3623
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "Z"

    invoke-direct {v0, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 3624
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "0"

    invoke-direct {v0, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 3636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3637
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3638
    const-string v0, "noOffsetText"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3639
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3640
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v0, v0, 0xb

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    .line 3641
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 3642
    return-void
.end method

.method private greylist-max-o checkPattern(Ljava/lang/String;)I
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 3645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 3646
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3647
    return v0

    .line 3645
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3650
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zone offset pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist formatZeroPad(ZILjava/lang/StringBuilder;)V
    .registers 6
    .param p1, "colon"    # Z
    .param p2, "value"    # I
    .param p3, "buf"    # Ljava/lang/StringBuilder;

    .line 3699
    if-eqz p1, :cond_5

    const-string v0, ":"

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3702
    return-void
.end method

.method private blacklist isColon()Z
    .registers 2

    .line 3658
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-lez v0, :cond_c

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isPaddedHour()Z
    .registers 3

    .line 3654
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist parseDigits(Ljava/lang/CharSequence;ZI[I)Z
    .registers 12
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "arrayIndex"    # I
    .param p4, "array"    # [I

    .line 3853
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 3854
    .local v1, "pos":I
    const/4 v2, 0x1

    if-gez v1, :cond_7

    .line 3855
    return v2

    .line 3857
    :cond_7
    if-eqz p2, :cond_20

    if-eq p3, v2, :cond_20

    .line 3858
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_1f

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1c

    goto :goto_1f

    .line 3861
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3859
    :cond_1f
    :goto_1f
    return v0

    .line 3863
    :cond_20
    :goto_20
    add-int/lit8 v3, v1, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_29

    .line 3864
    return v0

    .line 3866
    :cond_29
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3867
    .local v1, "ch1":C
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3868
    .local v3, "ch2":C
    const/16 v5, 0x30

    if-lt v1, v5, :cond_56

    const/16 v6, 0x39

    if-gt v1, v6, :cond_56

    if-lt v3, v5, :cond_56

    if-le v3, v6, :cond_42

    goto :goto_56

    .line 3871
    :cond_42
    add-int/lit8 v5, v1, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v3, -0x30

    add-int/2addr v5, v6

    .line 3872
    .local v5, "value":I
    if-ltz v5, :cond_55

    const/16 v6, 0x3b

    if-le v5, v6, :cond_50

    goto :goto_55

    .line 3875
    :cond_50
    aput v5, p4, p3

    .line 3876
    aput v4, p4, v0

    .line 3877
    return v2

    .line 3873
    :cond_55
    :goto_55
    return v0

    .line 3869
    .end local v5    # "value":I
    :cond_56
    :goto_56
    return v0
.end method

.method private blacklist parseHour(Ljava/lang/CharSequence;Z[I)V
    .registers 6
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "paddedHour"    # Z
    .param p3, "array"    # [I

    .line 3819
    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 3821
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3822
    aget v0, p3, v1

    not-int v0, v0

    aput v0, p3, v1

    goto :goto_14

    .line 3826
    :cond_10
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, p3}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3828
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist parseMinute(Ljava/lang/CharSequence;ZZ[I)V
    .registers 7
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "mandatory"    # Z
    .param p4, "array"    # [I

    .line 3831
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3832
    if-eqz p3, :cond_f

    .line 3833
    const/4 v0, 0x0

    aget v1, p4, v0

    not-int v1, v1

    aput v1, p4, v0

    .line 3836
    :cond_f
    return-void
.end method

.method private blacklist parseOptionalMinuteSecond(Ljava/lang/CharSequence;Z[I)V
    .registers 5
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "array"    # [I

    .line 3847
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3848
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    .line 3850
    :cond_b
    return-void
.end method

.method private blacklist parseSecond(Ljava/lang/CharSequence;ZZ[I)V
    .registers 7
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "mandatory"    # Z
    .param p4, "array"    # [I

    .line 3839
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3840
    if-eqz p3, :cond_f

    .line 3841
    const/4 v0, 0x0

    aget v1, p4, v0

    not-int v1, v1

    aput v1, p4, v0

    .line 3844
    :cond_f
    return-void
.end method

.method private blacklist parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V
    .registers 16
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "array"    # [I

    .line 3884
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 3885
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 3886
    .local v2, "available":I
    new-array v3, p3, [C

    .line 3887
    .local v3, "chars":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    const/16 v5, 0x30

    if-ge v4, p3, :cond_2d

    .line 3888
    add-int/lit8 v6, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_14

    .line 3889
    goto :goto_2d

    .line 3891
    :cond_14
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3892
    .local v1, "ch":C
    if-lt v1, v5, :cond_2a

    const/16 v7, 0x39

    if-le v1, v7, :cond_21

    goto :goto_2a

    .line 3896
    :cond_21
    aput-char v1, v3, v4

    .line 3897
    nop

    .end local v1    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 3887
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_7

    .line 3893
    .restart local v1    # "ch":C
    :cond_2a
    :goto_2a
    add-int/lit8 v6, v6, -0x1

    .line 3894
    move v1, v6

    .line 3899
    .end local v4    # "i":I
    .end local v6    # "pos":I
    .local v1, "pos":I
    :cond_2d
    :goto_2d
    if-ge v2, p2, :cond_35

    .line 3900
    aget v4, p4, v0

    not-int v4, v4

    aput v4, p4, v0

    .line 3901
    return-void

    .line 3903
    :cond_35
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_ba

    goto/16 :goto_b7

    .line 3924
    :pswitch_3e
    aget-char v9, v3, v0

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    aget-char v10, v3, v8

    sub-int/2addr v10, v5

    add-int/2addr v9, v10

    aput v9, p4, v8

    .line 3925
    aget-char v8, v3, v7

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    aget-char v9, v3, v6

    sub-int/2addr v9, v5

    add-int/2addr v8, v9

    aput v8, p4, v7

    .line 3926
    aget-char v4, v3, v4

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    const/4 v7, 0x5

    aget-char v7, v3, v7

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    aput v4, p4, v6

    goto :goto_b7

    .line 3919
    :pswitch_61
    aget-char v9, v3, v0

    sub-int/2addr v9, v5

    aput v9, p4, v8

    .line 3920
    aget-char v8, v3, v8

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    aget-char v9, v3, v7

    sub-int/2addr v9, v5

    add-int/2addr v8, v9

    aput v8, p4, v7

    .line 3921
    aget-char v7, v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    aget-char v4, v3, v4

    sub-int/2addr v4, v5

    add-int/2addr v7, v4

    aput v7, p4, v6

    .line 3922
    goto :goto_b7

    .line 3915
    :pswitch_7d
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v9, v3, v8

    sub-int/2addr v9, v5

    add-int/2addr v4, v9

    aput v4, p4, v8

    .line 3916
    aget-char v4, v3, v7

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v6

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v7

    .line 3917
    goto :goto_b7

    .line 3911
    :pswitch_94
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    aput v4, p4, v8

    .line 3912
    aget-char v4, v3, v8

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v7

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v7

    .line 3913
    goto :goto_b7

    .line 3908
    :pswitch_a5
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v8

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v8

    .line 3909
    goto :goto_b7

    .line 3905
    :pswitch_b1
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    aput v4, p4, v8

    .line 3906
    nop

    .line 3929
    :goto_b7
    aput v1, p4, v0

    .line 3930
    return-void

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_a5
        :pswitch_94
        :pswitch_7d
        :pswitch_61
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 14
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3663
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3664
    .local v0, "offsetSecs":Ljava/lang/Long;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 3665
    return v1

    .line 3667
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    .line 3668
    .local v2, "totalSecs":I
    const/4 v3, 0x1

    if-nez v2, :cond_1c

    .line 3669
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_99

    .line 3671
    :cond_1c
    div-int/lit16 v4, v2, 0xe10

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3672
    .local v4, "absHours":I
    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3673
    .local v5, "absMinutes":I
    rem-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3674
    .local v6, "absSeconds":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 3675
    .local v7, "bufPos":I
    move v8, v4

    .line 3676
    .local v8, "output":I
    if-gez v2, :cond_3c

    const-string v9, "-"

    goto :goto_3e

    :cond_3c
    const-string v9, "+"

    :goto_3e
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3677
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isPaddedHour()Z

    move-result v9

    if-nez v9, :cond_53

    const/16 v9, 0xa

    if-lt v4, v9, :cond_4c

    goto :goto_53

    .line 3680
    :cond_4c
    add-int/lit8 v1, v4, 0x30

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 3678
    :cond_53
    :goto_53
    invoke-direct {p0, v1, v4, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    .line 3682
    :goto_56
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x3

    const/16 v10, 0x8

    if-lt v1, v9, :cond_61

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-le v1, v10, :cond_6f

    :cond_61
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/16 v9, 0x9

    if-lt v1, v9, :cond_69

    if-gtz v6, :cond_6f

    :cond_69
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-lt v1, v3, :cond_8f

    if-lez v5, :cond_8f

    .line 3683
    :cond_6f
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v1

    invoke-direct {p0, v1, v5, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    .line 3684
    add-int/2addr v8, v5

    .line 3685
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x7

    if-eq v1, v9, :cond_87

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-eq v1, v10, :cond_87

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x5

    if-lt v1, v9, :cond_8f

    if-lez v6, :cond_8f

    .line 3686
    :cond_87
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v1

    invoke-direct {p0, v1, v6, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    .line 3687
    add-int/2addr v8, v6

    .line 3690
    :cond_8f
    if-nez v8, :cond_99

    .line 3691
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3692
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3695
    .end local v4    # "absHours":I
    .end local v5    # "absMinutes":I
    .end local v6    # "absSeconds":I
    .end local v7    # "bufPos":I
    .end local v8    # "output":I
    :cond_99
    :goto_99
    return v3
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 24
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3706
    move-object/from16 v0, p0

    move/from16 v5, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 3707
    .local v7, "length":I
    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3708
    .local v8, "noOffsetLen":I
    if-nez v8, :cond_23

    .line 3709
    if-ne v5, v7, :cond_1f

    .line 3710
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move/from16 v6, p3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 3709
    :cond_1f
    move v9, v8

    move-object/from16 v8, p2

    goto :goto_48

    .line 3713
    :cond_23
    if-ne v5, v7, :cond_27

    .line 3714
    not-int v1, v5

    return v1

    .line 3716
    :cond_27
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v6, v8

    .end local v8    # "noOffsetLen":I
    .local v6, "noOffsetLen":I
    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    move-object v8, v2

    move v9, v6

    .end local v6    # "noOffsetLen":I
    .local v9, "noOffsetLen":I
    if-eqz v4, :cond_48

    .line 3717
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    add-int v6, p3, v9

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 3722
    :cond_48
    :goto_48
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3723
    .local v10, "sign":C
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v10, v1, :cond_54

    if-ne v10, v2, :cond_14a

    .line 3725
    :cond_54
    const/4 v1, 0x1

    if-ne v10, v2, :cond_59

    const/4 v2, -0x1

    goto :goto_5a

    :cond_59
    move v2, v1

    :goto_5a
    move v11, v2

    .line 3726
    .local v11, "negative":I
    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v2

    .line 3727
    .local v2, "isColon":Z
    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isPaddedHour()Z

    move-result v12

    .line 3728
    .local v12, "paddedHour":Z
    const/4 v3, 0x4

    new-array v13, v3, [I

    .line 3729
    .local v13, "array":[I
    add-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    aput v4, v13, v5

    .line 3730
    iget v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3732
    .local v4, "parseType":I
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-nez v6, :cond_b9

    .line 3733
    const/16 v6, 0x3a

    if-eqz v12, :cond_93

    .line 3734
    if-nez v2, :cond_8d

    if-nez v4, :cond_88

    add-int/lit8 v14, p3, 0x3

    if-le v7, v14, :cond_88

    add-int/lit8 v14, p3, 0x3

    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v6, :cond_88

    goto :goto_8d

    .line 3738
    :cond_88
    const/16 v4, 0x9

    move v14, v2

    move v15, v4

    goto :goto_bb

    .line 3735
    :cond_8d
    :goto_8d
    const/4 v2, 0x1

    .line 3736
    const/16 v4, 0xa

    move v14, v2

    move v15, v4

    goto :goto_bb

    .line 3741
    :cond_93
    if-nez v2, :cond_b3

    const/16 v14, 0xb

    if-ne v4, v14, :cond_ae

    add-int/lit8 v14, p3, 0x3

    if-le v7, v14, :cond_ae

    add-int/lit8 v14, p3, 0x2

    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-eq v14, v6, :cond_b3

    add-int/lit8 v14, p3, 0x3

    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v6, :cond_ae

    goto :goto_b3

    .line 3745
    :cond_ae
    const/16 v4, 0x14

    move v14, v2

    move v15, v4

    goto :goto_bb

    .line 3742
    :cond_b3
    :goto_b3
    const/4 v2, 0x1

    .line 3743
    const/16 v4, 0x15

    move v14, v2

    move v15, v4

    goto :goto_bb

    .line 3732
    :cond_b9
    move v14, v2

    move v15, v4

    .line 3750
    .end local v2    # "isColon":Z
    .end local v4    # "parseType":I
    .local v14, "isColon":Z
    .local v15, "parseType":I
    :goto_bb
    const/4 v2, 0x6

    const/4 v4, 0x3

    packed-switch v15, :pswitch_data_160

    goto :goto_103

    .line 3800
    :pswitch_c1
    invoke-direct {v0, v8, v1, v2, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_103

    .line 3797
    :pswitch_c5
    const/4 v3, 0x5

    invoke-direct {v0, v8, v3, v2, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3798
    goto :goto_103

    .line 3794
    :pswitch_ca
    invoke-direct {v0, v8, v4, v2, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3795
    goto :goto_103

    .line 3791
    :pswitch_ce
    invoke-direct {v0, v8, v4, v3, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3792
    goto :goto_103

    .line 3788
    :pswitch_d2
    invoke-direct {v0, v8, v1, v3, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3789
    goto :goto_103

    .line 3784
    :pswitch_d6
    invoke-direct {v0, v8, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3785
    invoke-direct {v0, v8, v14, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseOptionalMinuteSecond(Ljava/lang/CharSequence;Z[I)V

    .line 3786
    goto :goto_103

    .line 3777
    :pswitch_dd
    invoke-direct {v0, v8, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3778
    invoke-direct {v0, v8, v14, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3779
    invoke-direct {v0, v8, v14, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseSecond(Ljava/lang/CharSequence;ZZ[I)V

    .line 3780
    goto :goto_103

    .line 3770
    :pswitch_e7
    invoke-direct {v0, v8, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3771
    invoke-direct {v0, v8, v14, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3772
    invoke-direct {v0, v8, v14, v5, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseSecond(Ljava/lang/CharSequence;ZZ[I)V

    .line 3773
    goto :goto_103

    .line 3764
    :pswitch_f1
    invoke-direct {v0, v8, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3765
    invoke-direct {v0, v8, v14, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3766
    goto :goto_103

    .line 3758
    :pswitch_f8
    invoke-direct {v0, v8, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3759
    invoke-direct {v0, v8, v14, v5, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3760
    goto :goto_103

    .line 3753
    :pswitch_ff
    invoke-direct {v0, v8, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3754
    nop

    .line 3803
    :goto_103
    aget v2, v13, v5

    if-lez v2, :cond_14a

    .line 3804
    aget v2, v13, v1

    const/16 v3, 0x17

    if-gt v2, v3, :cond_142

    const/4 v2, 0x2

    aget v3, v13, v2

    const/16 v6, 0x3b

    if-gt v3, v6, :cond_142

    aget v3, v13, v4

    if-gt v3, v6, :cond_142

    .line 3807
    move v3, v1

    move v6, v2

    int-to-long v1, v11

    aget v3, v13, v3

    move/from16 v17, v4

    move/from16 v16, v5

    int-to-long v4, v3

    const-wide/16 v18, 0xe10

    mul-long v4, v4, v18

    aget v3, v13, v6

    move-wide/from16 v18, v1

    int-to-long v0, v3

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    aget v0, v13, v17

    int-to-long v0, v0

    add-long/2addr v4, v0

    mul-long v3, v18, v4

    .line 3808
    .local v3, "offsetSecs":J
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    aget v6, v13, v16

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    .line 3805
    .end local v3    # "offsetSecs":J
    :cond_142
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Value out of range: Hour[0-23], Minute[0-59], Second[0-59]"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3812
    .end local v11    # "negative":I
    .end local v12    # "paddedHour":Z
    .end local v13    # "array":[I
    .end local v14    # "isColon":Z
    .end local v15    # "parseType":I
    :cond_14a
    if-nez v9, :cond_15b

    .line 3813
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move/from16 v6, p3

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    .line 3815
    :cond_15b
    move/from16 v5, p3

    not-int v0, v5

    return v0

    nop

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_f8
        :pswitch_f8
        :pswitch_f1
        :pswitch_f1
        :pswitch_e7
        :pswitch_e7
        :pswitch_dd
        :pswitch_dd
        :pswitch_d6
        :pswitch_d6
        :pswitch_ff
        :pswitch_d2
        :pswitch_f8
        :pswitch_ce
        :pswitch_f1
        :pswitch_ca
        :pswitch_e7
        :pswitch_c5
        :pswitch_dd
        :pswitch_c1
        :pswitch_d6
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3934
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3935
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
