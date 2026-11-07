.class public abstract Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
.super Ljava/lang/Object;
.source "SimpleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/utils/SimpleStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SimpleState"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V
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

    .line 43
    .local p0, "this":Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;, "Lcom/android/internal/net/utils/SimpleStateMachine<TT;TR;>.SimpleState;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist process(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation
.end method
