.class final Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 9314
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    #@4
    .line 9315
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    #@6
    .line 9317
    .local v1, "v2":I
    if-eq v0, v1, :cond_1

    #@8
    .line 9318
    if-le v0, v1, :cond_0

    #@a
    :goto_0
    return v2

    #@b
    :cond_0
    move v2, v3

    #@c
    goto :goto_0

    #@d
    .line 9320
    :cond_1
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@f
    .line 9321
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@11
    .line 9322
    if-eq v0, v1, :cond_3

    #@13
    .line 9323
    if-le v0, v1, :cond_2

    #@15
    :goto_1
    return v2

    #@16
    :cond_2
    move v2, v3

    #@17
    goto :goto_1

    #@18
    .line 9325
    :cond_3
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@1a
    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@1c
    if-eq v4, v5, :cond_5

    #@1e
    .line 9326
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@20
    if-eqz v4, :cond_4

    #@22
    :goto_2
    return v2

    #@23
    :cond_4
    move v2, v3

    #@24
    goto :goto_2

    #@25
    .line 9328
    :cond_5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    #@27
    .line 9329
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    #@29
    .line 9331
    if-eq v0, v1, :cond_7

    #@2b
    .line 9332
    if-le v0, v1, :cond_6

    #@2d
    :goto_3
    return v2

    #@2e
    :cond_6
    move v2, v3

    #@2f
    goto :goto_3

    #@30
    .line 9334
    :cond_7
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    #@32
    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    #@34
    if-eq v4, v5, :cond_9

    #@36
    .line 9335
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    #@38
    if-eqz v4, :cond_8

    #@3a
    :goto_4
    return v2

    #@3b
    :cond_8
    move v2, v3

    #@3c
    goto :goto_4

    #@3d
    .line 9337
    :cond_9
    const/4 v2, 0x0

    #@3e
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 9313
    check-cast p1, Landroid/content/pm/ResolveInfo;

    #@2
    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    #@4
    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$2;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
