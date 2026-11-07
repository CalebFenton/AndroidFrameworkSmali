.class public final Landroid/service/dreams/DreamOverlayConnectionHandler;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;,
        Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;,
        Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;
    }
.end annotation


# static fields
.field private static final blacklist MSG_ADD_CONSUMER:I = 0x1

.field private static final blacklist MSG_OVERLAY_CLIENT_READY:I = 0x3

.field private static final blacklist MSG_REMOVE_CONSUMER:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "DreamOverlayConnection"


# instance fields
.field private final blacklist mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

.field private blacklist mClient:Landroid/service/dreams/IDreamOverlayClient;

.field private final blacklist mConnection:Lcom/android/internal/util/ObservableServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mOnDisconnected:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/dreams/DreamOverlayConnectionHandler;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDisconnected(Landroid/service/dreams/DreamOverlayConnectionHandler;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mOnDisconnected:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClient(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAddConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->onAddConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monOverlayClientReady(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->onOverlayClientReady(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRemoveConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->onRemoveConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "serviceIntent"    # Landroid/content/Intent;
    .param p4, "onDisconnected"    # Ljava/lang/Runnable;

    .line 63
    new-instance v5, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;

    invoke-direct {v5}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "looper":Landroid/os/Looper;
    .end local p3    # "serviceIntent":Landroid/content/Intent;
    .end local p4    # "onDisconnected":Ljava/lang/Runnable;
    .local v1, "context":Landroid/content/Context;
    .local v2, "looper":Landroid/os/Looper;
    .local v3, "serviceIntent":Landroid/content/Intent;
    .local v4, "onDisconnected":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v5}, Landroid/service/dreams/DreamOverlayConnectionHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "serviceIntent"    # Landroid/content/Intent;
    .param p4, "onDisconnected"    # Ljava/lang/Runnable;
    .param p5, "injector"    # Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    .line 73
    new-instance v0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler-IA;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    .line 74
    new-instance v0, Landroid/os/Handler;

    new-instance v2, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;

    invoke-direct {v2, p0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler-IA;)V

    invoke-direct {v0, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p4, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mOnDisconnected:Ljava/lang/Runnable;

    .line 76
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p5, p1, v0, p3}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;->buildConnection(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)Lcom/android/internal/util/ObservableServiceConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    .line 80
    return-void
.end method

.method private blacklist onAddConsumer(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlayClient;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 162
    :cond_9
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private blacklist onOverlayClientReady(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 5
    .param p1, "client"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 152
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    .line 153
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 154
    .local v1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlayClient;>;"
    iget-object v2, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 155
    .end local v1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlayClient;>;"
    goto :goto_8

    .line 156
    :cond_1a
    return-void
.end method

.method private blacklist onRemoveConsumer(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlayClient;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method


# virtual methods
.method public blacklist addConsumer(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlayClient;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method public blacklist bind()Z
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ObservableServiceConnection;->addCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    .line 90
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/util/ObservableServiceConnection;->bind()Z

    move-result v0

    .line 91
    .local v0, "success":Z
    if-nez v0, :cond_12

    .line 92
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    .line 94
    :cond_12
    return v0
.end method

.method public blacklist removeConsumer(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlayClient;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public blacklist unbind()V
    .registers 3

    .line 101
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mCallback:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ObservableServiceConnection;->removeCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    .line 103
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    iput-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mClient:Landroid/service/dreams/IDreamOverlayClient;

    .line 105
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler;->mConnection:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/util/ObservableServiceConnection;->unbind()V

    .line 107
    return-void
.end method
