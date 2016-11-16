.class public Landroid/hardware/camera2/utils/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string/jumbo v0, "sizes must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 69
    new-instance v0, Landroid/hardware/camera2/utils/SizeAreaComparator;

    #@8
    invoke-direct {v0}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    #@b
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/util/Size;

    #@11
    return-object v0
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 12
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "size2"    # Landroid/util/Size;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    .line 38
    const-string/jumbo v10, "size must not be null"

    #@5
    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 39
    const-string/jumbo v10, "size2 must not be null"

    #@b
    invoke-static {p2, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 41
    invoke-virtual {p1, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_0

    #@14
    .line 42
    const/4 v8, 0x0

    #@15
    return v8

    #@16
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@19
    move-result v10

    #@1a
    int-to-long v4, v10

    #@1b
    .line 46
    .local v4, "width":J
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    #@1e
    move-result v10

    #@1f
    int-to-long v6, v10

    #@20
    .line 47
    .local v6, "width2":J
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@23
    move-result v10

    #@24
    int-to-long v10, v10

    #@25
    mul-long v0, v4, v10

    #@27
    .line 48
    .local v0, "area":J
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    #@2a
    move-result v10

    #@2b
    int-to-long v10, v10

    #@2c
    mul-long v2, v6, v10

    #@2e
    .line 50
    .local v2, "area2":J
    cmp-long v10, v0, v2

    #@30
    if-nez v10, :cond_2

    #@32
    .line 51
    cmp-long v10, v4, v6

    #@34
    if-lez v10, :cond_1

    #@36
    :goto_0
    return v8

    #@37
    :cond_1
    move v8, v9

    #@38
    goto :goto_0

    #@39
    .line 54
    :cond_2
    cmp-long v10, v0, v2

    #@3b
    if-lez v10, :cond_3

    #@3d
    :goto_1
    return v8

    #@3e
    :cond_3
    move v8, v9

    #@3f
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "size"    # Ljava/lang/Object;
    .param p2, "size2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 37
    check-cast p1, Landroid/util/Size;

    #@2
    .end local p1    # "size":Ljava/lang/Object;
    check-cast p2, Landroid/util/Size;

    #@4
    .end local p2    # "size2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/utils/SizeAreaComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
