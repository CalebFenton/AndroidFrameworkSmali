.class Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
.super Landroid/companion/IOnTransportsChangedListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTransportsChangedListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$MApraL_Q9G01BI3ANNv74TfVF9g(Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->lambda$onTransportsChanged$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->mListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1935
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    .line 1936
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1937
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->mListener:Ljava/util/function/Consumer;

    .line 1938
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTransportsChanged$0(Ljava/util/List;)V
    .registers 3
    .param p1, "associations"    # Ljava/util/List;

    .line 1942
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onTransportsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1942
    .local p1, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1943
    return-void
.end method
