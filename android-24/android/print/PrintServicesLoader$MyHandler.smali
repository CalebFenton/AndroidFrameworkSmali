.class Landroid/print/PrintServicesLoader$MyHandler;
.super Landroid/os/Handler;
.source "PrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServicesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServicesLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintServicesLoader;)V
    .locals 1
    .param p1, "this$0"    # Landroid/print/PrintServicesLoader;

    #@0
    .prologue
    .line 116
    iput-object p1, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    #@2
    .line 117
    invoke-virtual {p1}, Landroid/print/PrintServicesLoader;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@3
    .line 124
    iget-object v0, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    #@5
    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->isStarted()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 125
    iget-object v1, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    #@d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v0, Ljava/util/List;

    #@11
    invoke-virtual {v1, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    #@14
    .line 121
    :cond_0
    return-void
.end method
