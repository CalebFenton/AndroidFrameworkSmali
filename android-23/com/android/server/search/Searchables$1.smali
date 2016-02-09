.class final Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/Searchables;
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
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 335
    if-ne p1, p2, :cond_0

    #@2
    .line 336
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 338
    :cond_0
    invoke-static {p1}, Lcom/android/server/search/Searchables;->-wrap0(Landroid/content/pm/ResolveInfo;)Z

    #@7
    move-result v0

    #@8
    .line 339
    .local v0, "lhsSystem":Z
    invoke-static {p2}, Lcom/android/server/search/Searchables;->-wrap0(Landroid/content/pm/ResolveInfo;)Z

    #@b
    move-result v1

    #@c
    .line 341
    .local v1, "rhsSystem":Z
    if-eqz v0, :cond_1

    #@e
    if-eqz v1, :cond_3

    #@10
    .line 343
    :cond_1
    if-eqz v1, :cond_2

    #@12
    if-eqz v0, :cond_4

    #@14
    .line 351
    :cond_2
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    #@16
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    #@18
    sub-int/2addr v2, v3

    #@19
    return v2

    #@1a
    .line 342
    :cond_3
    const/4 v2, -0x1

    #@1b
    return v2

    #@1c
    .line 344
    :cond_4
    const/4 v2, 0x1

    #@1d
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 334
    check-cast p1, Landroid/content/pm/ResolveInfo;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
