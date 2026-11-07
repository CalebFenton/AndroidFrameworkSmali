.class Landroid/print/PrintServiceRecommendationsLoader$MyHandler;
.super Landroid/os/Handler;
.source "PrintServiceRecommendationsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServiceRecommendationsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/print/PrintServiceRecommendationsLoader;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintServiceRecommendationsLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    .line 110
    invoke-virtual {p1}, Landroid/print/PrintServiceRecommendationsLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 115
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    invoke-virtual {v0}, Landroid/print/PrintServiceRecommendationsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 116
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/print/PrintServiceRecommendationsLoader;->deliverResult(Ljava/lang/Object;)V

    .line 118
    :cond_11
    return-void
.end method
