.class Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;
.super Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;
.source "VcnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VcnUnderlyingNetworkPolicyListenerBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$6Z6YdB5EHfXf87V0WmvgpCXB1c8(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->lambda$onPolicyChanged$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Bty6dBtUjsPGmcKWiFRmHvdBioQ(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->lambda$onPolicyChanged$1()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    .line 707
    invoke-direct {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;-><init>()V

    .line 708
    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 709
    iput-object p2, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    .line 710
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;Landroid/net/vcn/VcnManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPolicyChanged$0()V
    .registers 2

    .line 715
    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    invoke-interface {v0}, Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;->onPolicyChanged()V

    return-void
.end method

.method private synthetic blacklist lambda$onPolicyChanged$1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda1;-><init>(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onPolicyChanged()V
    .registers 2

    .line 714
    new-instance v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;-><init>(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V

    invoke-static {v0}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 716
    return-void
.end method
