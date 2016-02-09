.class Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x700

    #@2
    .line 518
    new-array v1, v3, [B

    #@4
    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@6
    .line 519
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@9
    .line 520
    sget-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@b
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@e
    move-result v2

    #@f
    aput-byte v2, v1, v0

    #@11
    .line 519
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 499
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    #@0
    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 563
    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@5
    .line 564
    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@7
    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@d
    .line 562
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 737
    const/16 v0, 0x700

    #@2
    if-ge p0, v0, :cond_0

    #@4
    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@6
    aget-byte v0, v0, p0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x3b

    #@2
    .line 878
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    .line 879
    .local v0, "initialCharIndex":I
    :cond_0
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@6
    if-lez v1, :cond_2

    #@8
    .line 880
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@a
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    add-int/lit8 v2, v2, -0x1

    #@e
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@16
    .line 881
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@18
    const/16 v2, 0x26

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 882
    const/16 v1, 0xc

    #@1e
    return v1

    #@1f
    .line 884
    :cond_1
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    if-ne v1, v3, :cond_0

    #@23
    .line 888
    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    .line 889
    iput-char v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@27
    .line 890
    const/16 v1, 0xd

    #@29
    return v1
.end method

.method private skipEntityForward()B
    .locals 3

    #@0
    .prologue
    .line 863
    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@8
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@14
    const/16 v1, 0x3b

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 864
    :cond_1
    const/16 v0, 0xc

    #@1a
    return v0
.end method

.method private skipTagBackward()B
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x3e

    #@2
    .line 835
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    .line 836
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@6
    if-lez v2, :cond_2

    #@8
    .line 837
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@a
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    add-int/lit8 v3, v3, -0x1

    #@e
    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@16
    .line 838
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@18
    const/16 v3, 0x3c

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    .line 840
    const/16 v2, 0xc

    #@1e
    return v2

    #@1f
    .line 842
    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    if-ne v2, v4, :cond_3

    #@23
    .line 852
    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    .line 853
    iput-char v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@27
    .line 854
    const/16 v2, 0xd

    #@29
    return v2

    #@2a
    .line 845
    :cond_3
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@2c
    const/16 v3, 0x22

    #@2e
    if-eq v2, v3, :cond_4

    #@30
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@32
    const/16 v3, 0x27

    #@34
    if-ne v2, v3, :cond_0

    #@36
    .line 847
    :cond_4
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@38
    .line 848
    .local v1, "quote":C
    :goto_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3a
    if-lez v2, :cond_0

    #@3c
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@3e
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@40
    add-int/lit8 v3, v3, -0x1

    #@42
    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v2

    #@48
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@4a
    if-eq v2, v1, :cond_0

    #@4c
    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 5

    #@0
    .prologue
    .line 806
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    .line 807
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@6
    if-ge v2, v3, :cond_3

    #@8
    .line 808
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@a
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    add-int/lit8 v4, v3, 0x1

    #@e
    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@16
    .line 809
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@18
    const/16 v3, 0x3e

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    .line 811
    const/16 v2, 0xc

    #@1e
    return v2

    #@1f
    .line 813
    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    const/16 v3, 0x22

    #@23
    if-eq v2, v3, :cond_2

    #@25
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@27
    const/16 v3, 0x27

    #@29
    if-ne v2, v3, :cond_0

    #@2b
    .line 815
    :cond_2
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@2d
    .line 816
    .local v1, "quote":C
    :goto_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2f
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@31
    if-ge v2, v3, :cond_0

    #@33
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@35
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@37
    add-int/lit8 v4, v3, 0x1

    #@39
    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v2

    #@3f
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@41
    if-eq v2, v1, :cond_0

    #@43
    goto :goto_0

    #@44
    .line 820
    .end local v1    # "quote":C
    :cond_3
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@46
    .line 821
    const/16 v2, 0x3c

    #@48
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@4a
    .line 822
    const/16 v2, 0xd

    #@4c
    return v2
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 4

    #@0
    .prologue
    .line 780
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@2
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    add-int/lit8 v3, v3, -0x1

    #@6
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v2

    #@a
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@c
    .line 781
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@e
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 782
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@16
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@18
    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@1b
    move-result v0

    #@1c
    .line 783
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1e
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@21
    move-result v3

    #@22
    sub-int/2addr v2, v3

    #@23
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    .line 784
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@28
    move-result v2

    #@29
    return v2

    #@2a
    .line 786
    .end local v0    # "codePoint":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@30
    .line 787
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@32
    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    #@35
    move-result v1

    #@36
    .line 788
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 790
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3c
    const/16 v3, 0x3e

    #@3e
    if-ne v2, v3, :cond_2

    #@40
    .line 791
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    #@43
    move-result v1

    #@44
    .line 796
    :cond_1
    :goto_0
    return v1

    #@45
    .line 792
    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@47
    const/16 v3, 0x3b

    #@49
    if-ne v2, v3, :cond_1

    #@4b
    .line 793
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    #@4e
    move-result v1

    #@4f
    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 4

    #@0
    .prologue
    .line 750
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@2
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v2

    #@8
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@a
    .line 751
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@c
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 752
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@14
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@16
    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@19
    move-result v0

    #@1a
    .line 753
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1f
    move-result v3

    #@20
    add-int/2addr v2, v3

    #@21
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@23
    .line 754
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@26
    move-result v2

    #@27
    return v2

    #@28
    .line 756
    .end local v0    # "codePoint":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2e
    .line 757
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@30
    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    #@33
    move-result v1

    #@34
    .line 758
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 760
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3a
    const/16 v3, 0x3c

    #@3c
    if-ne v2, v3, :cond_2

    #@3e
    .line 761
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    #@41
    move-result v1

    #@42
    .line 766
    :cond_1
    :goto_0
    return v1

    #@43
    .line 762
    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@45
    const/16 v3, 0x26

    #@47
    if-ne v2, v3, :cond_1

    #@49
    .line 763
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    #@4c
    move-result v1

    #@4d
    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 580
    iput v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@5
    .line 581
    const/4 v0, 0x0

    #@6
    .line 582
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    #@7
    .line 583
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    #@8
    .line 584
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    :pswitch_0
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@a
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@c
    if-ge v3, v4, :cond_2

    #@e
    if-nez v2, :cond_2

    #@10
    .line 585
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    #@13
    move-result v3

    #@14
    packed-switch v3, :pswitch_data_0

    #@17
    .line 619
    :pswitch_1
    move v2, v0

    #@18
    .line 620
    goto :goto_0

    #@19
    .line 588
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    #@1b
    .line 589
    const/4 v1, -0x1

    #@1c
    .line 590
    goto :goto_0

    #@1d
    .line 593
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    #@1f
    .line 594
    const/4 v1, 0x1

    #@20
    .line 595
    goto :goto_0

    #@21
    .line 597
    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    #@23
    .line 601
    const/4 v1, 0x0

    #@24
    .line 602
    goto :goto_0

    #@25
    .line 606
    :pswitch_5
    if-nez v0, :cond_0

    #@27
    .line 607
    return v6

    #@28
    .line 609
    :cond_0
    move v2, v0

    #@29
    .line 610
    goto :goto_0

    #@2a
    .line 613
    :pswitch_6
    if-nez v0, :cond_1

    #@2c
    .line 614
    return v7

    #@2d
    .line 616
    :cond_1
    move v2, v0

    #@2e
    .line 617
    goto :goto_0

    #@2f
    .line 626
    :cond_2
    if-nez v2, :cond_3

    #@31
    .line 629
    return v5

    #@32
    .line 633
    :cond_3
    if-eqz v1, :cond_4

    #@34
    .line 635
    return v1

    #@35
    .line 640
    :cond_4
    :goto_1
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@37
    if-lez v3, :cond_7

    #@39
    .line 641
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    #@3c
    move-result v3

    #@3d
    packed-switch v3, :pswitch_data_1

    #@40
    goto :goto_1

    #@41
    .line 644
    :pswitch_7
    if-ne v2, v0, :cond_5

    #@43
    .line 645
    return v6

    #@44
    .line 647
    :cond_5
    add-int/lit8 v0, v0, -0x1

    #@46
    .line 648
    goto :goto_1

    #@47
    .line 651
    :pswitch_8
    if-ne v2, v0, :cond_6

    #@49
    .line 652
    return v7

    #@4a
    .line 654
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@4c
    .line 655
    goto :goto_1

    #@4d
    .line 657
    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    #@4f
    .line 658
    goto :goto_1

    #@50
    .line 662
    :cond_7
    return v5

    #@51
    .line 585
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@7c
    .line 641
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 678
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@5
    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@7
    .line 679
    const/4 v0, 0x0

    #@8
    .line 680
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    #@9
    .line 681
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@b
    if-lez v2, :cond_5

    #@d
    .line 682
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    #@10
    move-result v2

    #@11
    packed-switch v2, :pswitch_data_0

    #@14
    .line 720
    :pswitch_1
    if-nez v1, :cond_0

    #@16
    .line 721
    move v1, v0

    #@17
    goto :goto_0

    #@18
    .line 684
    :pswitch_2
    if-nez v0, :cond_1

    #@1a
    .line 685
    return v4

    #@1b
    .line 687
    :cond_1
    if-nez v1, :cond_0

    #@1d
    .line 688
    move v1, v0

    #@1e
    goto :goto_0

    #@1f
    .line 693
    :pswitch_3
    if-ne v1, v0, :cond_2

    #@21
    .line 694
    return v4

    #@22
    .line 696
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@24
    .line 697
    goto :goto_0

    #@25
    .line 700
    :pswitch_4
    if-nez v0, :cond_3

    #@27
    .line 701
    return v5

    #@28
    .line 703
    :cond_3
    if-nez v1, :cond_0

    #@2a
    .line 704
    move v1, v0

    #@2b
    goto :goto_0

    #@2c
    .line 709
    :pswitch_5
    if-ne v1, v0, :cond_4

    #@2e
    .line 710
    return v5

    #@2f
    .line 712
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@31
    .line 713
    goto :goto_0

    #@32
    .line 715
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    #@34
    .line 716
    goto :goto_0

    #@35
    .line 726
    :cond_5
    return v3

    #@36
    .line 682
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
