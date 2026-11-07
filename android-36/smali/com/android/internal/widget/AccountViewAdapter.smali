.class public Lcom/android/internal/widget/AccountViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AccountViewAdapter$AccountElements;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 67
    if-nez p2, :cond_a

    .line 68
    new-instance v0, Lcom/android/internal/widget/AccountItemView;

    iget-object v1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    .local v0, "view":Lcom/android/internal/widget/AccountItemView;
    goto :goto_d

    .line 70
    .end local v0    # "view":Lcom/android/internal/widget/AccountItemView;
    :cond_a
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/AccountItemView;

    .line 72
    .restart local v0    # "view":Lcom/android/internal/widget/AccountItemView;
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AccountViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    .line 73
    .local v1, "elements":Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AccountItemView;->setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V

    .line 74
    return-object v0
.end method

.method public blacklist updateData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AccountViewAdapter$AccountElements;>;"
    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/AccountViewAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
