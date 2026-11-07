.class public final Landroid/icu/impl/UTS46;
.super Landroid/icu/text/IDNA;
.source "UTS46.java"


# static fields
.field private static final blacklist EN_AN_MASK:I

.field private static final blacklist ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final blacklist L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final blacklist L_EN_MASK:I

.field private static final blacklist L_MASK:I

.field private static final blacklist L_R_AL_MASK:I

.field private static final blacklist R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final blacklist R_AL_AN_MASK:I

.field private static final blacklist R_AL_EN_AN_MASK:I

.field private static final blacklist R_AL_MASK:I

.field private static blacklist U_GC_M_MASK:I

.field private static final blacklist asciiData:[B

.field private static final blacklist severeErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist uts46Norm2:Landroid/icu/text/Normalizer2;


# instance fields
.field final blacklist options:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 69
    sget-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    .line 70
    const/4 v1, 0x0

    const-string v2, "uts46"

    invoke-static {v1, v2, v0}, Landroid/icu/text/Normalizer2;->getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    .line 74
    sget-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    sget-object v2, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    sget-object v3, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    sget-object v4, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    .line 99
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_b8

    sput-object v0, Landroid/icu/impl/UTS46;->asciiData:[B

    .line 541
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UTS46;->L_MASK:I

    .line 542
    nop

    .line 543
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    .line 544
    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    .line 545
    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    sget v1, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    .line 547
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    .line 549
    nop

    .line 550
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    .line 551
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v1, v2

    sput v1, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    .line 552
    sget v1, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v2, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    or-int/2addr v1, v2

    sput v1, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    .line 553
    sget v1, Landroid/icu/impl/UTS46;->L_MASK:I

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    .line 555
    nop

    .line 556
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    .line 557
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 558
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 559
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 560
    const/16 v2, 0x12

    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 561
    const/16 v2, 0x11

    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    .line 562
    sget v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    sget v2, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    .line 563
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v2, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    or-int/2addr v0, v2

    sget v2, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    .line 859
    nop

    .line 860
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    .line 861
    const/4 v1, 0x7

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 862
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    .line 859
    return-void

    nop

    :array_b8
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "options"    # I

    .line 38
    invoke-direct {p0}, Landroid/icu/text/IDNA;-><init>()V

    .line 39
    iput p1, p0, Landroid/icu/impl/UTS46;->options:I

    .line 40
    return-void
.end method

.method private static blacklist U_GET_GC_MASK(I)I
    .registers 3
    .param p0, "c"    # I

    .line 857
    const/4 v0, 0x1

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method private static blacklist U_MASK(I)I
    .registers 2
    .param p0, "x"    # I

    .line 854
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private blacklist checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .registers 13
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "info"    # Landroid/icu/text/IDNA$Info;

    .line 575
    move v0, p2

    .line 576
    .local v0, "i":I
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 577
    .local v1, "c":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 578
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    .line 582
    .local v2, "firstMask":I
    sget v3, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    not-int v3, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1d

    .line 583
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 587
    :cond_1d
    add-int v3, p2, p3

    .line 589
    .local v3, "labelLimit":I
    :goto_1f
    if-lt v0, v3, :cond_23

    .line 590
    move v4, v2

    .line 591
    .local v4, "lastMask":I
    goto :goto_3b

    .line 593
    .end local v4    # "lastMask":I
    :cond_23
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 594
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 595
    sget-object v4, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v4, v1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v4

    .line 596
    .local v4, "dir":I
    const/16 v5, 0x11

    if-eq v4, v5, :cond_94

    .line 597
    invoke-static {v4}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    .line 598
    .local v5, "lastMask":I
    move v4, v5

    .line 607
    .end local v5    # "lastMask":I
    .local v4, "lastMask":I
    :goto_3b
    sget v5, Landroid/icu/impl/UTS46;->L_MASK:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_47

    sget v5, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    not-int v5, v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_50

    goto :goto_4d

    :cond_47
    sget v5, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    not-int v5, v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_50

    .line 611
    :goto_4d
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 614
    :cond_50
    or-int v5, v2, v4

    .line 615
    .local v5, "mask":I
    :goto_52
    if-ge v0, v3, :cond_69

    .line 616
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 617
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 618
    sget-object v6, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v6, v1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v6

    or-int/2addr v5, v6

    goto :goto_52

    .line 620
    :cond_69
    sget v6, Landroid/icu/impl/UTS46;->L_MASK:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_78

    .line 623
    sget v6, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    not-int v6, v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_8b

    .line 624
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    goto :goto_8b

    .line 629
    :cond_78
    sget v6, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    not-int v6, v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_81

    .line 630
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 634
    :cond_81
    sget v6, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    and-int/2addr v6, v5

    sget v7, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    if-ne v6, v7, :cond_8b

    .line 635
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 644
    :cond_8b
    :goto_8b
    sget v6, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_93

    .line 645
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 647
    :cond_93
    return-void

    .line 600
    .end local v4    # "lastMask":I
    .end local v5    # "mask":I
    :cond_94
    goto :goto_1f
.end method

.method private blacklist checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .registers 12
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "info"    # Landroid/icu/text/IDNA$Info;

    .line 764
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 765
    .local v0, "labelEnd":I
    const/4 v1, 0x0

    .line 766
    .local v1, "arabicDigits":I
    move v2, p2

    .local v2, "i":I
    :goto_6
    if-gt v2, v0, :cond_b7

    .line 767
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 768
    .local v3, "c":I
    const/16 v4, 0xb7

    if-ge v3, v4, :cond_12

    goto/16 :goto_b3

    .line 770
    :cond_12
    const/16 v5, 0x6f9

    if-gt v3, v5, :cond_8b

    .line 771
    if-ne v3, v4, :cond_35

    .line 777
    if-ge p2, v2, :cond_2e

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_2e

    if-ge v2, v0, :cond_2e

    add-int/lit8 v4, v2, 0x1

    .line 778
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_b3

    .line 779
    :cond_2e
    sget-object v4, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_b3

    .line 781
    :cond_35
    const/16 v4, 0x375

    if-ne v3, v4, :cond_50

    .line 786
    if-ge v2, v0, :cond_49

    add-int/lit8 v4, v2, 0x1

    .line 787
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v4

    const/16 v5, 0xe

    if-eq v5, v4, :cond_b3

    .line 788
    :cond_49
    sget-object v4, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_b3

    .line 790
    :cond_50
    const/16 v4, 0x5f3

    if-eq v3, v4, :cond_77

    const/16 v4, 0x5f4

    if-ne v3, v4, :cond_59

    goto :goto_77

    .line 804
    :cond_59
    const/16 v4, 0x660

    if-gt v4, v3, :cond_b3

    .line 818
    const/16 v4, 0x669

    if-gt v3, v4, :cond_6a

    .line 819
    if-lez v1, :cond_68

    .line 820
    sget-object v4, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 822
    :cond_68
    const/4 v1, -0x1

    goto :goto_b3

    .line 823
    :cond_6a
    const/16 v4, 0x6f0

    if-gt v4, v3, :cond_b3

    .line 824
    if-gez v1, :cond_75

    .line 825
    sget-object v4, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 827
    :cond_75
    const/4 v1, 0x1

    goto :goto_b3

    .line 800
    :cond_77
    :goto_77
    if-ge p2, v2, :cond_85

    .line 801
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v4

    const/16 v5, 0x13

    if-eq v5, v4, :cond_b3

    .line 802
    :cond_85
    sget-object v4, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_b3

    .line 830
    :cond_8b
    const/16 v4, 0x30fb

    if-ne v3, v4, :cond_b3

    .line 837
    move v4, p2

    .line 838
    .local v4, "j":I
    :goto_90
    if-le v4, v0, :cond_98

    .line 839
    sget-object v5, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 840
    goto :goto_b3

    .line 842
    :cond_98
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 843
    invoke-static {v3}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v5

    .line 844
    .local v5, "script":I
    const/16 v6, 0x14

    if-eq v5, v6, :cond_b3

    const/16 v6, 0x16

    if-eq v5, v6, :cond_b3

    const/16 v6, 0x11

    if-ne v5, v6, :cond_ad

    .line 845
    goto :goto_b3

    .line 837
    .end local v5    # "script":I
    :cond_ad
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_90

    .line 766
    .end local v3    # "c":I
    .end local v4    # "j":I
    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 850
    .end local v2    # "i":I
    :cond_b7
    return-void
.end method

.method private static blacklist isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "length"    # I

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "labelStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_44

    .line 666
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 667
    .local v2, "c":C
    const/16 v3, 0x2e

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/4 v6, 0x0

    if-ne v2, v3, :cond_29

    .line 668
    if-le v1, v0, :cond_26

    .line 669
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 670
    if-gt v5, v2, :cond_1d

    if-le v2, v4, :cond_26

    :cond_1d
    const/16 v3, 0x30

    if-gt v3, v2, :cond_25

    const/16 v3, 0x39

    if-le v2, v3, :cond_26

    .line 672
    :cond_25
    return v6

    .line 675
    :cond_26
    add-int/lit8 v0, v1, 0x1

    goto :goto_41

    .line 676
    :cond_29
    if-ne v1, v0, :cond_30

    .line 677
    if-gt v5, v2, :cond_2f

    if-le v2, v4, :cond_41

    .line 679
    :cond_2f
    return v6

    .line 682
    :cond_30
    const/16 v3, 0x20

    if-gt v2, v3, :cond_41

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_40

    const/16 v3, 0x9

    if-gt v3, v2, :cond_41

    const/16 v3, 0xd

    if-gt v2, v3, :cond_41

    .line 684
    :cond_40
    return v6

    .line 665
    .end local v2    # "c":C
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 688
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist isASCIIString(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "dest"    # Ljava/lang/CharSequence;

    .line 83
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 84
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_14

    .line 85
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_11

    .line 86
    const/4 v2, 0x0

    return v2

    .line 84
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 89
    .end local v1    # "i":I
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isLabelOkContextJ(Ljava/lang/CharSequence;II)Z
    .registers 13
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I

    .line 695
    add-int v0, p2, p3

    .line 696
    .local v0, "labelLimit":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_7e

    .line 697
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x200c

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-ne v2, v3, :cond_62

    .line 704
    if-ne v1, p2, :cond_13

    .line 705
    return v5

    .line 708
    :cond_13
    move v2, v1

    .line 709
    .local v2, "j":I
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 710
    .local v3, "c":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 711
    sget-object v6, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v6, v3}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v6

    if-ne v6, v4, :cond_26

    .line 712
    goto :goto_7b

    .line 716
    :cond_26
    :goto_26
    sget-object v4, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v4, v3}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v4

    .line 717
    .local v4, "type":I
    const/4 v6, 0x5

    if-ne v4, v6, :cond_3c

    .line 718
    if-nez v2, :cond_32

    .line 719
    return v5

    .line 721
    :cond_32
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 722
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 728
    .end local v4    # "type":I
    goto :goto_26

    .line 723
    .restart local v4    # "type":I
    :cond_3c
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v4, v7, :cond_44

    if-ne v4, v8, :cond_43

    .line 724
    goto :goto_44

    .line 726
    :cond_43
    return v5

    .line 730
    .end local v4    # "type":I
    :cond_44
    :goto_44
    add-int/lit8 v2, v1, 0x1

    .line 731
    :goto_46
    if-ne v2, v0, :cond_49

    .line 732
    return v5

    .line 734
    :cond_49
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 735
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 736
    sget-object v4, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v4, v3}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v4

    .line 737
    .restart local v4    # "type":I
    if-ne v4, v6, :cond_5b

    .line 744
    .end local v4    # "type":I
    goto :goto_46

    .line 739
    .restart local v4    # "type":I
    :cond_5b
    const/4 v6, 0x4

    if-eq v4, v6, :cond_7a

    if-ne v4, v8, :cond_61

    .line 740
    goto :goto_7a

    .line 742
    :cond_61
    return v5

    .line 745
    .end local v2    # "j":I
    .end local v3    # "c":I
    .end local v4    # "type":I
    :cond_62
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x200d

    if-ne v2, v3, :cond_7a

    .line 750
    if-ne v1, p2, :cond_6d

    .line 751
    return v5

    .line 753
    :cond_6d
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 754
    .local v2, "c":I
    sget-object v3, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v2}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v3

    if-eq v3, v4, :cond_7b

    .line 755
    return v5

    .line 745
    .end local v2    # "c":I
    :cond_7a
    :goto_7a
    nop

    .line 696
    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 759
    .end local v1    # "i":I
    :cond_7e
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist mapDevChars(Ljava/lang/StringBuilder;II)I
    .registers 10
    .param p1, "dest"    # Ljava/lang/StringBuilder;
    .param p2, "labelStart"    # I
    .param p3, "mappingStart"    # I

    .line 267
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 268
    .local v0, "length":I
    const/4 v1, 0x0

    .line 269
    .local v1, "didMapDevChars":Z
    move v2, p3

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_36

    .line 270
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 271
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_52

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 285
    :sswitch_12
    const/4 v1, 0x1

    .line 286
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v0, v0, -0x1

    .line 288
    goto :goto_35

    .line 280
    :sswitch_1b
    const/4 v1, 0x1

    .line 281
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3c3

    invoke-virtual {p1, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 282
    move v2, v4

    goto :goto_35

    .line 274
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :sswitch_25
    const/4 v1, 0x1

    .line 275
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    const/16 v5, 0x73

    invoke-virtual {p1, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 276
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    nop

    .line 293
    .end local v3    # "c":C
    :goto_35
    goto :goto_6

    .line 294
    .end local v2    # "i":I
    :cond_36
    if-eqz v1, :cond_51

    .line 298
    sget-object v2, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "normalized":Ljava/lang/String;
    const v3, 0x7fffffff

    invoke-virtual {p1, p2, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    return v3

    .line 302
    .end local v2    # "normalized":Ljava/lang/String;
    :cond_51
    return v0

    :sswitch_data_52
    .sparse-switch
        0xdf -> :sswitch_25
        0x3c2 -> :sswitch_1b
        0x200c -> :sswitch_12
        0x200d -> :sswitch_12
    .end sparse-switch
.end method

.method private blacklist markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .registers 15
    .param p1, "dest"    # Ljava/lang/StringBuilder;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "toASCII"    # Z
    .param p5, "info"    # Landroid/icu/text/IDNA$Info;

    .line 507
    iget v0, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 508
    .local v0, "disallowNonLDHDot":Z
    :goto_a
    const/4 v2, 0x1

    .line 509
    .local v2, "isASCII":Z
    const/4 v3, 0x1

    .line 510
    .local v3, "onlyLDH":Z
    add-int v4, p2, p3

    .line 512
    .local v4, "limit":I
    add-int/lit8 v5, p2, 0x4

    .local v5, "i":I
    :goto_10
    const v6, 0xfffd

    if-ge v5, v4, :cond_3f

    .line 513
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 514
    .local v7, "c":C
    const/16 v8, 0x7f

    if-gt v7, v8, :cond_3a

    .line 515
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_2c

    .line 516
    sget-object v8, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    invoke-static {p5, v8}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 517
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 518
    move v3, v1

    move v2, v1

    goto :goto_3c

    .line 519
    :cond_2c
    sget-object v8, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v8, v8, v7

    if-gez v8, :cond_3c

    .line 520
    const/4 v3, 0x0

    .line 521
    if-eqz v0, :cond_3c

    .line 522
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 523
    const/4 v2, 0x0

    goto :goto_3c

    .line 527
    :cond_3a
    move v3, v1

    move v2, v1

    .line 512
    .end local v7    # "c":C
    :cond_3c
    :goto_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 530
    .end local v5    # "i":I
    :cond_3f
    if-eqz v3, :cond_49

    .line 531
    add-int v1, p2, p3

    invoke-virtual {p1, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 532
    add-int/lit8 p3, p3, 0x1

    goto :goto_56

    .line 534
    :cond_49
    if-eqz p4, :cond_56

    if-eqz v2, :cond_56

    const/16 v1, 0x3f

    if-le p3, v1, :cond_56

    .line 535
    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {p5, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 538
    :cond_56
    :goto_56
    return p3
.end method

.method private blacklist process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .registers 17
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "isLabel"    # Z
    .param p3, "toASCII"    # Z
    .param p4, "dest"    # Ljava/lang/StringBuilder;
    .param p5, "info"    # Landroid/icu/text/IDNA$Info;

    .line 122
    move-object/from16 v7, p5

    if-eq p4, p1, :cond_e7

    .line 126
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {v7}, Landroid/icu/impl/UTS46;->resetInfo(Landroid/icu/text/IDNA$Info;)V

    .line 128
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 129
    .local v8, "srcLength":I
    if-nez v8, :cond_1a

    .line 130
    sget-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 131
    return-object p4

    .line 134
    :cond_1a
    iget v0, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    move v9, v1

    .line 135
    .local v9, "disallowNonLDHDot":Z
    const/4 v0, 0x0

    .line 137
    .local v0, "labelStart":I
    const/4 v1, 0x0

    move v2, v0

    .line 138
    .end local v0    # "labelStart":I
    .local v1, "i":I
    .local v2, "labelStart":I
    :goto_25
    const/16 v0, 0x3f

    if-ne v1, v8, :cond_47

    .line 139
    if-eqz p3, :cond_43

    .line 140
    sub-int v3, v1, v2

    if-le v3, v0, :cond_34

    .line 141
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 144
    :cond_34
    if-nez p2, :cond_43

    const/16 v0, 0xfe

    if-lt v1, v0, :cond_43

    if-gt v1, v0, :cond_3e

    if-ge v2, v1, :cond_43

    .line 145
    :cond_3e
    sget-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 148
    :cond_43
    invoke-static {v7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    .line 149
    return-object p4

    .line 151
    :cond_47
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 152
    .local v3, "c":C
    const/16 v4, 0x7f

    if-le v3, v4, :cond_50

    .line 153
    goto :goto_63

    .line 155
    :cond_50
    sget-object v4, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v4, v4, v3

    .line 156
    .local v4, "cData":I
    if-lez v4, :cond_5e

    .line 157
    add-int/lit8 v0, v3, 0x20

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_e3

    .line 158
    :cond_5e
    if-gez v4, :cond_65

    if-eqz v9, :cond_65

    .line 159
    nop

    .line 193
    .end local v3    # "c":C
    .end local v4    # "cData":I
    :goto_63
    move v3, v1

    goto :goto_9e

    .line 161
    .restart local v3    # "c":C
    .restart local v4    # "cData":I
    :cond_65
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    const/16 v5, 0x2e

    const/16 v10, 0x2d

    if-ne v3, v10, :cond_97

    .line 163
    add-int/lit8 v0, v2, 0x3

    if-ne v1, v0, :cond_7e

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_7e

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    move v3, v1

    goto :goto_9e

    .line 168
    :cond_7e
    if-ne v1, v2, :cond_85

    .line 170
    sget-object v0, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 172
    :cond_85
    add-int/lit8 v0, v1, 0x1

    if-eq v0, v8, :cond_91

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_e3

    .line 174
    :cond_91
    sget-object v0, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_e3

    .line 176
    :cond_97
    if-ne v3, v5, :cond_e3

    .line 177
    if-eqz p2, :cond_cb

    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    move v3, v1

    .line 193
    .end local v1    # "i":I
    .end local v4    # "cData":I
    .local v3, "i":I
    :goto_9e
    invoke-static {v7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    .line 194
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/UTS46;->processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v7}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v0

    if-eqz v0, :cond_ca

    sget-object v0, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 196
    invoke-static {v7}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v0

    if-eqz v0, :cond_c5

    if-lez v2, :cond_ca

    invoke-static {p4, v2}, Landroid/icu/impl/UTS46;->isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 198
    :cond_c5
    sget-object v0, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 200
    :cond_ca
    return-object p4

    .line 182
    .restart local v1    # "i":I
    .local v3, "c":C
    .restart local v4    # "cData":I
    :cond_cb
    if-ne v1, v2, :cond_d2

    .line 183
    sget-object v5, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 185
    :cond_d2
    if-eqz p3, :cond_dd

    sub-int v5, v1, v2

    if-le v5, v0, :cond_dd

    .line 186
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v7, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 188
    :cond_dd
    invoke-static {v7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v2, v0

    .line 137
    .end local v3    # "c":C
    .end local v4    # "cData":I
    :cond_e3
    :goto_e3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25

    .line 123
    .end local v1    # "i":I
    .end local v2    # "labelStart":I
    .end local v8    # "srcLength":I
    .end local v9    # "disallowNonLDHDot":Z
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .registers 25
    .param p1, "dest"    # Ljava/lang/StringBuilder;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "toASCII"    # Z
    .param p5, "info"    # Landroid/icu/text/IDNA$Info;

    .line 329
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v6, p5

    move/from16 v4, p2

    .line 330
    .local v4, "destLabelStart":I
    move/from16 v5, p3

    .line 332
    .local v5, "destLabelLength":I
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x2d

    const/4 v9, 0x4

    if-lt v3, v9, :cond_87

    .line 333
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_87

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x6e

    if-ne v10, v11, :cond_87

    add-int/lit8 v10, p2, 0x2

    .line 334
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_87

    add-int/lit8 v10, p2, 0x3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_87

    .line 343
    if-eq v3, v9, :cond_7d

    const/4 v10, 0x5

    if-le v3, v10, :cond_44

    add-int v10, p2, v3

    sub-int/2addr v10, v7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_44

    goto :goto_7d

    .line 347
    :cond_44
    const/4 v10, 0x1

    .line 349
    .local v10, "wasPunycode":Z
    add-int/lit8 v11, p2, 0x4

    add-int v12, p2, v3

    :try_start_49
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11, v0}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_51
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_49 .. :try_end_51} :catch_72

    .line 353
    .local v11, "fromPunycode":Ljava/lang/StringBuilder;
    nop

    .line 361
    sget-object v12, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v12, v11}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 367
    .local v12, "isValid":Z
    if-eqz v12, :cond_68

    invoke-static {v11}, Landroid/icu/impl/UTS46;->startsWithXNDashDash(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_61

    goto :goto_68

    .line 371
    :cond_61
    move-object v13, v11

    .line 372
    .local v13, "labelString":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 373
    .end local p2    # "labelStart":I
    .local v14, "labelStart":I
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 374
    .end local v12    # "isValid":Z
    .end local p3    # "labelLength":I
    .local v3, "labelLength":I
    goto :goto_8c

    .line 368
    .end local v3    # "labelLength":I
    .end local v13    # "labelString":Ljava/lang/StringBuilder;
    .end local v14    # "labelStart":I
    .restart local v12    # "isValid":Z
    .restart local p2    # "labelStart":I
    .restart local p3    # "labelLength":I
    :cond_68
    :goto_68
    sget-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 369
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 350
    .end local v11    # "fromPunycode":Ljava/lang/StringBuilder;
    .end local v12    # "isValid":Z
    :catch_72
    move-exception v0

    .line 351
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    sget-object v7, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v7}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 352
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v7

    return v7

    .line 344
    .end local v0    # "e":Landroid/icu/text/StringPrepParseException;
    .end local v10    # "wasPunycode":Z
    :cond_7d
    :goto_7d
    sget-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 345
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 375
    :cond_87
    const/4 v10, 0x0

    .line 376
    .restart local v10    # "wasPunycode":Z
    move-object/from16 v13, p1

    move/from16 v14, p2

    .line 379
    .end local p2    # "labelStart":I
    .end local p3    # "labelLength":I
    .restart local v3    # "labelLength":I
    .restart local v13    # "labelString":Ljava/lang/StringBuilder;
    .restart local v14    # "labelStart":I
    :goto_8c
    if-nez v3, :cond_98

    .line 380
    sget-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 381
    invoke-static {v2, v4, v5, v13, v3}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 384
    :cond_98
    if-lt v3, v9, :cond_af

    add-int/lit8 v11, v14, 0x2

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_af

    add-int/lit8 v11, v14, 0x3

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_af

    .line 386
    sget-object v11, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v11}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 388
    :cond_af
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_ba

    .line 390
    sget-object v11, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v11}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 392
    :cond_ba
    add-int v11, v14, v3

    sub-int/2addr v11, v7

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_c8

    .line 394
    sget-object v8, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v8}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 405
    :cond_c8
    move v8, v14

    .line 406
    .local v8, "i":I
    add-int v11, v14, v3

    .line 407
    .local v11, "limit":I
    const/4 v12, 0x0

    .line 409
    .local v12, "oredChars":C
    iget v15, v1, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_d5

    const/16 v16, 0x1

    goto :goto_d7

    :cond_d5
    const/16 v16, 0x0

    .line 411
    .local v16, "disallowNonLDHDot":Z
    :goto_d7
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    .line 412
    .local v15, "c":C
    move/from16 v17, v9

    const/16 v9, 0x7f

    const v7, 0xfffd

    if-gt v15, v9, :cond_102

    .line 413
    const/16 v9, 0x2e

    if-ne v15, v9, :cond_f1

    .line 414
    sget-object v9, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v9}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 415
    invoke-virtual {v13, v8, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_10d

    .line 416
    :cond_f1
    if-eqz v16, :cond_10d

    sget-object v9, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v9, v9, v15

    if-gez v9, :cond_10d

    .line 417
    sget-object v9, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v9}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 418
    invoke-virtual {v13, v8, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_10d

    .line 421
    :cond_102
    or-int v9, v12, v15

    int-to-char v9, v9

    .line 422
    .end local v12    # "oredChars":C
    .local v9, "oredChars":C
    if-ne v15, v7, :cond_10c

    .line 423
    sget-object v12, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v12}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 426
    :cond_10c
    move v12, v9

    .end local v9    # "oredChars":C
    .restart local v12    # "oredChars":C
    :cond_10d
    :goto_10d
    nop

    .end local v15    # "c":C
    add-int/lit8 v8, v8, 0x1

    .line 427
    if-lt v8, v11, :cond_1e9

    .line 432
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v9

    .line 433
    .local v9, "c":I
    invoke-static {v9}, Landroid/icu/impl/UTS46;->U_GET_GC_MASK(I)I

    move-result v15

    sget v18, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    and-int v15, v15, v18

    if-eqz v15, :cond_13c

    .line 434
    sget-object v15, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v15}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 435
    invoke-virtual {v13, v14, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 436
    const v7, 0xffff

    if-le v9, v7, :cond_13c

    .line 438
    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 439
    add-int/lit8 v3, v3, -0x1

    .line 440
    if-ne v13, v2, :cond_13a

    .line 441
    add-int/lit8 v5, v5, -0x1

    move v7, v3

    goto :goto_13d

    .line 440
    :cond_13a
    move v7, v3

    goto :goto_13d

    .line 445
    :cond_13c
    move v7, v3

    .end local v3    # "labelLength":I
    .local v7, "labelLength":I
    :goto_13d
    sget-object v3, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    invoke-static {v6, v3}, Landroid/icu/impl/UTS46;->hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v3

    if-nez v3, :cond_1d1

    .line 448
    iget v3, v1, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_15a

    invoke-static {v6}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v3

    if-eqz v3, :cond_157

    invoke-static {v6}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 449
    :cond_157
    invoke-direct {v1, v13, v14, v7, v6}, Landroid/icu/impl/UTS46;->checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    .line 451
    :cond_15a
    iget v3, v1, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_171

    and-int/lit16 v3, v12, 0x200c

    const/16 v15, 0x200c

    if-ne v3, v15, :cond_171

    .line 452
    invoke-direct {v1, v13, v14, v7}, Landroid/icu/impl/UTS46;->isLabelOkContextJ(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-nez v3, :cond_171

    .line 454
    sget-object v3, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v3}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 456
    :cond_171
    iget v3, v1, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_17e

    const/16 v3, 0xb7

    if-lt v12, v3, :cond_17e

    .line 457
    invoke-direct {v1, v13, v14, v7, v6}, Landroid/icu/impl/UTS46;->checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    .line 459
    :cond_17e
    if-eqz p4, :cond_1ce

    .line 460
    const/16 v3, 0x3f

    if-eqz v10, :cond_18c

    .line 462
    if-le v5, v3, :cond_18b

    .line 463
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 465
    :cond_18b
    return v5

    .line 466
    :cond_18c
    const/16 v15, 0x80

    if-lt v12, v15, :cond_1bf

    .line 470
    add-int v15, v14, v7

    :try_start_192
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15, v0}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_19a
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_192 .. :try_end_19a} :catch_1b8

    .line 473
    .local v0, "punycode":Ljava/lang/StringBuilder;
    nop

    .line 474
    const-string v15, "xn--"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v15, 0x3f

    if-le v3, v15, :cond_1ae

    .line 476
    sget-object v3, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v3}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 478
    :cond_1ae
    nop

    .line 479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 478
    invoke-static {v2, v4, v5, v0, v3}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v3

    return v3

    .line 471
    .end local v0    # "punycode":Ljava/lang/StringBuilder;
    :catch_1b8
    move-exception v0

    .line 472
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    new-instance v3, Landroid/icu/util/ICUException;

    invoke-direct {v3, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 482
    .end local v0    # "e":Landroid/icu/text/StringPrepParseException;
    :cond_1bf
    const/16 v15, 0x3f

    if-le v7, v15, :cond_1cb

    .line 483
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    move v1, v4

    move v4, v5

    goto :goto_1e4

    .line 482
    :cond_1cb
    move v1, v4

    move v4, v5

    goto :goto_1e4

    .line 459
    :cond_1ce
    move v1, v4

    move v4, v5

    goto :goto_1e4

    .line 490
    :cond_1d1
    if-eqz v10, :cond_1e2

    .line 491
    sget-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 492
    move v3, v4

    move v4, v5

    move/from16 v5, p4

    .end local v5    # "destLabelLength":I
    .local v3, "destLabelStart":I
    .local v4, "destLabelLength":I
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    move v1, v3

    .end local v3    # "destLabelStart":I
    .local v1, "destLabelStart":I
    return v0

    .line 490
    .end local v1    # "destLabelStart":I
    .local v4, "destLabelStart":I
    .restart local v5    # "destLabelLength":I
    :cond_1e2
    move v1, v4

    move v4, v5

    .line 495
    .end local v5    # "destLabelLength":I
    .restart local v1    # "destLabelStart":I
    .local v4, "destLabelLength":I
    :goto_1e4
    invoke-static {v2, v1, v4, v13, v7}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 427
    .end local v1    # "destLabelStart":I
    .end local v7    # "labelLength":I
    .end local v9    # "c":I
    .local v3, "labelLength":I
    .local v4, "destLabelStart":I
    .restart local v5    # "destLabelLength":I
    :cond_1e9
    move v1, v4

    move v4, v3

    const/4 v3, 0x0

    .end local v3    # "labelLength":I
    .restart local v1    # "destLabelStart":I
    .local v4, "labelLength":I
    move-object/from16 v6, p5

    move v3, v4

    move/from16 v9, v17

    move v4, v1

    move-object/from16 v1, p0

    goto/16 :goto_d7
.end method

.method private blacklist processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .registers 18
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "mappingStart"    # I
    .param p4, "isLabel"    # Z
    .param p5, "toASCII"    # Z
    .param p6, "dest"    # Ljava/lang/StringBuilder;
    .param p7, "info"    # Landroid/icu/text/IDNA$Info;

    .line 209
    move-object/from16 v1, p6

    if-nez p3, :cond_a

    .line 210
    sget-object v0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 212
    :cond_a
    sget-object v0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, p3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 215
    :goto_17
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_23

    iget v3, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2a

    move v0, v2

    goto :goto_2a

    .line 216
    :cond_23
    iget v3, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2a

    move v0, v2

    :cond_2a
    :goto_2a
    nop

    .line 217
    .local v0, "doMapDevChars":Z
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 218
    .local v2, "destLength":I
    move v3, p2

    move v6, v2

    move v7, v3

    move v2, p2

    move p2, v0

    .line 219
    .end local v0    # "doMapDevChars":Z
    .local v2, "labelStart":I
    .local v6, "destLength":I
    .local v7, "labelLimit":I
    .local p2, "doMapDevChars":Z
    :goto_34
    if-ge v7, v6, :cond_c0

    .line 220
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 221
    .local v8, "c":C
    const/16 v0, 0x2e

    if-ne v8, v0, :cond_56

    if-nez p4, :cond_56

    .line 222
    sub-int v3, v7, v2

    .line 223
    .local v3, "labelLength":I
    move-object v0, p0

    move v4, p5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v9

    .line 225
    .local v9, "newLength":I
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    .line 226
    sub-int v4, v9, v3

    add-int/2addr v6, v4

    .line 227
    add-int/lit8 v4, v9, 0x1

    add-int/2addr v4, v2

    move v2, v4

    move v7, v4

    .line 228
    goto :goto_34

    .line 229
    .end local v3    # "labelLength":I
    .end local v9    # "newLength":I
    :cond_56
    const/16 v3, 0xdf

    if-ge v8, v3, :cond_5d

    move-object/from16 v5, p7

    goto :goto_bb

    .line 231
    :cond_5d
    const/16 v4, 0x200d

    if-gt v8, v4, :cond_79

    if-eq v8, v3, :cond_6b

    const/16 v3, 0x3c2

    if-eq v8, v3, :cond_6b

    const/16 v3, 0x200c

    if-lt v8, v3, :cond_79

    .line 232
    :cond_6b
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V

    .line 233
    if-eqz p2, :cond_76

    .line 234
    invoke-direct {p0, v1, v2, v7}, Landroid/icu/impl/UTS46;->mapDevChars(Ljava/lang/StringBuilder;II)I

    move-result v6

    .line 236
    const/4 p2, 0x0

    .line 238
    goto :goto_34

    .line 233
    :cond_76
    move-object/from16 v5, p7

    goto :goto_bb

    .line 240
    :cond_79
    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 241
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v3

    if-eqz v3, :cond_99

    add-int/lit8 v3, v7, 0x1

    if-eq v3, v6, :cond_ab

    add-int/lit8 v3, v7, 0x1

    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_ab

    :cond_96
    move-object/from16 v5, p7

    goto :goto_bb

    :cond_99
    if-eq v7, v2, :cond_ab

    add-int/lit8 v3, v7, -0x1

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_a8

    goto :goto_ab

    :cond_a8
    move-object/from16 v5, p7

    goto :goto_bb

    .line 248
    :cond_ab
    :goto_ab
    sget-object v3, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    move-object/from16 v5, p7

    invoke-static {v5, v3}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 249
    const v3, 0xfffd

    invoke-virtual {v1, v7, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_bb

    .line 240
    :cond_b9
    move-object/from16 v5, p7

    .line 252
    :goto_bb
    nop

    .end local v8    # "c":C
    add-int/lit8 v7, v7, 0x1

    .line 253
    goto/16 :goto_34

    .line 257
    :cond_c0
    move-object/from16 v5, p7

    if-eqz v2, :cond_c6

    if-ge v2, v7, :cond_d0

    .line 258
    :cond_c6
    sub-int v3, v7, v2

    move-object v0, p0

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    .line 259
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    .line 261
    :cond_d0
    return-object p6
.end method

.method private static blacklist replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I
    .registers 6
    .param p0, "dest"    # Ljava/lang/StringBuilder;
    .param p1, "destLabelStart"    # I
    .param p2, "destLabelLength"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "labelLength"    # I

    .line 313
    if-eq p3, p0, :cond_b

    .line 314
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 318
    :cond_b
    return p4
.end method

.method private static blacklist startsWithXNDashDash(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2b

    .line 500
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_2b

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_2b

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2b

    move v2, v0

    goto :goto_2c

    :cond_2b
    nop

    .line 499
    :goto_2c
    return v2
.end method


# virtual methods
.method public whitelist test-api labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .registers 10
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    .line 44
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "label":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/StringBuilder;
    .end local p3    # "info":Landroid/icu/text/IDNA$Info;
    .local v1, "label":Ljava/lang/CharSequence;
    .local v4, "dest":Ljava/lang/StringBuilder;
    .local v5, "info":Landroid/icu/text/IDNA$Info;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .registers 10
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    .line 49
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "label":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/StringBuilder;
    .end local p3    # "info":Landroid/icu/text/IDNA$Info;
    .local v1, "label":Ljava/lang/CharSequence;
    .local v4, "dest":Ljava/lang/StringBuilder;
    .local v5, "info":Landroid/icu/text/IDNA$Info;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .registers 10
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    .line 54
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "name":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/StringBuilder;
    .end local p3    # "info":Landroid/icu/text/IDNA$Info;
    .local v1, "name":Ljava/lang/CharSequence;
    .local v4, "dest":Ljava/lang/StringBuilder;
    .local v5, "info":Landroid/icu/text/IDNA$Info;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 p2, 0xfe

    if-lt p1, p2, :cond_38

    invoke-virtual {v5}, Landroid/icu/text/IDNA$Info;->getErrors()Ljava/util/Set;

    move-result-object p1

    sget-object p3, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 56
    invoke-static {v4}, Landroid/icu/impl/UTS46;->isASCIIString(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gt p1, p2, :cond_33

    const/16 p1, 0xfd

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 p2, 0x2e

    if-eq p1, p2, :cond_38

    .line 59
    :cond_33
    sget-object p1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v5, p1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 61
    :cond_38
    return-object v4
.end method

.method public whitelist test-api nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .registers 10
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    .line 66
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "name":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/StringBuilder;
    .end local p3    # "info":Landroid/icu/text/IDNA$Info;
    .local v1, "name":Ljava/lang/CharSequence;
    .local v4, "dest":Ljava/lang/StringBuilder;
    .local v5, "info":Landroid/icu/text/IDNA$Info;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method
