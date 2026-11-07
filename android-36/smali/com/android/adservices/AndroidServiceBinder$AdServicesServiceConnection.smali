.class final Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;
.super Ljava/lang/Object;
.source "AndroidServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/adservices/AndroidServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdServicesServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/adservices/AndroidServiceBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ewkgc4f96-_zm4KO5v_yZFYJTyA(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->lambda$onNullBinding$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JFivLiIhNXYxuIZx_Y2Umo1iEE0(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wi7SPW_pNqYgo7DUfHoLQr1mCGI(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ouIMBDudwQz8z_XE-V8C_YUA8aQ(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->lambda$onBindingDied$2()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/adservices/AndroidServiceBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    iput-object p1, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/adservices/AndroidServiceBinder;Lcom/android/adservices/AndroidServiceBinder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;-><init>(Lcom/android/adservices/AndroidServiceBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBindingDied$2()V
    .registers 2

    .line 233
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/AndroidServiceBinder;->unbindFromService()V

    return-void
.end method

.method private synthetic blacklist lambda$onNullBinding$3()V
    .registers 2

    .line 238
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/AndroidServiceBinder;->unbindFromService()V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IBinder;

    .line 219
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-static {v0}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$fgetmLock(Lcom/android/adservices/AndroidServiceBinder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_7
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    iget-object v2, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$fgetmBinderConverter(Lcom/android/adservices/AndroidServiceBinder;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$fputmService(Lcom/android/adservices/AndroidServiceBinder;Ljava/lang/Object;)V

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private synthetic blacklist lambda$onServiceDisconnected$1()V
    .registers 2

    .line 228
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/AndroidServiceBinder;->unbindFromService()V

    return-void
.end method

.method private blacklist onCallback(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 243
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    if-nez p2, :cond_5

    const-string v0, "N/A"

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "service":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    .line 246
    invoke-static {v1}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$mgetUserIdForLogging(Lcom/android/adservices/AndroidServiceBinder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$fgetmServiceIntentAction(Lcom/android/adservices/AndroidServiceBinder;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 244
    const-string v2, "%s(userId=%s, action=%s, service=%s)"

    invoke-static {v2, v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    :try_start_1e
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 250
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-static {v1}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$fgetmConnectionCountDownLatch(Lcom/android/adservices/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 251
    nop

    .line 252
    return-void

    .line 250
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->this$0:Lcom/android/adservices/AndroidServiceBinder;

    invoke-static {v2}, Lcom/android/adservices/AndroidServiceBinder;->-$$Nest$fgetmConnectionCountDownLatch(Lcom/android/adservices/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 251
    throw v1
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 233
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    new-instance v0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;)V

    const-string v1, "onBindingDied"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->onCallback(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 238
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    new-instance v0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;)V

    const-string v1, "onNullBinding"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->onCallback(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 215
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    new-instance v0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;Landroid/os/IBinder;)V

    const-string v1, "onServiceConnected"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->onCallback(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 228
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;, "Lcom/android/adservices/AndroidServiceBinder<TT;>.AdServicesServiceConnection;"
    new-instance v0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;)V

    const-string v1, "onServiceDisconnected"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->onCallback(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
