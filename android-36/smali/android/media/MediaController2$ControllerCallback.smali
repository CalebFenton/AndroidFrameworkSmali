.class public abstract Landroid/media/MediaController2$ControllerCallback;
.super Ljava/lang/Object;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ControllerCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCommandResult(Landroid/media/MediaController2;Ljava/lang/Object;Landroid/media/Session2Command;Landroid/media/Session2Command$Result;)V
    .registers 5

    .line 0
    return-void
.end method

.method public whitelist onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist onDisconnected(Landroid/media/MediaController2;)V
    .registers 2

    .line 0
    return-void
.end method

.method public whitelist onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist onSessionCommand(Landroid/media/MediaController2;Landroid/media/Session2Command;Landroid/os/Bundle;)Landroid/media/Session2Command$Result;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
