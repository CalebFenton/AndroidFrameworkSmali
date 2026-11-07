.class public Landroid/net/connectivity/android/net/QosCallbackConnection;
.super Landroid/net/connectivity/android/net/IQosCallback$Stub;
.source "QosCallbackConnection.java"


# instance fields
.field private volatile blacklist mCallback:Landroid/net/QosCallback;

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$EEMCouRwoo5nFeuLdUsQzvIdUBk(Landroid/net/connectivity/android/net/QosCallbackConnection;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/android/net/QosCallbackConnection;->lambda$onError$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HhO7IKkyoYVTOSRdbhLUGaYrW7o(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/android/net/QosCallbackConnection;->lambda$onQosEpsBearerSessionAvailable$0(Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_2fMoWJ5uD2K6CKHslpc4akt5YA(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/android/net/QosCallbackConnection;->lambda$onNrQosSessionAvailable$1(Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vV-AFY4saCfOKcDviJBLz7mg6Z4(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/android/net/QosCallbackConnection;->lambda$onQosSessionLost$2(Landroid/net/QosSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/net/QosCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p2, "callback"    # Landroid/net/QosCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 61
    invoke-direct {p0}, Landroid/net/connectivity/android/net/IQosCallback$Stub;-><init>()V

    .line 62
    const-string v0, "connectivityManager must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 64
    const-string v0, "callback must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/QosCallback;

    iput-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    .line 65
    const-string v0, "executor must be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method private synthetic blacklist lambda$onError$3(I)V
    .registers 4
    .param p1, "errorType"    # I

    .line 129
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    .line 130
    .local v0, "callback":Landroid/net/QosCallback;
    if-eqz v0, :cond_13

    .line 132
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/QosCallbackConnection;->stopReceivingMessages()V

    .line 133
    iget-object v1, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterQosCallback(Landroid/net/QosCallback;)V

    .line 134
    invoke-static {p1}, Landroid/net/QosCallbackException;->createException(I)Landroid/net/QosCallbackException;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/QosCallback;->onError(Landroid/net/QosCallbackException;)V

    .line 136
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$onNrQosSessionAvailable$1(Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .registers 4
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "attributes"    # Landroid/telephony/data/NrQosSessionAttributes;

    .line 99
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    .line 100
    .local v0, "callback":Landroid/net/QosCallback;
    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/net/QosCallback;->onQosSessionAvailable(Landroid/net/QosSession;Landroid/net/QosSessionAttributes;)V

    .line 103
    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$onQosEpsBearerSessionAvailable$0(Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V
    .registers 4
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "attributes"    # Landroid/telephony/data/EpsBearerQosSessionAttributes;

    .line 80
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    .line 81
    .local v0, "callback":Landroid/net/QosCallback;
    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/net/QosCallback;->onQosSessionAvailable(Landroid/net/QosSession;Landroid/net/QosSessionAttributes;)V

    .line 84
    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$onQosSessionLost$2(Landroid/net/QosSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/QosSession;

    .line 114
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    .line 115
    .local v0, "callback":Landroid/net/QosCallback;
    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v0, p1}, Landroid/net/QosCallback;->onQosSessionLost(Landroid/net/QosSession;)V

    .line 118
    :cond_7
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/net/QosCallback;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    return-object v0
.end method

.method public blacklist onError(I)V
    .registers 4
    .param p1, "errorType"    # I

    .line 128
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/android/net/QosCallbackConnection;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public blacklist onNrQosSessionAvailable(Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .registers 5
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "attributes"    # Landroid/telephony/data/NrQosSessionAttributes;

    .line 98
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;-><init>(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public blacklist onQosEpsBearerSessionAvailable(Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V
    .registers 5
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "attributes"    # Landroid/telephony/data/EpsBearerQosSessionAttributes;

    .line 79
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public blacklist onQosSessionLost(Landroid/net/QosSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/QosSession;

    .line 113
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;-><init>(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public blacklist stopReceivingMessages()V
    .registers 2

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection;->mCallback:Landroid/net/QosCallback;

    .line 147
    return-void
.end method
