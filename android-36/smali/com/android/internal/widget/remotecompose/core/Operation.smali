.class public abstract Lcom/android/internal/widget/remotecompose/core/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# static fields
.field private static final blacklist ENABLE_DIRTY_FLAG_OPTIMIZATION:Z = true


# instance fields
.field private blacklist mDirty:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    return-void
.end method


# virtual methods
.method public abstract blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
.end method

.method public abstract blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public blacklist isDirty()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    return v0
.end method

.method public blacklist markDirty()V
    .registers 2

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    .line 44
    return-void
.end method

.method public blacklist markNotDirty()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    .line 51
    return-void
.end method

.method public abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
.end method
