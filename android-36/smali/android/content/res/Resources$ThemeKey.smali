.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field greylist-max-o mCount:I

.field greylist-max-o mForce:[Z

.field private greylist-max-o mHashCode:I

.field greylist-max-o mResId:[I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2025
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void
.end method

.method private blacklist findValue(IZ)I
    .registers 5
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 2028
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-ge v0, v1, :cond_15

    .line 2029
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_12

    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p2, :cond_12

    .line 2030
    return v0

    .line 2028
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2033
    .end local v0    # "i":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist moveToLast(I)V
    .registers 8
    .param p1, "index"    # I

    .line 2037
    if-ltz p1, :cond_3e

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_9

    goto :goto_3e

    .line 2040
    :cond_9
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v0, v0, p1

    .line 2041
    .local v0, "id":I
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v1, v1, p1

    .line 2042
    .local v1, "force":Z
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v5, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2043
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v3, v3, -0x1

    aput v0, v2, v3

    .line 2044
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v5, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2045
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v3, v3, -0x1

    aput-boolean v1, v2, v3

    .line 2046
    return-void

    .line 2038
    .end local v0    # "id":I
    .end local v1    # "force":Z
    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public greylist-max-o append(IZ)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 2049
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    const/4 v1, 0x4

    if-nez v0, :cond_9

    .line 2050
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2053
    :cond_9
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_11

    .line 2054
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2060
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->findValue(IZ)I

    move-result v0

    .line 2061
    .local v0, "index":I
    if-ltz v0, :cond_1b

    .line 2062
    invoke-direct {p0, v0}, Landroid/content/res/Resources$ThemeKey;->moveToLast(I)V

    goto :goto_3f

    .line 2064
    :cond_1b
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2065
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2066
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2067
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p2

    iput v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2069
    :goto_3f
    return-void
.end method

.method public blacklist clone()Landroid/content/res/Resources$ThemeKey;
    .registers 3

    .line 2118
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 2119
    .local v0, "other":Landroid/content/res/Resources$ThemeKey;
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2120
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2121
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2122
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2123
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2020
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 2090
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2091
    return v0

    .line 2094
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_45

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1c

    goto :goto_45

    .line 2098
    :cond_1c
    move-object v2, p1

    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    .line 2099
    .local v2, "t":Landroid/content/res/Resources$ThemeKey;
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v4, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v3, v4, :cond_26

    .line 2100
    return v1

    .line 2103
    :cond_26
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2104
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    if-ge v4, v3, :cond_44

    .line 2105
    iget-object v5, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v5, v4

    iget-object v6, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_43

    iget-object v5, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v4

    iget-object v6, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v6, v6, v4

    if-eq v5, v6, :cond_40

    goto :goto_43

    .line 2104
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 2106
    :cond_43
    :goto_43
    return v1

    .line 2110
    .end local v4    # "i":I
    :cond_44
    return v0

    .line 2095
    .end local v2    # "t":Landroid/content/res/Resources$ThemeKey;
    .end local v3    # "N":I
    :cond_45
    :goto_45
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2085
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public greylist-max-o setTo(Landroid/content/res/Resources$ThemeKey;)V
    .registers 4
    .param p1, "other"    # Landroid/content/res/Resources$ThemeKey;

    .line 2077
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_f

    :cond_7
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_f
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2078
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_16

    goto :goto_1f

    :cond_16
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Z

    :goto_1f
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2079
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2080
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2081
    return-void
.end method
