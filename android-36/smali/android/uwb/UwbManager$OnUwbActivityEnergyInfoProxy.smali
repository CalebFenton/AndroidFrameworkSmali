.class Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;
.super Landroid/uwb/IOnUwbActivityEnergyInfoListener$Stub;
.source "UwbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUwbActivityEnergyInfoProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/uwb/UwbActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/uwb/UwbActivityEnergyInfo;",
            ">;)V"
        }
    .end annotation

    .line 1173
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/uwb/UwbActivityEnergyInfo;>;"
    invoke-direct {p0}, Landroid/uwb/IOnUwbActivityEnergyInfoListener$Stub;-><init>()V

    .line 1168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    .line 1174
    iput-object p1, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1175
    iput-object p2, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mListener:Ljava/util/function/Consumer;

    .line 1176
    return-void
.end method

.method static synthetic blacklist lambda$onUwbActivityEnergyInfo$0(Ljava/util/function/Consumer;Landroid/uwb/UwbActivityEnergyInfo;)V
    .registers 2
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "info"    # Landroid/uwb/UwbActivityEnergyInfo;

    .line 1193
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onUwbActivityEnergyInfo(Landroid/uwb/UwbActivityEnergyInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/uwb/UwbActivityEnergyInfo;

    .line 1182
    iget-object v0, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_3
    iget-object v1, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_c

    goto :goto_22

    .line 1186
    :cond_c
    iget-object v1, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1187
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mListener:Ljava/util/function/Consumer;

    .line 1189
    .local v2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/uwb/UwbActivityEnergyInfo;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1190
    iput-object v3, p0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;->mListener:Ljava/util/function/Consumer;

    .line 1191
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_24

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1193
    new-instance v0, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/uwb/UwbActivityEnergyInfo;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1194
    return-void

    .line 1184
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/uwb/UwbActivityEnergyInfo;>;"
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit v0

    return-void

    .line 1191
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v1
.end method
