.class Lcom/android/internal/app/AbstractResolverComparator$1;
.super Landroid/os/Handler;
.source "AbstractResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/AbstractResolverComparator;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AbstractResolverComp"

    packed-switch v0, :pswitch_data_52

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_50

    .line 91
    :pswitch_b
    const-string v0, "RANKER_RESULT_TIMEOUT; unbinding services"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    .line 95
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/AbstractResolverComparator;->-$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 96
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/AbstractResolverComparator;->-$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppShareRankingTimeout()V

    goto :goto_50

    .line 80
    :pswitch_2f
    const-string v0, "RANKER_SERVICE_RESULT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->handleResultMessage(Landroid/os/Message;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    .line 103
    :cond_50
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_b
    .end packed-switch
.end method
