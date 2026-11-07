.class Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
.super Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;
.source "TelephonyRegistryManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyRegistryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierPrivilegesCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$lEgcXNbXdvgEjTZJgudwLqN4fsU(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/util/Set;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->lambda$onCarrierPrivilegesChanged$1(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qlGxaZ82Y5X-jxUAQeut77LvTjI(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->lambda$onCarrierServiceChanged$3(Ljava/lang/String;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1662
    invoke-direct {p0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;-><init>()V

    .line 1663
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 1664
    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1665
    return-void
.end method

.method static synthetic blacklist lambda$onCarrierPrivilegesChanged$0(Ljava/util/Set;Ljava/util/Set;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 3
    .param p0, "privilegedPkgNamesSet"    # Ljava/util/Set;
    .param p1, "privilegedUidsSet"    # Ljava/util/Set;
    .param p2, "cpc"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1680
    invoke-interface {p2, p0, p1}, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierPrivilegesChanged$1(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .param p1, "privilegedPkgNamesSet"    # Ljava/util/Set;
    .param p2, "privilegedUidsSet"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1676
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 1678
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 1676
    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierServiceChanged$2(Ljava/lang/String;ILandroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "cpc"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1691
    invoke-interface {p2, p0, p1}, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierServiceChanged$3(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 1690
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 1688
    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    .registers 6
    .param p2, "privilegedUids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .line 1671
    .local p1, "privilegedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 1672
    .local v0, "privilegedPkgNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    .line 1673
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    .line 1672
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1674
    .local v1, "privilegedUidsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1682
    return-void
.end method

.method public blacklist onCarrierServiceChanged(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1686
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1692
    return-void
.end method
