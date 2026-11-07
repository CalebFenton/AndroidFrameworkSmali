.class public interface abstract Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationFrameCallbackProvider"
.end annotation


# virtual methods
.method public abstract greylist-max-o getFrameDelay()J
.end method

.method public abstract greylist-max-o getFrameTime()J
.end method

.method public abstract greylist-max-o postCommitCallback(Ljava/lang/Runnable;)V
.end method

.method public abstract greylist-max-o postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
.end method

.method public abstract greylist-max-o setFrameDelay(J)V
.end method
