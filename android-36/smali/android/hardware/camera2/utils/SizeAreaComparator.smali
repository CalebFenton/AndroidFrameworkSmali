.class public Landroid/hardware/camera2/utils/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o findLargestByArea(Ljava/util/List;)Landroid/util/Size;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 67
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string v0, "sizes must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/util/Size;Landroid/util/Size;)I
    .registers 14
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "size2"    # Landroid/util/Size;

    .line 38
    const-string v0, "size must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "size2 must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 42
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_12
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    .line 46
    .local v0, "width":J
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    .line 47
    .local v2, "width2":J
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v0

    .line 48
    .local v4, "area":J
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v2

    .line 50
    .local v6, "area2":J
    cmp-long v8, v4, v6

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-nez v8, :cond_35

    .line 51
    cmp-long v8, v0, v2

    if-lez v8, :cond_33

    goto :goto_34

    :cond_33
    move v9, v10

    :goto_34
    return v9

    .line 54
    :cond_35
    cmp-long v8, v4, v6

    if-lez v8, :cond_3a

    goto :goto_3b

    :cond_3a
    move v9, v10

    :goto_3b
    return v9
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 32
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/utils/SizeAreaComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
