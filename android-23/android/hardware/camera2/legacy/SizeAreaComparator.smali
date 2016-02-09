.class public Landroid/hardware/camera2/legacy/SizeAreaComparator;
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
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v0, "sizes must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 70
    new-instance v0, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    #@8
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    #@b
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/hardware/Camera$Size;

    #@11
    return-object v0
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 12
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "size2"    # Landroid/hardware/Camera$Size;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    .line 39
    const-string/jumbo v10, "size must not be null"

    #@5
    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 40
    const-string/jumbo v10, "size2 must not be null"

    #@b
    invoke-static {p2, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_0

    #@14
    .line 43
    const/4 v8, 0x0

    #@15
    return v8

    #@16
    .line 46
    :cond_0
    iget v10, p1, Landroid/hardware/Camera$Size;->width:I

    #@18
    int-to-long v4, v10

    #@19
    .line 47
    .local v4, "width":J
    iget v10, p2, Landroid/hardware/Camera$Size;->width:I

    #@1b
    int-to-long v6, v10

    #@1c
    .line 48
    .local v6, "width2":J
    iget v10, p1, Landroid/hardware/Camera$Size;->height:I

    #@1e
    int-to-long v10, v10

    #@1f
    mul-long v0, v4, v10

    #@21
    .line 49
    .local v0, "area":J
    iget v10, p2, Landroid/hardware/Camera$Size;->height:I

    #@23
    int-to-long v10, v10

    #@24
    mul-long v2, v6, v10

    #@26
    .line 51
    .local v2, "area2":J
    cmp-long v10, v0, v2

    #@28
    if-nez v10, :cond_2

    #@2a
    .line 52
    cmp-long v10, v4, v6

    #@2c
    if-lez v10, :cond_1

    #@2e
    :goto_0
    return v8

    #@2f
    :cond_1
    move v8, v9

    #@30
    goto :goto_0

    #@31
    .line 55
    :cond_2
    cmp-long v10, v0, v2

    #@33
    if-lez v10, :cond_3

    #@35
    :goto_1
    return v8

    #@36
    :cond_3
    move v8, v9

    #@37
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "size"    # Ljava/lang/Object;
    .param p2, "size2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    check-cast p1, Landroid/hardware/Camera$Size;

    #@2
    .end local p1    # "size":Ljava/lang/Object;
    check-cast p2, Landroid/hardware/Camera$Size;

    #@4
    .end local p2    # "size2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
