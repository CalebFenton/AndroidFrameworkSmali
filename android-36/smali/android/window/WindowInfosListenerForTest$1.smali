.class Landroid/window/WindowInfosListenerForTest$1;
.super Landroid/window/WindowInfosListener;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/WindowInfosListenerForTest;->addWindowInfosListener(Ljava/util/function/BiConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$calledWithInitialState:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$consumer:Ljava/util/function/BiConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/window/WindowInfosListenerForTest;Ljava/util/concurrent/CountDownLatch;Ljava/util/function/BiConsumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/window/WindowInfosListenerForTest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 226
    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$1;->val$calledWithInitialState:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Landroid/window/WindowInfosListenerForTest$1;->val$consumer:Ljava/util/function/BiConsumer;

    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 7
    .param p1, "windowHandles"    # [Landroid/view/InputWindowHandle;
    .param p2, "displayInfos"    # [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest$1;->val$calledWithInitialState:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 236
    goto :goto_e

    .line 232
    :catch_6
    move-exception v0

    .line 233
    .local v0, "exception":Ljava/lang/InterruptedException;
    const-string v1, "WindowInfosListenerForTest"

    const-string v2, "Exception thrown while waiting for listener to be called with initial state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :goto_e
    invoke-static {p1, p2}, Landroid/window/WindowInfosListenerForTest;->-$$Nest$smbuildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;

    move-result-object v0

    .line 238
    .local v0, "params":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;Ljava/util/List<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;>;"
    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$1;->val$consumer:Ljava/util/function/BiConsumer;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    return-void
.end method
