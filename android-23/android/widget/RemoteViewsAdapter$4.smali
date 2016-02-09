.class Landroid/widget/RemoteViewsAdapter$4;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field final synthetic val$position:I

.field final synthetic val$rv:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;
    .param p2, "val$position"    # I
    .param p3, "val$rv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1060
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$4;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    iput p2, p0, Landroid/widget/RemoteViewsAdapter$4;->val$position:I

    #@4
    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter$4;->val$rv:Landroid/widget/RemoteViews;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$4;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get5(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$4;->val$position:I

    #@8
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$4;->val$rv:Landroid/widget/RemoteViews;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V

    #@d
    .line 1062
    return-void
.end method
