.class interface abstract Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IChildSessionSmCallback"
.end annotation


# virtual methods
.method public abstract blacklist onChildSaCreated(ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
.end method

.method public abstract blacklist onChildSaDeleted(I)V
.end method

.method public abstract blacklist onChildSessionClosed(Landroid/net/ipsec/ike/ChildSessionCallback;)V
.end method

.method public abstract blacklist onFatalIkeSessionError(Ljava/lang/Exception;)V
.end method

.method public abstract blacklist onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ")V"
        }
    .end annotation
.end method

.method public abstract blacklist onProcedureFinished(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
.end method

.method public abstract blacklist scheduleRetryLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)V
.end method
