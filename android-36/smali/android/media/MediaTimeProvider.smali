.class public interface abstract Landroid/media/MediaTimeProvider;
.super Ljava/lang/Object;
.source "MediaTimeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o NO_TIME:J = -0x1L


# virtual methods
.method public abstract greylist-max-o cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
.end method

.method public abstract greylist-max-o getCurrentTimeUs(ZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
.end method

.method public abstract greylist-max-o scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
.end method
