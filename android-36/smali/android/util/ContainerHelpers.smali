.class Landroid/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist binarySearch([III)I
    .registers 7
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "lo":I
    add-int/lit8 v1, p1, -0x1

    .line 27
    .local v1, "hi":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 28
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 29
    .local v2, "mid":I
    aget v3, p0, v2

    .line 31
    .local v3, "midVal":I
    if-ge v3, p2, :cond_10

    .line 32
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 33
    :cond_10
    if-le v3, p2, :cond_15

    .line 34
    add-int/lit8 v1, v2, -0x1

    .line 38
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_14
    goto :goto_3

    .line 36
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_15
    return v2

    .line 39
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_16
    not-int v2, v0

    return v2
.end method

.method static blacklist binarySearch([JIJ)I
    .registers 10
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "lo":I
    add-int/lit8 v1, p1, -0x1

    .line 46
    .local v1, "hi":I
    :goto_3
    if-gt v0, v1, :cond_1a

    .line 47
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 48
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 50
    .local v3, "midVal":J
    cmp-long v5, v3, p2

    if-gez v5, :cond_12

    .line 51
    add-int/lit8 v0, v2, 0x1

    goto :goto_18

    .line 52
    :cond_12
    cmp-long v5, v3, p2

    if-lez v5, :cond_19

    .line 53
    add-int/lit8 v1, v2, -0x1

    .line 57
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :goto_18
    goto :goto_3

    .line 55
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_19
    return v2

    .line 58
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_1a
    not-int v2, v0

    return v2
.end method
