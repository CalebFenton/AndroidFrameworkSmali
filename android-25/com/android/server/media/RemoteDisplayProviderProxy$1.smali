.class Lcom/android/server/media/RemoteDisplayProviderProxy$1;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-set0(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)Z

    #@6
    .line 314
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@8
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get1(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 315
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@10
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get1(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    #@13
    move-result-object v0

    #@14
    .line 316
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@16
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@18
    invoke-static {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get0(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;

    #@1b
    move-result-object v2

    #@1c
    .line 315
    invoke-interface {v0, v1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    #@1f
    .line 312
    :cond_0
    return-void
.end method
