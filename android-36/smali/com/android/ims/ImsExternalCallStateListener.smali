.class public abstract Lcom/android/ims/ImsExternalCallStateListener;
.super Ljava/lang/Object;
.source "ImsExternalCallStateListener.java"


# instance fields
.field protected blacklist mListenerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsExternalCallStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 38
    if-eqz p1, :cond_e

    .line 39
    iput-object p1, p0, Lcom/android/ims/ImsExternalCallStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 40
    :cond_e
    return-void
.end method


# virtual methods
.method public final blacklist onImsExternalCallStateUpdate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "externalCallState":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    iget-object v0, p0, Lcom/android/ims/ImsExternalCallStateListener;->mListenerExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    .line 48
    return-void
.end method

.method public abstract blacklist onImsExternalCallStateUpdate(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation
.end method
