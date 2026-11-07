.class Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;
.super Landroid/companion/IOnMessageReceivedListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnMessageReceivedListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$h3RZNAxdj5ARSW3fDTznBn7bBL4(Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->lambda$onMessageReceived$0(I[B)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 1952
    .local p2, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Landroid/companion/IOnMessageReceivedListener$Stub;-><init>()V

    .line 1953
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1954
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mListener:Ljava/util/function/BiConsumer;

    .line 1955
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$0(I[B)V
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "data"    # [B

    .line 1959
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mListener:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onMessageReceived(I[B)V
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "data"    # [B

    .line 1959
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1960
    return-void
.end method
