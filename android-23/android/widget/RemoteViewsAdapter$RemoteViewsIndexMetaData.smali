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
.field itemId:J

.field typeId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;J)V
    .locals 0
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "itemId"    # J

    #@0
    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 528
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    #@6
    .line 527
    return-void
.end method


# virtual methods
.method public set(Landroid/widget/RemoteViews;J)V
    .locals 2
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # J

    #@0
    .prologue
    .line 532
    iput-wide p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    #@2
    .line 533
    if-eqz p1, :cond_0

    #@4
    .line 534
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    #@a
    .line 531
    :goto_0
    return-void

    #@b
    .line 536
    :cond_0
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    #@e
    goto :goto_0
.end method
