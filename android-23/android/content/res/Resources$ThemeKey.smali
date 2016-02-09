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
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1853
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    #@6
    .line 1848
    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 1856
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1857
    new-array v0, v1, [I

    #@7
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@9
    .line 1860
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1861
    new-array v0, v1, [Z

    #@f
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@11
    .line 1864
    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@13
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@15
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@1b
    .line 1865
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@1d
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@1f
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@25
    .line 1866
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@2b
    .line 1868
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    #@2d
    mul-int/lit8 v0, v0, 0x1f

    #@2f
    add-int/2addr v0, p1

    #@30
    mul-int/lit8 v1, v0, 0x1f

    #@32
    if-eqz p2, :cond_2

    #@34
    const/4 v0, 0x1

    #@35
    :goto_0
    add-int/2addr v0, v1

    #@36
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    #@38
    .line 1855
    return-void

    #@39
    .line 1868
    :cond_2
    const/4 v0, 0x0

    #@3a
    goto :goto_0
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    #@0
    .prologue
    .line 1917
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    #@2
    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    #@5
    .line 1918
    .local v0, "other":Landroid/content/res/Resources$ThemeKey;
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@7
    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@9
    .line 1919
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@b
    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@d
    .line 1920
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@f
    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@11
    .line 1921
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    #@13
    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    #@15
    .line 1922
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1916
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1889
    if-ne p0, p1, :cond_0

    #@4
    .line 1890
    return v6

    #@5
    .line 1893
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 1894
    :cond_1
    return v5

    #@12
    .line 1893
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    #@15
    move-result v3

    #@16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@19
    move-result v4

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    move-object v2, p1

    #@1d
    .line 1897
    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    #@1f
    .line 1898
    .local v2, "t":Landroid/content/res/Resources$ThemeKey;
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@21
    iget v4, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@23
    if-eq v3, v4, :cond_3

    #@25
    .line 1899
    return v5

    #@26
    .line 1902
    :cond_3
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@28
    .line 1903
    .local v0, "N":I
    const/4 v1, 0x0

    #@29
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@2b
    .line 1904
    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@2d
    aget v3, v3, v1

    #@2f
    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@31
    aget v4, v4, v1

    #@33
    if-ne v3, v4, :cond_4

    #@35
    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@37
    aget-boolean v3, v3, v1

    #@39
    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@3b
    aget-boolean v4, v4, v1

    #@3d
    if-eq v3, v4, :cond_5

    #@3f
    .line 1905
    :cond_4
    return v5

    #@40
    .line 1903
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1909
    :cond_6
    return v6
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1884
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    #@2
    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$ThemeKey;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1877
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@3
    if-nez v0, :cond_0

    #@5
    move-object v0, v1

    #@6
    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@8
    .line 1878
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@a
    if-nez v0, :cond_1

    #@c
    :goto_1
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@e
    .line 1879
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@10
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@12
    .line 1876
    return-void

    #@13
    .line 1877
    :cond_0
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@15
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [I

    #@1b
    goto :goto_0

    #@1c
    .line 1878
    :cond_1
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@1e
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [Z

    #@24
    move-object v1, v0

    #@25
    goto :goto_1
.end method
