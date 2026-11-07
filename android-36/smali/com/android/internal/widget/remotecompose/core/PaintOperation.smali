.class public abstract Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "PaintOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-ne v0, v1, :cond_11

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    .line 32
    .local v0, "paintContext":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    if-eqz v0, :cond_11

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 36
    .end local v0    # "paintContext":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_11
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
.end method

.method public blacklist suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .registers 3
    .param p1, "op"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 57
    const/4 v0, 0x0

    return v0
.end method
