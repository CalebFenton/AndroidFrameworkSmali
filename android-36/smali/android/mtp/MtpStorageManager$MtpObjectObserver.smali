.class Landroid/mtp/MtpStorageManager$MtpObjectObserver;
.super Landroid/os/FileObserver;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpObjectObserver"
.end annotation


# instance fields
.field greylist-max-o mObject:Landroid/mtp/MtpStorageManager$MtpObject;

.field final synthetic blacklist this$0:Landroid/mtp/MtpStorageManager;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 4
    .param p2, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    .line 64
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x10003c8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist test-api finalize()V
    .registers 1

    .line 112
    return-void
.end method

.method public whitelist onEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    monitor-enter v0

    .line 73
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_10

    .line 75
    :try_start_7
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received Inotify overflow event!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_10
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 78
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    and-int/lit16 v2, p1, 0x80

    if-nez v2, :cond_122

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_20

    goto/16 :goto_122

    .line 82
    :cond_20
    and-int/lit8 v2, p1, 0x40

    if-nez v2, :cond_d6

    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_2a

    goto/16 :goto_d6

    .line 90
    :cond_2a
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_74

    .line 91
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_5b

    .line 92
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inotify for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_5b
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 94
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 95
    :cond_6c
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fputmObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    goto/16 :goto_159

    .line 96
    :cond_74
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_b0

    .line 97
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_a7

    .line 98
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inotify for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CLOSE_WRITE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_a7
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$mhandleChangedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    goto/16 :goto_159

    .line 101
    :cond_b0
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unrecognized event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 83
    :cond_d6
    :goto_d6
    if-nez v1, :cond_f4

    .line 84
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object was null in event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0

    return-void

    .line 87
    :cond_f4
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_11c

    .line 88
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got inotify removed event for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_11c
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    invoke-static {v2, v1}, Landroid/mtp/MtpStorageManager;->-$$Nest$mhandleRemovedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    goto :goto_159

    .line 79
    :cond_122
    :goto_122
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_14a

    .line 80
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got inotify added event for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_14a
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p1

    if-eqz v4, :cond_155

    const/4 v4, 0x1

    goto :goto_156

    :cond_155
    const/4 v4, 0x0

    :goto_156
    invoke-static {v2, v3, p2, v4}, Landroid/mtp/MtpStorageManager;->-$$Nest$mhandleAddedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 103
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_159
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_15b
    move-exception v1

    monitor-exit v0
    :try_end_15d
    .catchall {:try_start_7 .. :try_end_15d} :catchall_15b

    throw v1
.end method
