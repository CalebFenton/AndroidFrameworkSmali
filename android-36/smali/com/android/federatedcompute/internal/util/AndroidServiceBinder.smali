.class Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;
.super Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
.source "AndroidServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist BINDER_CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final blacklist GET_SERVICE_RETRY_DELAY_MS:J = 0x64L

.field private static final blacklist MAX_GET_SERVICE_RETRIES:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBindFlags:I

.field private final blacklist mBinderConverter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEnableLookupByServiceName:Z

.field private final blacklist mIsolatedProcessName:Ljava/lang/String;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private final blacklist mServiceIntentActionOrName:Ljava/lang/String;

.field private final blacklist mServicePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinderConverter(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/function/Function;
    .registers 1

    iget-object p0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mBinderConverter:Ljava/util/function/Function;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionCountDownLatch(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceIntentActionOrName(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mService:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/function/Function;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentActionOrName"    # Ljava/lang/String;
    .param p3, "servicePackage"    # Ljava/lang/String;
    .param p4, "isolatedProcessName"    # Ljava/lang/String;
    .param p5, "enableLookupByName"    # Z
    .param p6, "bindFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p7, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    nop

    .line 122
    invoke-static {p3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceIntentActionOrName":Ljava/lang/String;
    .end local p4    # "isolatedProcessName":Ljava/lang/String;
    .end local p5    # "enableLookupByName":Z
    .end local p6    # "bindFlags":I
    .end local p7    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceIntentActionOrName":Ljava/lang/String;
    .local v4, "isolatedProcessName":Ljava/lang/String;
    .local v5, "enableLookupByName":Z
    .local v6, "bindFlags":I
    .local v7, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct/range {v0 .. v7}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILjava/util/function/Function;)V

    .line 127
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentAction"    # Ljava/lang/String;
    .param p3, "servicePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-static {p3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Function;)V

    .line 69
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Function;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentActionOrName"    # Ljava/lang/String;
    .param p3, "servicePackage"    # Ljava/lang/String;
    .param p4, "enableLookupByName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p5, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceIntentActionOrName":Ljava/lang/String;
    .end local p3    # "servicePackage":Ljava/lang/String;
    .end local p4    # "enableLookupByName":Z
    .end local p5    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceIntentActionOrName":Ljava/lang/String;
    .local v3, "servicePackage":Ljava/lang/String;
    .local v5, "enableLookupByName":Z
    .local v7, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct/range {v0 .. v7}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/function/Function;)V

    .line 109
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/util/function/Function;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentAction"    # Ljava/lang/String;
    .param p4, "bindFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p3, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceIntentAction":Ljava/lang/String;
    .end local p3    # "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "bindFlags":I
    .end local p5    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceIntentAction":Ljava/lang/String;
    .local v3, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "bindFlags":I
    .local v7, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct/range {v0 .. v7}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILjava/util/function/Function;)V

    .line 93
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILjava/util/function/Function;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentActionOrName"    # Ljava/lang/String;
    .param p4, "isolatedProcessName"    # Ljava/lang/String;
    .param p5, "enableLookupByName"    # Z
    .param p6, "bindFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p3, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct {p0}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    .line 137
    iput-object p2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mContext:Landroid/content/Context;

    .line 139
    iput-object p7, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mBinderConverter:Ljava/util/function/Function;

    .line 140
    iput-object p3, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServicePackages:Ljava/util/List;

    .line 141
    iput-boolean p5, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mEnableLookupByServiceName:Z

    .line 142
    iput p6, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mBindFlags:I

    .line 143
    iput-object p4, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mIsolatedProcessName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Function;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p3, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceIntentAction":Ljava/lang/String;
    .end local p3    # "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceIntentAction":Ljava/lang/String;
    .local v3, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/util/function/Function;)V

    .line 77
    return-void
.end method

.method private blacklist getIntentBasedOnAction()Landroid/content/Intent;
    .registers 6

    .line 245
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->resolveComponentName(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 247
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_11

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    return-object v0

    .line 248
    :cond_11
    sget-object v2, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Invalid component for %s intent"

    invoke-static {v2, v4, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 250
    const-string v4, "Invalid component for %s service"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist getIntentBasedOnServiceName()Landroid/content/Intent;
    .registers 5

    .line 237
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServicePackages:Ljava/util/List;

    .line 239
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 241
    return-object v0
.end method

.method private blacklist getServiceWithoutRetry(Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    iget-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_3
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mService:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c8

    if-eqz v0, :cond_f

    .line 180
    :try_start_7
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mService:Ljava/lang/Object;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    return-object v0

    .line 217
    :catchall_b
    move-exception v0

    move-object v6, p1

    goto/16 :goto_ca

    .line 182
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_78

    .line 184
    iget-boolean v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mEnableLookupByServiceName:Z
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c8

    if-eqz v0, :cond_1c

    .line 185
    :try_start_17
    invoke-direct {p0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->getIntentBasedOnServiceName()Landroid/content/Intent;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_b

    goto :goto_20

    .line 186
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->getIntentBasedOnAction()Landroid/content/Intent;

    move-result-object v0

    :goto_20
    move-object v3, v0

    .line 188
    .local v3, "bindIntent":Landroid/content/Intent;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 189
    new-instance v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;

    const/4 v8, 0x0

    invoke-direct {v0, p0, v8}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder$GenericServiceConnection;-><init>(Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;Lcom/android/federatedcompute/internal/util/AndroidServiceBinder-IA;)V

    iput-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 192
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mIsolatedProcessName:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 194
    move v0, v2

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mBindFlags:I

    or-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mIsolatedProcessName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_c8

    move-object v6, p1

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    :try_start_40
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    goto :goto_52

    .line 200
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :cond_45
    move-object v6, p1

    move v0, v2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    iget-object p1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mBindFlags:I

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, v0, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    :goto_52
    nop

    .line 205
    .local p1, "result":Z
    if-eqz p1, :cond_64

    .line 212
    sget-object v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v2, "bindService() %s succeeded..."

    iget-object v4, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/federatedcompute/internal/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 214
    nop

    .end local v3    # "bindIntent":Landroid/content/Intent;
    .end local p1    # "result":Z
    goto :goto_86

    .line 206
    .restart local v3    # "bindIntent":Landroid/content/Intent;
    .restart local p1    # "result":Z
    :cond_64
    iput-object v8, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to bind to the service %s"

    iget-object v4, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 208
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    throw v0

    .line 215
    .end local v3    # "bindIntent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    .local p1, "executor":Ljava/util/concurrent/Executor;
    :cond_78
    move-object v6, p1

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    sget-object p1, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v0, "bindService() %s already pending..."

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    :goto_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_40 .. :try_end_87} :catchall_cc

    .line 221
    :try_start_87
    iget-object p1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_90} :catch_b1

    .line 225
    nop

    .line 226
    iget-object p1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 227
    :try_start_94
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_9c

    .line 232
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mService:Ljava/lang/Object;

    monitor-exit p1

    return-object v0

    .line 228
    :cond_9c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to connect to the service %s"

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    throw v0

    .line 233
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    :catchall_ae
    move-exception v0

    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_ae

    throw v0

    .line 222
    :catch_b1
    move-exception v0

    move-object p1, v0

    .line 223
    .local p1, "e":Ljava/lang/InterruptedException;
    sget-object v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "Failed to connect to the service %s "

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .local p1, "executor":Ljava/util/concurrent/Executor;
    :catchall_c8
    move-exception v0

    move-object v6, p1

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    :goto_ca
    :try_start_ca
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cc

    throw v0

    :catchall_cc
    move-exception v0

    goto :goto_ca
.end method

.method private blacklist resolveComponentName(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 263
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    const/high16 v1, 0x100000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_aa

    .line 269
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_31

    .line 270
    sget-object v2, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Found more than 1 (%d) service by intent %s!"

    invoke-static {v2, v4, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 275
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const-string v4, "Resolved component with pkg %s, class %s"

    if-eqz v3, :cond_7a

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_7a

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_7a

    iget-object v5, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServicePackages:Ljava/util/List;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 278
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 281
    sget-object v1, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 288
    :cond_7a
    if-eqz v3, :cond_92

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_92

    .line 289
    sget-object v5, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_99

    .line 295
    :cond_92
    sget-object v4, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v5, "Resolved component is null or service info is null"

    invoke-static {v4, v5}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_99
    goto :goto_35

    .line 299
    :cond_9a
    sget-object v2, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Didn\'t find any matching service %s."

    invoke-static {v2, v4, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    return-object v1

    .line 267
    :cond_aa
    :goto_aa
    sget-object v2, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to find service %s!"

    invoke-static {v2, v4, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 268
    return-object v1
.end method


# virtual methods
.method public blacklist getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    const/4 v0, 0x0

    .line 150
    .local v0, "retryAttempts":I
    const/4 v1, 0x0

    .line 152
    .local v1, "exceptionInfo":Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3a

    .line 154
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->getServiceWithoutRetry(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_9} :catch_d

    .line 155
    .local v2, "service":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_c

    .line 156
    return-object v2

    .line 161
    :cond_c
    goto :goto_29

    .line 158
    .end local v2    # "service":Ljava/lang/Object;, "TT;"
    :catch_d
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get service on attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 160
    move-object v1, v2

    .line 162
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 164
    const-wide/16 v2, 0x64

    :try_start_2d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    .line 167
    :goto_30
    goto :goto_2

    .line 165
    :catch_31
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v4, "Thread sleep interrupted"

    invoke-static {v3, v4}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_30

    .line 170
    :cond_3a
    if-eqz v1, :cond_3e

    .line 171
    move-object v2, v1

    goto :goto_53

    .line 172
    :cond_3e
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 173
    const-string v4, "Failed to get non-null service %s after %d retries"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_53
    throw v2
.end method

.method public blacklist unbindFromService()V
    .registers 6

    .line 304
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;, "Lcom/android/federatedcompute/internal/util/AndroidServiceBinder<TT;>;"
    iget-object v0, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2a

    .line 306
    sget-object v1, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v2, "unbinding %s..."

    iget-object v3, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_31

    .line 308
    :try_start_14
    iget-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1b} :catch_1c
    .catchall {:try_start_14 .. :try_end_1b} :catchall_31

    .line 311
    goto :goto_2a

    .line 309
    :catch_1c
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1d
    sget-object v2, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->TAG:Ljava/lang/String;

    const-string v3, "unbinding failed %s"

    iget-object v4, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceIntentActionOrName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 313
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 314
    iput-object v1, p0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;->mService:Ljava/lang/Object;

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_31

    throw v1
.end method
