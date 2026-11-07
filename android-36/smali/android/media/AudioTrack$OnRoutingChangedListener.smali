.class public interface abstract Landroid/media/AudioTrack$OnRoutingChangedListener;
.super Ljava/lang/Object;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRoutingChangedListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public whitelist onRoutingChanged(Landroid/media/AudioRouting;)V
    .registers 3
    .param p1, "router"    # Landroid/media/AudioRouting;

    .line 3951
    instance-of v0, p1, Landroid/media/AudioTrack;

    if-eqz v0, :cond_a

    .line 3952
    move-object v0, p1

    check-cast v0, Landroid/media/AudioTrack;

    invoke-interface {p0, v0}, Landroid/media/AudioTrack$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioTrack;)V

    .line 3954
    :cond_a
    return-void
.end method

.method public abstract whitelist onRoutingChanged(Landroid/media/AudioTrack;)V
.end method
