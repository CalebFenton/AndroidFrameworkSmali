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
.field final greylist-max-o filter:Landroid/content/Intent$FilterComparison;

.field final greylist-max-o widgetId:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Intent$FilterComparison;I)V
    .registers 3
    .param p1, "filter"    # Landroid/content/Intent$FilterComparison;
    .param p2, "widgetId"    # I

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    .line 815
    iput p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    .line 816
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 820
    instance-of v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 821
    return v1

    .line 823
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 824
    .local v0, "other":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    iget-object v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    iget v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 829
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->hashCode()I

    move-result v0

    :goto_c
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    return v0
.end method
