.class Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;
.super Ljava/lang/Object;
.source "ImsFeatureBinderRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsFeatureBinderRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerContainer"
.end annotation


# instance fields
.field private final blacklist mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$8KxQLDvvlPR9JMUSRvCyT013D1w(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->lambda$notifyFeatureCreatedOrRemoved$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G44K9MefUsWFGJDHlJ-RvFjllMk(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;Lcom/android/ims/ImsFeatureContainer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->lambda$notifyFeatureCreatedOrRemoved$1(Lcom/android/ims/ImsFeatureContainer;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eK4vA-RbGQTJ1gQLNAw3yQrMoDM(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->lambda$notifyUpdateCapabilties$3(J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ua9i5V-PkNhzyFCMqQJYswQHwuU(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->lambda$notifyStateChanged$2(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "c"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 59
    iput-object p2, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 60
    return-void
.end method

.method private synthetic blacklist lambda$notifyFeatureCreatedOrRemoved$0()V
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 70
    goto :goto_8

    .line 68
    :catch_7
    move-exception v0

    .line 71
    :goto_8
    return-void
.end method

.method private synthetic blacklist lambda$notifyFeatureCreatedOrRemoved$1(Lcom/android/ims/ImsFeatureContainer;I)V
    .registers 4
    .param p1, "connector"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureCreated(Lcom/android/ims/ImsFeatureContainer;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    goto :goto_7

    .line 77
    :catch_6
    move-exception v0

    .line 80
    :goto_7
    return-void
.end method

.method private synthetic blacklist lambda$notifyStateChanged$2(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "subId"    # I

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsStatusChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 90
    goto :goto_7

    .line 88
    :catch_6
    move-exception v0

    .line 91
    :goto_7
    return-void
.end method

.method private synthetic blacklist lambda$notifyUpdateCapabilties$3(J)V
    .registers 4
    .param p1, "caps"    # J

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->updateCapabilities(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 100
    goto :goto_7

    .line 98
    :catch_6
    move-exception v0

    .line 101
    :goto_7
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 111
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 112
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 114
    .local v0, "that":Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    iget-object v2, v0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 111
    .end local v0    # "that":Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isStale()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist notifyFeatureCreatedOrRemoved(Lcom/android/ims/ImsFeatureContainer;I)V
    .registers 5
    .param p1, "connector"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I

    .line 63
    if-nez p1, :cond_d

    .line 64
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 74
    :cond_d
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;Lcom/android/ims/ImsFeatureContainer;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    :goto_17
    return-void
.end method

.method public blacklist notifyStateChanged(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "subId"    # I

    .line 85
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public blacklist notifyUpdateCapabilties(J)V
    .registers 5
    .param p1, "caps"    # J

    .line 95
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerContainer{cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
