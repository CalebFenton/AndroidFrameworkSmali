.class public Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final greylist-max-o DIR_TYPE_CACHE:[B

.field private static final greylist-max-o DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private greylist-max-o charIndex:I

.field private final greylist-max-o isHtml:Z

.field private greylist-max-o lastChar:C

.field private final greylist-max-o length:I

.field private final greylist-max-o text:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 598
    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_14

    .line 602
    sget-object v2, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 604
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 654
    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 655
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 656
    return-void
.end method

.method private static greylist-max-o getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .line 827
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v0

    :goto_d
    return v0
.end method

.method public static greylist-max-o getDirectionality(I)B
    .registers 2
    .param p0, "codePoint"    # I

    .line 611
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method private greylist-max-o skipEntityBackward()B
    .registers 5

    .line 968
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 969
    .local v0, "initialCharIndex":I
    :cond_2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3b

    if-lez v1, :cond_24

    .line 970
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 971
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_1f

    .line 972
    const/16 v1, 0xc

    return v1

    .line 974
    :cond_1f
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v2, :cond_2

    .line 975
    nop

    .line 978
    :cond_24
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 979
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 980
    const/16 v1, 0xd

    return v1
.end method

.method private greylist-max-o skipEntityForward()B
    .registers 4

    .line 953
    :goto_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_19

    goto :goto_0

    .line 954
    :cond_19
    const/16 v0, 0xc

    return v0
.end method

.method private greylist-max-o skipTagBackward()B
    .registers 5

    .line 925
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 926
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3e

    if-lez v1, :cond_48

    .line 927
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 928
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1f

    .line 930
    const/16 v1, 0xc

    return v1

    .line 932
    :cond_1f
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v2, :cond_24

    .line 933
    goto :goto_48

    .line 935
    :cond_24
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_30

    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 937
    :cond_30
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 938
    .local v1, "quote":C
    :goto_32
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_47

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_47

    goto :goto_32

    .line 939
    .end local v1    # "quote":C
    :cond_47
    goto :goto_2

    .line 942
    :cond_48
    :goto_48
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 943
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 944
    const/16 v1, 0xd

    return v1
.end method

.method private greylist-max-o skipTagForward()B
    .registers 6

    .line 896
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 897
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_45

    .line 898
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 899
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1f

    .line 901
    const/16 v1, 0xc

    return v1

    .line 903
    :cond_1f
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2b

    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 905
    :cond_2b
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 906
    .local v1, "quote":C
    :goto_2d
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_44

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_44

    goto :goto_2d

    .line 907
    .end local v1    # "quote":C
    :cond_44
    goto :goto_2

    .line 910
    :cond_45
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 911
    const/16 v1, 0x3c

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 912
    const/16 v1, 0xd

    return v1
.end method


# virtual methods
.method greylist-max-o dirTypeBackward()B
    .registers 4

    .line 870
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 871
    iget-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 872
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 873
    .local v0, "codePoint":I
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 874
    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v1

    return v1

    .line 876
    .end local v0    # "codePoint":I
    :cond_2a
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 877
    iget-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 878
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4f

    .line 880
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_45

    .line 881
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_4f

    .line 882
    :cond_45
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4f

    .line 883
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    .line 886
    :cond_4f
    :goto_4f
    return v0
.end method

.method greylist-max-o dirTypeForward()B
    .registers 4

    .line 840
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 841
    iget-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 842
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 843
    .local v0, "codePoint":I
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 844
    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v1

    return v1

    .line 846
    .end local v0    # "codePoint":I
    :cond_28
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 847
    iget-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 848
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4d

    .line 850
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_43

    .line 851
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_4d

    .line 852
    :cond_43
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_4d

    .line 853
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    .line 856
    :cond_4d
    :goto_4d
    return v0
.end method

.method greylist-max-o getEntryDir()I
    .registers 9

    .line 670
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "embeddingLevel":I
    const/4 v2, 0x0

    .line 673
    .local v2, "embeddingLevelDir":I
    const/4 v3, 0x0

    .line 674
    .local v3, "firstNonEmptyEmbeddingLevel":I
    :goto_6
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_30

    if-nez v3, :cond_30

    .line 675
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    sparse-switch v4, :sswitch_data_54

    .line 709
    move v3, v1

    .line 710
    goto :goto_6

    .line 687
    :sswitch_19
    add-int/lit8 v1, v1, -0x1

    .line 691
    const/4 v2, 0x0

    .line 692
    goto :goto_6

    .line 683
    :sswitch_1d
    add-int/lit8 v1, v1, 0x1

    .line 684
    const/4 v2, 0x1

    .line 685
    goto :goto_6

    .line 678
    :sswitch_21
    add-int/lit8 v1, v1, 0x1

    .line 679
    const/4 v2, -0x1

    .line 680
    goto :goto_6

    .line 694
    :sswitch_25
    goto :goto_6

    .line 703
    :sswitch_26
    if-nez v1, :cond_29

    .line 704
    return v7

    .line 706
    :cond_29
    move v3, v1

    .line 707
    goto :goto_6

    .line 696
    :sswitch_2b
    if-nez v1, :cond_2e

    .line 697
    return v6

    .line 699
    :cond_2e
    move v3, v1

    .line 700
    goto :goto_6

    .line 716
    :cond_30
    if-nez v3, :cond_33

    .line 719
    return v0

    .line 723
    :cond_33
    if-eqz v2, :cond_36

    .line 725
    return v2

    .line 730
    :cond_36
    :goto_36
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_52

    .line 731
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_7a

    goto :goto_51

    .line 747
    :pswitch_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 741
    :pswitch_45
    if-ne v3, v1, :cond_48

    .line 742
    return v7

    .line 744
    :cond_48
    add-int/lit8 v1, v1, -0x1

    .line 745
    goto :goto_51

    .line 734
    :pswitch_4b
    if-ne v3, v1, :cond_4e

    .line 735
    return v6

    .line 737
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    .line 738
    nop

    .line 748
    :goto_51
    goto :goto_36

    .line 752
    :cond_52
    return v0

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_2b
        0x1 -> :sswitch_26
        0x2 -> :sswitch_26
        0x9 -> :sswitch_25
        0xe -> :sswitch_21
        0xf -> :sswitch_21
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0xe
        :pswitch_4b
        :pswitch_4b
        :pswitch_45
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method greylist-max-o getExitDir()I
    .registers 6

    .line 768
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 771
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_6
    :goto_6
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_35

    .line 772
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_38

    .line 810
    if-nez v1, :cond_6

    .line 811
    move v1, v0

    goto :goto_6

    .line 805
    :sswitch_17
    add-int/lit8 v0, v0, 0x1

    .line 806
    goto :goto_6

    .line 799
    :sswitch_1a
    if-ne v1, v0, :cond_1d

    .line 800
    return v3

    .line 802
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 803
    goto :goto_6

    .line 783
    :sswitch_20
    if-ne v1, v0, :cond_23

    .line 784
    return v4

    .line 786
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 787
    goto :goto_6

    .line 808
    :sswitch_26
    goto :goto_6

    .line 790
    :sswitch_27
    if-nez v0, :cond_2a

    .line 791
    return v3

    .line 793
    :cond_2a
    if-nez v1, :cond_6

    .line 794
    move v1, v0

    goto :goto_6

    .line 774
    :sswitch_2e
    if-nez v0, :cond_31

    .line 775
    return v4

    .line 777
    :cond_31
    if-nez v1, :cond_6

    .line 778
    move v1, v0

    goto :goto_6

    .line 816
    :cond_35
    const/4 v2, 0x0

    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_2e
        0x1 -> :sswitch_27
        0x2 -> :sswitch_27
        0x9 -> :sswitch_26
        0xe -> :sswitch_20
        0xf -> :sswitch_20
        0x10 -> :sswitch_1a
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_17
    .end sparse-switch
.end method
