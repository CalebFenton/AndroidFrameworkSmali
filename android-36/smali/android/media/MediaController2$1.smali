.class Landroid/media/MediaController2$1;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaController2;-><init>(Landroid/content/Context;Landroid/media/Session2Token;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaController2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method
