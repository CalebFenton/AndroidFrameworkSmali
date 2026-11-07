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
.field private blacklist mChars:[C

.field private blacklist mLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 884
    return-void
.end method

.method private blacklist reserve(I)I
    .registers 9
    .param p1, "length"    # I

    .line 976
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 977
    .local v0, "oldLength":I
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v1, p1

    .line 978
    .local v1, "newLength":I
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 979
    .local v2, "oldChars":[C
    array-length v3, v2

    .line 980
    .local v3, "oldCapacity":I
    if-le v1, v3, :cond_14

    .line 981
    mul-int/lit8 v4, v3, 0x2

    .line 982
    .local v4, "newCapacity":I
    new-array v5, v4, [C

    .line 983
    .local v5, "newChars":[C
    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 984
    iput-object v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 986
    .end local v4    # "newCapacity":I
    .end local v5    # "newChars":[C
    :cond_14
    return v0
.end method


# virtual methods
.method public blacklist append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 8
    .param p1, "value"    # F
    .param p2, "precision"    # I

    .line 948
    const/4 v0, 0x1

    .line 949
    .local v0, "scale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_9

    .line 950
    mul-int/lit8 v0, v0, 0xa

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 952
    .end local v1    # "i":I
    :cond_9
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float p1, v1

    .line 955
    float-to-int v1, p1

    if-nez v1, :cond_20

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_20

    .line 956
    const-string v1, "-"

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 958
    :cond_20
    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 960
    if-eqz p2, :cond_3d

    .line 961
    const-string v1, "."

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 962
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 963
    float-to-double v1, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float p1, v1

    .line 964
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 967
    :cond_3d
    return-object p0
.end method

.method public blacklist append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 3
    .param p1, "value"    # I

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 11
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    .line 904
    const/4 v0, 0x1

    if-gez p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 905
    .local v1, "negative":Z
    :goto_6
    if-eqz v1, :cond_11

    .line 906
    neg-int p1, p1

    .line 907
    if-gez p1, :cond_11

    .line 908
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 909
    return-object p0

    .line 913
    :cond_11
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    .line 914
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 916
    .local v3, "chars":[C
    const/16 v4, 0x30

    if-nez p1, :cond_27

    .line 917
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput-char v4, v3, v2

    .line 918
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 919
    return-object p0

    .line 922
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_27
    if-eqz v1, :cond_30

    .line 923
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .local v0, "index":I
    const/16 v5, 0x2d

    aput-char v5, v3, v2

    move v2, v0

    .line 926
    .end local v0    # "index":I
    .restart local v2    # "index":I
    :cond_30
    const v0, 0x3b9aca00

    .line 927
    .local v0, "divisor":I
    const/16 v5, 0xa

    .line 928
    .local v5, "numberWidth":I
    :cond_35
    :goto_35
    if-ge p1, v0, :cond_43

    .line 929
    div-int/lit8 v0, v0, 0xa

    .line 930
    add-int/lit8 v5, v5, -0x1

    .line 931
    if-ge v5, p2, :cond_35

    .line 932
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    aput-char v4, v3, v2

    move v2, v6

    goto :goto_35

    .line 937
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_43
    :goto_43
    div-int v4, p1, v0

    .line 938
    .local v4, "digit":I
    mul-int v6, v4, v0

    sub-int/2addr p1, v6

    .line 939
    div-int/lit8 v0, v0, 0xa

    .line 940
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v4, 0x30

    int-to-char v7, v7

    aput-char v7, v3, v2

    .line 941
    .end local v4    # "digit":I
    if-nez v0, :cond_56

    .line 943
    iput v6, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 944
    return-object p0

    .line 941
    :cond_56
    move v2, v6

    goto :goto_43
.end method

.method public blacklist append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 893
    .local v0, "valueLength":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    .line 894
    .local v1, "index":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 895
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 896
    return-object p0
.end method

.method public blacklist clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 2

    .line 887
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 888
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 972
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
