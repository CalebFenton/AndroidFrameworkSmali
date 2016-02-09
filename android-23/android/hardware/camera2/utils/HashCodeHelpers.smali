.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs hashCode([F)I
    .locals 6
    .param p0, "array"    # [F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    if-nez p0, :cond_0

    #@3
    .line 65
    return v3

    #@4
    .line 68
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 69
    .local v1, "h":I
    array-length v4, p0

    #@6
    :goto_0
    if-ge v3, v4, :cond_1

    #@8
    aget v0, p0, v3

    #@a
    .line 70
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@d
    move-result v2

    #@e
    .line 71
    .local v2, "x":I
    shl-int/lit8 v5, v1, 0x5

    #@10
    sub-int/2addr v5, v1

    #@11
    xor-int v1, v5, v2

    #@13
    .line 69
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 74
    .end local v0    # "f":F
    .end local v2    # "x":I
    :cond_1
    return v1
.end method

.method public static varargs hashCode([I)I
    .locals 5
    .param p0, "array"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 34
    if-nez p0, :cond_0

    #@3
    .line 35
    return v2

    #@4
    .line 45
    :cond_0
    const/4 v0, 0x1

    #@5
    .line 46
    .local v0, "h":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget v1, p0, v2

    #@a
    .line 48
    .local v1, "x":I
    shl-int/lit8 v4, v0, 0x5

    #@c
    sub-int/2addr v4, v0

    #@d
    xor-int v0, v4, v1

    #@f
    .line 46
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 51
    .end local v1    # "x":I
    :cond_1
    return v0
.end method

.method public static varargs hashCodeGeneric([Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@1
    .line 87
    if-nez p0, :cond_0

    #@3
    .line 88
    return v3

    #@4
    .line 91
    :cond_0
    const/4 v0, 0x1

    #@5
    .line 92
    .local v0, "h":I
    array-length v4, p0

    #@6
    :goto_0
    if-ge v3, v4, :cond_2

    #@8
    aget-object v1, p0, v3

    #@a
    .line 93
    .local v1, "o":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    #@c
    const/4 v2, 0x0

    #@d
    .line 94
    .local v2, "x":I
    :goto_1
    shl-int/lit8 v5, v0, 0x5

    #@f
    sub-int/2addr v5, v0

    #@10
    xor-int v0, v5, v2

    #@12
    .line 92
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 93
    .end local v2    # "x":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v2

    #@19
    .restart local v2    # "x":I
    goto :goto_1

    #@1a
    .line 97
    .end local v1    # "o":Ljava/lang/Object;, "TT;"
    .end local v2    # "x":I
    :cond_2
    return v0
.end method
