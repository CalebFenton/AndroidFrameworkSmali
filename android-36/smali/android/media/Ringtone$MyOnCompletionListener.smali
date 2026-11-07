.class Landroid/media/Ringtone$MyOnCompletionListener;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnCompletionListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Ringtone;


# direct methods
.method constructor blacklist <init>(Landroid/media/Ringtone;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/Ringtone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 713
    iput-object p1, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 716
    invoke-static {}, Landroid/media/Ringtone;->-$$Nest$sfgetsActiveRingtones()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 717
    :try_start_5
    invoke-static {}, Landroid/media/Ringtone;->-$$Nest$sfgetsActiveRingtones()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 718
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_14

    .line 719
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 720
    return-void

    .line 718
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
