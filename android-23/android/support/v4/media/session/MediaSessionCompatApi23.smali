.class Landroid/support/v4/media/session/MediaSessionCompatApi23;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;

    #@0
    .prologue
    .line 25
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    #@5
    return-object v0
.end method
