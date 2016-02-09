.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 776
    const/16 v0, 0x40

    #@5
    new-array v0, v0, [C

    #@7
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    #@9
    .line 775
    return-void
.end method

.method private reserve(I)I
    .locals 8
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 865
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@3
    .line 866
    .local v5, "oldLength":I
    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@5
    add-int v2, v6, p1

    #@7
    .line 867
    .local v2, "newLength":I
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    #@9
    .line 868
    .local v4, "oldChars":[C
    array-length v3, v4

    #@a
    .line 869
    .local v3, "oldCapacity":I
    if-le v2, v3, :cond_0

    #@c
    .line 870
    mul-int/lit8 v0, v3, 0x2

    #@e
    .line 871
    .local v0, "newCapacity":I
    new-array v1, v0, [C

    #@10
    .line 872
    .local v1, "newChars":[C
    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@13
    .line 873
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    #@15
    .line 875
    .end local v0    # "newCapacity":I
    .end local v1    # "newChars":[C
    :cond_0
    return v5
.end method


# virtual methods
.method public append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 6
    .param p1, "value"    # F
    .param p2, "precision"    # I

    #@0
    .prologue
    .line 841
    const/4 v1, 0x1

    #@1
    .line 842
    .local v1, "scale":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@4
    .line 843
    mul-int/lit8 v1, v1, 0xa

    #@6
    .line 842
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 845
    :cond_0
    int-to-float v2, v1

    #@a
    mul-float/2addr v2, p1

    #@b
    float-to-double v2, v2

    #@c
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    #@f
    move-result-wide v2

    #@10
    int-to-double v4, v1

    #@11
    div-double/2addr v2, v4

    #@12
    double-to-float p1, v2

    #@13
    .line 847
    float-to-int v2, p1

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@17
    .line 849
    if-eqz p2, :cond_1

    #@19
    .line 850
    const-string/jumbo v2, "."

    #@1c
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1f
    .line 851
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@22
    move-result p1

    #@23
    .line 852
    float-to-double v2, p1

    #@24
    float-to-double v4, p1

    #@25
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@28
    move-result-wide v4

    #@29
    sub-double/2addr v2, v4

    #@2a
    double-to-float p1, v2

    #@2b
    .line 853
    int-to-float v2, v1

    #@2c
    mul-float/2addr v2, p1

    #@2d
    float-to-int v2, v2

    #@2e
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@31
    .line 856
    :cond_1
    return-object p0
.end method

.method public append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 793
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 9
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    #@0
    .prologue
    const/16 v8, 0x30

    #@2
    .line 797
    if-gez p1, :cond_0

    #@4
    const/4 v5, 0x1

    #@5
    .line 798
    .local v5, "negative":Z
    :goto_0
    if-eqz v5, :cond_1

    #@7
    .line 799
    neg-int p1, p1

    #@8
    .line 800
    if-gez p1, :cond_1

    #@a
    .line 801
    const-string/jumbo v7, "-2147483648"

    #@d
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@10
    .line 802
    return-object p0

    #@11
    .line 797
    .end local v5    # "negative":Z
    :cond_0
    const/4 v5, 0x0

    #@12
    .restart local v5    # "negative":Z
    goto :goto_0

    #@13
    .line 806
    :cond_1
    const/16 v7, 0xb

    #@15
    invoke-direct {p0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    #@18
    move-result v3

    #@19
    .line 807
    .local v3, "index":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    #@1b
    .line 809
    .local v0, "chars":[C
    if-nez p1, :cond_2

    #@1d
    .line 810
    add-int/lit8 v4, v3, 0x1

    #@1f
    .end local v3    # "index":I
    .local v4, "index":I
    aput-char v8, v0, v3

    #@21
    .line 811
    iget v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@23
    add-int/lit8 v7, v7, 0x1

    #@25
    iput v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@27
    .line 812
    return-object p0

    #@28
    .line 815
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_2
    if-eqz v5, :cond_3

    #@2a
    .line 816
    add-int/lit8 v4, v3, 0x1

    #@2c
    .end local v3    # "index":I
    .restart local v4    # "index":I
    const/16 v7, 0x2d

    #@2e
    aput-char v7, v0, v3

    #@30
    move v3, v4

    #@31
    .line 819
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_3
    const v2, 0x3b9aca00

    #@34
    .line 820
    .local v2, "divisor":I
    const/16 v6, 0xa

    #@36
    .local v6, "numberWidth":I
    move v4, v3

    #@37
    .line 821
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_1
    if-ge p1, v2, :cond_4

    #@39
    .line 822
    div-int/lit8 v2, v2, 0xa

    #@3b
    .line 823
    add-int/lit8 v6, v6, -0x1

    #@3d
    .line 824
    if-ge v6, p2, :cond_6

    #@3f
    .line 825
    add-int/lit8 v3, v4, 0x1

    #@41
    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput-char v8, v0, v4

    #@43
    :goto_2
    move v4, v3

    #@44
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    #@45
    .line 830
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_3
    div-int v1, p1, v2

    #@47
    .line 831
    .local v1, "digit":I
    mul-int v7, v1, v2

    #@49
    sub-int/2addr p1, v7

    #@4a
    .line 832
    div-int/lit8 v2, v2, 0xa

    #@4c
    .line 833
    add-int/lit8 v4, v3, 0x1

    #@4e
    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v7, v1, 0x30

    #@50
    int-to-char v7, v7

    #@51
    aput-char v7, v0, v3

    #@53
    .line 834
    if-eqz v2, :cond_5

    #@55
    .end local v1    # "digit":I
    :cond_4
    move v3, v4

    #@56
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    #@57
    .line 836
    .end local v3    # "index":I
    .restart local v1    # "digit":I
    .restart local v4    # "index":I
    :cond_5
    iput v4, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@59
    .line 837
    return-object p0

    #@5a
    .end local v1    # "digit":I
    :cond_6
    move v3, v4

    #@5b
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2
.end method

.method public append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 786
    .local v1, "valueLength":I
    invoke-direct {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    #@7
    move-result v0

    #@8
    .line 787
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {p1, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    #@e
    .line 788
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@10
    add-int/2addr v2, v1

    #@11
    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@13
    .line 789
    return-object p0
.end method

.method public clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    #@0
    .prologue
    .line 780
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@3
    .line 781
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 861
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    #@4
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    #@a
    return-object v0
.end method
