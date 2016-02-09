.class Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsCacheKey"
.end annotation


# instance fields
.field final filter:Landroid/content/Intent$FilterComparison;

.field final widgetId:I


# direct methods
.method constructor <init>(Landroid/content/Intent$FilterComparison;I)V
    .locals 0
    .param p1, "filter"    # Landroid/content/Intent$FilterComparison;
    .param p2, "widgetId"    # I

    #@0
    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 802
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    #@5
    .line 803
    iput p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    #@7
    .line 801
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 808
    instance-of v2, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 809
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 811
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@9
    .line 812
    .local v0, "other":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    iget-object v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    #@b
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    #@d
    invoke-virtual {v2, v3}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    #@15
    iget v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    #@7
    shl-int/lit8 v1, v1, 0x2

    #@9
    xor-int/2addr v0, v1

    #@a
    return v0

    #@b
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    #@d
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->hashCode()I

    #@10
    move-result v0

    #@11
    goto :goto_0
.end method
