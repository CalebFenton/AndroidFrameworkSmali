.class Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;
.super Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->listFeatures(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$featureListReceiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 184
    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->val$featureListReceiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$2(Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5
    .param p0, "featureListReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 195
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;-><init>(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$3(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "featureListReceiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorParams"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Ljava/util/List;)V
    .registers 2
    .param p0, "featureListReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Ljava/util/List;

    .line 188
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$1(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Ljava/util/List;)V
    .registers 4
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "featureListReceiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "result"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 194
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->val$featureListReceiver:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda0;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "errorCode":I
    .end local p2    # "errorMessage":Ljava/lang/String;
    .end local p3    # "errorParams":Landroid/os/PersistableBundle;
    .local v3, "errorCode":I
    .local v4, "errorMessage":Ljava/lang/String;
    .local v5, "errorParams":Landroid/os/PersistableBundle;
    invoke-direct/range {v0 .. v5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 198
    return-void
.end method

.method public blacklist onSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ondeviceintelligence/Feature;>;"
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->val$featureListReceiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Ljava/util/List;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 189
    return-void
.end method
