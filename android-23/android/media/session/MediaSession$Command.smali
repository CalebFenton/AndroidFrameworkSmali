.class final Landroid/media/session/MediaSession$Command;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation


# instance fields
.field public final command:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final stub:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "stub"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1150
    iput-object p1, p0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    #@5
    .line 1151
    iput-object p2, p0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    #@7
    .line 1152
    iput-object p3, p0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    #@9
    .line 1149
    return-void
.end method
