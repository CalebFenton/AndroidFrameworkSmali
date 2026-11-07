.class Lcom/android/internal/net/utils/SimpleStateMachine$1;
.super Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
.source "SimpleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/utils/SimpleStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/utils/SimpleStateMachine<",
        "TT;TR;>.SimpleState;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/utils/SimpleStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine$1;, "Lcom/android/internal/net/utils/SimpleStateMachine$1;"
    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;-><init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist process(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine$1;, "Lcom/android/internal/net/utils/SimpleStateMachine$1;"
    .local p1, "msg":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Process called on null state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
