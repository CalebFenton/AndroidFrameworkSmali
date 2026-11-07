.class public final synthetic Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;

    return-void
.end method


# virtual methods
.method public final blacklist onAction(ILjava/lang/String;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->lambda$addIdActionListener$1(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;ILjava/lang/String;)V

    return-void
.end method
