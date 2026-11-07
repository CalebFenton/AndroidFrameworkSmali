.class Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;
.super Ljava/lang/Object;
.source "AndroidServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;


# direct methods
.method private constructor blacklist <init>(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>.GenericServiceConnection;"
    iput-object p1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;Lcom/android/federatedcompute/internal/util/AndroidServiceBinder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;-><init>(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 337
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>.GenericServiceConnection;"
    invoke-static {}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmServiceIntentActionOrName(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-virtual {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->unbindFromService()V

    .line 339
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmConnectionCountDownLatch(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 340
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 344
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>.GenericServiceConnection;"
    invoke-static {}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNullBinding shouldn\'t happen. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmServiceIntentActionOrName(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-virtual {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->unbindFromService()V

    .line 346
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmConnectionCountDownLatch(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 347
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 321
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>.GenericServiceConnection;"
    invoke-static {}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmServiceIntentActionOrName(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmLock(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 323
    :try_start_27
    iget-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmBinderConverter(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fputmService(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;Ljava/lang/Object;)V

    .line 324
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_41

    .line 325
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmConnectionCountDownLatch(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 326
    return-void

    .line 324
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 330
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>.GenericServiceConnection;"
    invoke-static {}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmServiceIntentActionOrName(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-virtual {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->unbindFromService()V

    .line 332
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;->this$0:Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-static {v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->-$$Nest$fgetmConnectionCountDownLatch(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 333
    return-void
.end method
