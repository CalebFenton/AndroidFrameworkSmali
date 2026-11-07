.class public abstract Lcom/android/ims/ImsEcbmStateListener;
.super Ljava/lang/Object;
.source "ImsEcbmStateListener.java"


# instance fields
.field protected blacklist mListenerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsEcbmStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 49
    if-eqz p1, :cond_e

    .line 50
    iput-object p1, p0, Lcom/android/ims/ImsEcbmStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 51
    :cond_e
    return-void
.end method


# virtual methods
.method public final blacklist onECBMEntered()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsEcbmStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMEntered(Ljava/util/concurrent/Executor;)V

    .line 57
    return-void
.end method

.method public abstract blacklist onECBMEntered(Ljava/util/concurrent/Executor;)V
.end method

.method public final blacklist onECBMExited()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/ims/ImsEcbmStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMExited(Ljava/util/concurrent/Executor;)V

    .line 71
    return-void
.end method

.method public abstract blacklist onECBMExited(Ljava/util/concurrent/Executor;)V
.end method
