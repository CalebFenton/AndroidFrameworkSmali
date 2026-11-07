.class Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;
.super Landroid/companion/IAssociationRequestCallback$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssociationRequestCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;

    .line 1872
    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    .line 1873
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 1874
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1875
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 1876
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;

    .line 1865
    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    .line 1866
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1867
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 1868
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 1869
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private blacklist execute(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "TT;TU;>;TT;TU;)V"
        }
    .end annotation

    .line 1906
    .local p1, "callback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT;TU;>;"
    .local p2, "arg1":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_e

    .line 1907
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1909
    :cond_e
    return-void
.end method

.method private blacklist execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1898
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_f

    .line 1899
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 1900
    :cond_f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    .line 1901
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1903
    :cond_1d
    :goto_1d
    return-void
.end method

.method static synthetic blacklist lambda$execute$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 1899
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$execute$1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 1901
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$execute$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/BiConsumer;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 1907
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 1885
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 1886
    return-void
.end method

.method public blacklist onAssociationPending(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 1880
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 1881
    return-void
.end method

.method public blacklist onFailure(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "error"    # Ljava/lang/CharSequence;

    .line 1890
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationFailureCode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1891
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1894
    :cond_17
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 1895
    return-void
.end method
