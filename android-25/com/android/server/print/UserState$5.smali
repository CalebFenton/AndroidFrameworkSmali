.class Lcom/android/server/print/UserState$5;
.super Lcom/android/server/print/UserState$ListenerRecord;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/print/UserState$ListenerRecord",
        "<",
        "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "this$0_1"    # Lcom/android/server/print/UserState;
    .param p3, "$anonymous0"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 643
    iput-object p2, p0, Lcom/android/server/print/UserState$5;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-direct {p0, p1, p3}, Lcom/android/server/print/UserState$ListenerRecord;-><init>(Lcom/android/server/print/UserState;Landroid/os/IInterface;)V

    #@5
    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 2

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/print/UserState$5;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-static {v0}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState$5;->this$0:Lcom/android/server/print/UserState;

    #@9
    invoke-static {v0}, Lcom/android/server/print/UserState;->-get4(Lcom/android/server/print/UserState;)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 648
    iget-object v0, p0, Lcom/android/server/print/UserState$5;->this$0:Lcom/android/server/print/UserState;

    #@11
    invoke-static {v0}, Lcom/android/server/print/UserState;->-get4(Lcom/android/server/print/UserState;)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 645
    return-void

    #@1a
    .line 646
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
