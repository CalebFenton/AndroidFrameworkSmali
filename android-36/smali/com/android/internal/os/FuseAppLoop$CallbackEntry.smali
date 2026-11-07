.class Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackEntry"
.end annotation


# instance fields
.field final greylist-max-o callback:Landroid/os/ProxyFileDescriptorCallback;

.field final greylist-max-o handler:Landroid/os/Handler;

.field greylist-max-o opened:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ProxyFileDescriptorCallback;

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 342
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    .line 343
    return-void
.end method


# virtual methods
.method greylist-max-o getThreadId()J
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method
