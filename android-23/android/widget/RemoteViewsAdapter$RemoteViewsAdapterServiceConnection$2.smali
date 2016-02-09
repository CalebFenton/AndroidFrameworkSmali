.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p2, "val$adapter"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 262
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 268
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@c
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get1(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@16
    .line 269
    .local v0, "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    if-eqz v0, :cond_0

    #@18
    .line 270
    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterDisconnected()V

    #@1b
    .line 264
    :cond_0
    return-void
.end method
