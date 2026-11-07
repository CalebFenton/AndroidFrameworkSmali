.class public abstract Landroid/media/tv/TvRecordingClient$RecordingCallback;
.super Ljava/lang/Object;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvRecordingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordingCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnectionFailed(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 417
    return-void
.end method

.method public whitelist onDisconnected(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 425
    return-void
.end method

.method public whitelist onError(I)V
    .registers 2
    .param p1, "error"    # I

    .line 458
    return-void
.end method

.method public whitelist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 470
    return-void
.end method

.method public whitelist onRecordingStopped(Landroid/net/Uri;)V
    .registers 2
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 444
    return-void
.end method

.method public whitelist onTuned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 434
    return-void
.end method
