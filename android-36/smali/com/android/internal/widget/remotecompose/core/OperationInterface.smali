.class public interface abstract Lcom/android/internal/widget/remotecompose/core/OperationInterface;
.super Ljava/lang/Object;
.source "OperationInterface.java"


# virtual methods
.method public abstract blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
.end method

.method public abstract blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist isDirty()Z
.end method

.method public abstract blacklist markNotDirty()V
.end method

.method public abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
.end method
