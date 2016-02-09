.class Landroid/widget/RemoteViewsAdapter$5;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 1298
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$5;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$5;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1302
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$5;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@9
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 1305
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$5;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@13
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    #@16
    .line 1306
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$5;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@18
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    #@1b
    .line 1300
    return-void

    #@1c
    .line 1301
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
