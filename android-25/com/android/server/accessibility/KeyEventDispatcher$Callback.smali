.class Lcom/android/server/accessibility/KeyEventDispatcher$Callback;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/KeyEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/KeyEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/KeyEventDispatcher;

    #@0
    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher;Lcom/android/server/accessibility/KeyEventDispatcher$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/KeyEventDispatcher;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 285
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    if-eq v3, v5, :cond_0

    #@5
    .line 286
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "Unknown message: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    iget v5, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    .line 288
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@25
    .line 289
    .local v2, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    #@27
    invoke-static {v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->-get0(Lcom/android/server/accessibility/KeyEventDispatcher;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    monitor-enter v4

    #@2c
    .line 290
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    #@2e
    invoke-static {v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->-get1(Lcom/android/server/accessibility/KeyEventDispatcher;)Ljava/util/Map;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@35
    move-result-object v3

    #@36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    .local v1, "listForService$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_2

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/util/ArrayList;

    #@46
    .line 291
    .local v0, "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_1

    #@4c
    .line 292
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    #@4e
    invoke-static {v3, v2}, Lcom/android/server/accessibility/KeyEventDispatcher;->-wrap0(Lcom/android/server/accessibility/KeyEventDispatcher;Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_1

    #@54
    .end local v0    # "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_2
    monitor-exit v4

    #@55
    .line 298
    return v5

    #@56
    .line 289
    .end local v1    # "listForService$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@57
    monitor-exit v4

    #@58
    throw v3
.end method
