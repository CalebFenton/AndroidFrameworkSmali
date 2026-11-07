.class public abstract Landroid/media/MediaSession2$SessionCallback;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCommandResult(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/Object;Landroid/media/Session2Command;Landroid/media/Session2Command$Result;)V
    .registers 6

    .line 0
    return-void
.end method

.method public whitelist onConnect(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)Landroid/media/Session2CommandGroup;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onDisconnected(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist onPostConnect(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist onSessionCommand(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;Landroid/os/Bundle;)Landroid/media/Session2Command$Result;
    .registers 5

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
