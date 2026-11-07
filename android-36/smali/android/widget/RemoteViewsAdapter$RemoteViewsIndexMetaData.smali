.class Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsIndexMetaData"
.end annotation


# instance fields
.field greylist-max-o itemId:J

.field greylist-max-o typeId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/RemoteViews;J)V
    .registers 4
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "itemId"    # J

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    .line 549
    return-void
.end method


# virtual methods
.method public greylist-max-o set(Landroid/widget/RemoteViews;J)V
    .registers 5
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # J

    .line 552
    iput-wide p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    .line 553
    if-eqz p1, :cond_b

    .line 554
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    goto :goto_e

    .line 556
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 558
    :goto_e
    return-void
.end method
