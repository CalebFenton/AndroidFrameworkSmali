.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
    .param p2, "val$callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@0
    .prologue
    .line 1057
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 1110
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@5
    .line 1109
    return-void
.end method

.method public onFastForward()V
    .locals 1

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    #@5
    .line 1104
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    #@5
    .line 1094
    return-void
.end method

.method public onPlay()V
    .locals 1

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    #@5
    .line 1089
    return-void
.end method

.method public onRewind()V
    .locals 1

    #@0
    .prologue
    .line 1085
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    #@5
    .line 1084
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 1080
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    #@5
    .line 1079
    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .locals 2
    .param p1, "ratingObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1075
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    #@9
    .line 1074
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    #@5
    .line 1069
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    #@0
    .prologue
    .line 1065
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    #@5
    .line 1064
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 1060
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    #@5
    .line 1059
    return-void
.end method
