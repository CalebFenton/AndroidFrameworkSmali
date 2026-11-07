.class public abstract Lcom/android/internal/net/utils/SimpleStateMachine;
.super Ljava/lang/Object;
.source "SimpleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mNullState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;"
        }
    .end annotation
.end field

.field protected blacklist mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/internal/net/utils/SimpleStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/internal/net/utils/SimpleStateMachine$1;-><init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mNullState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    .line 40
    iget-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mNullState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    iput-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    return-void
.end method


# virtual methods
.method public blacklist process(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>;"
    .local p1, "msg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;TT;)TR;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>;"
    .local p1, "newState":Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>.SimpleState;"
    .local p2, "msg":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine;->transitionTo(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist transitionTo(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>;"
    .local p1, "newState":Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>.SimpleState;"
    if-eqz p1, :cond_5

    .line 69
    iput-object p1, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    .line 70
    return-void

    .line 66
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SimpleState value must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
