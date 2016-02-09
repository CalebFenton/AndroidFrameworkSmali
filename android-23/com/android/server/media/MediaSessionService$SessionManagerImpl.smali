.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 634
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@3
    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    #@6
    .line 639
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@8
    .line 640
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@a
    .line 1049
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    #@15
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@17
    .line 1119
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@1e
    .line 634
    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .locals 15
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 871
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 872
    if-nez p4, :cond_4

    #@8
    const/4 v12, 0x0

    #@9
    .line 873
    :goto_0
    const-string/jumbo v1, "MediaSessionService"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Adjusting session "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " by "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    move/from16 v0, p2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, ". flags="

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    move/from16 v0, p3

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 874
    const-string/jumbo v3, ", suggestedStream="

    #@39
    .line 873
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    move/from16 v0, p1

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 877
    :cond_0
    const/4 v14, 0x0

    #@4b
    .line 878
    .local v14, "preferSuggestedStream":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 879
    const/4 v1, 0x0

    #@52
    move/from16 v0, p1

    #@54
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@57
    move-result v1

    #@58
    .line 878
    if-eqz v1, :cond_1

    #@5a
    .line 880
    const/4 v14, 0x1

    #@5b
    .line 882
    :cond_1
    if-eqz p4, :cond_2

    #@5d
    if-eqz v14, :cond_7

    #@5f
    .line 883
    :cond_2
    move/from16 v0, p3

    #@61
    and-int/lit16 v1, v0, 0x200

    #@63
    if-eqz v1, :cond_3

    #@65
    .line 884
    const/4 v1, 0x3

    #@66
    const/4 v2, 0x0

    #@67
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@6a
    move-result v1

    #@6b
    if-eqz v1, :cond_5

    #@6d
    .line 891
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@6f
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    .line 892
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@79
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    #@7c
    move-result-object v1

    #@7d
    .line 893
    const-string/jumbo v6, "MediaSessionService"

    #@80
    move/from16 v2, p2

    #@82
    move/from16 v3, p1

    #@84
    move/from16 v4, p3

    #@86
    .line 892
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    .line 870
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    #@8a
    .line 872
    .end local v14    # "preferSuggestedStream":Z
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    #@8d
    move-result-object v12

    #@8e
    .local v12, "description":Ljava/lang/String;
    goto/16 :goto_0

    #@90
    .line 885
    .end local v12    # "description":Ljava/lang/String;
    .restart local v14    # "preferSuggestedStream":Z
    :cond_5
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@93
    move-result v1

    #@94
    if-eqz v1, :cond_6

    #@96
    .line 886
    const-string/jumbo v1, "MediaSessionService"

    #@99
    const-string/jumbo v2, "No active session to adjust, skipping media only volume event"

    #@9c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 888
    :cond_6
    return-void

    #@a0
    .line 894
    :catch_0
    move-exception v13

    #@a1
    .line 895
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionService"

    #@a4
    const-string/jumbo v2, "Error adjusting default volume."

    #@a7
    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@aa
    goto :goto_1

    #@ab
    .line 898
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ad
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b4
    move-result-object v9

    #@b5
    .line 899
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@b8
    move-result v10

    #@b9
    const/4 v11, 0x1

    #@ba
    move-object/from16 v6, p4

    #@bc
    move/from16 v7, p2

    #@be
    move/from16 v8, p3

    #@c0
    .line 898
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    #@c3
    goto :goto_1
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 18
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 935
    if-eqz p3, :cond_3

    #@2
    .line 936
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 937
    const-string/jumbo v2, "MediaSessionService"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Sending media key to "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 939
    :cond_0
    if-eqz p2, :cond_1

    #@28
    .line 940
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@2c
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    #@2f
    .line 945
    :cond_1
    if-eqz p2, :cond_2

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@35
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    #@38
    move-result v2

    #@39
    .line 946
    :goto_0
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@3d
    .line 944
    move-object/from16 v0, p3

    #@3f
    move-object/from16 v1, p1

    #@41
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    #@44
    .line 934
    :goto_1
    return-void

    #@45
    .line 945
    :cond_2
    const/4 v2, -0x1

    #@46
    goto :goto_0

    #@47
    .line 949
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4a
    move-result v17

    #@4b
    .line 950
    .local v17, "userId":I
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@4f
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@52
    move-result-object v2

    #@53
    move/from16 v0, v17

    #@55
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v16

    #@59
    check-cast v16, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@5b
    .line 951
    .local v16, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@5e
    move-result-object v2

    #@5f
    if-nez v2, :cond_4

    #@61
    .line 952
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@64
    move-result-object v2

    #@65
    if-eqz v2, :cond_9

    #@67
    .line 953
    :cond_4
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_5

    #@6d
    .line 954
    const-string/jumbo v2, "MediaSessionService"

    #@70
    new-instance v3, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v4, "Sending media key to last known PendingIntent "

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    .line 955
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@7f
    move-result-object v4

    #@80
    .line 954
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    .line 955
    const-string/jumbo v4, " or restored Intent "

    #@87
    .line 954
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    .line 956
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@8e
    move-result-object v4

    #@8f
    .line 954
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 958
    :cond_5
    if-eqz p2, :cond_6

    #@9c
    .line 959
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@a0
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    #@a3
    .line 961
    :cond_6
    new-instance v5, Landroid/content/Intent;

    #@a5
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@a8
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ab
    .line 962
    .local v5, "mediaButtonIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@ae
    move-object/from16 v0, p1

    #@b0
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@b3
    .line 964
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@b6
    move-result-object v2

    #@b7
    if-eqz v2, :cond_8

    #@b9
    .line 965
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@bc
    move-result-object v2

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@c1
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@c4
    move-result-object v3

    #@c5
    .line 966
    if-eqz p2, :cond_7

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@cb
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    #@ce
    move-result v4

    #@cf
    .line 967
    :goto_2
    move-object/from16 v0, p0

    #@d1
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@d3
    const/4 v7, 0x0

    #@d4
    .line 965
    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@d7
    goto/16 :goto_1

    #@d9
    .line 973
    :catch_0
    move-exception v15

    #@da
    .line 974
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v2, "MediaSessionService"

    #@dd
    new-instance v3, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v4, "Error sending key event to media button receiver "

    #@e5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v3

    #@e9
    .line 975
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@ec
    move-result-object v4

    #@ed
    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v3

    #@f1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v3

    #@f5
    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f8
    goto/16 :goto_1

    #@fa
    .line 966
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_7
    const/4 v4, -0x1

    #@fb
    goto :goto_2

    #@fc
    .line 969
    :cond_8
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@103
    .line 970
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@107
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@10a
    move-result-object v2

    #@10b
    .line 971
    new-instance v3, Landroid/os/UserHandle;

    #@10d
    move/from16 v0, v17

    #@10f
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@112
    .line 970
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    #@115
    goto/16 :goto_1

    #@117
    .line 978
    .end local v5    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_9
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@11a
    move-result v2

    #@11b
    if-eqz v2, :cond_a

    #@11d
    .line 979
    const-string/jumbo v2, "MediaSessionService"

    #@120
    const-string/jumbo v3, "Sending media key ordered broadcast"

    #@123
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@126
    .line 981
    :cond_a
    if-eqz p2, :cond_b

    #@128
    .line 982
    move-object/from16 v0, p0

    #@12a
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@12c
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@133
    .line 985
    :cond_b
    new-instance v7, Landroid/content/Intent;

    #@135
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@138
    const/4 v3, 0x0

    #@139
    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@13c
    .line 986
    .local v7, "keyIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@13f
    move-object/from16 v0, p1

    #@141
    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@144
    .line 987
    if-eqz p2, :cond_c

    #@146
    .line 988
    const-string/jumbo v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@149
    .line 989
    const/16 v3, 0x7bc

    #@14b
    .line 988
    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14e
    .line 991
    :cond_c
    move-object/from16 v0, p0

    #@150
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@152
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@155
    move-result-object v6

    #@156
    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@158
    .line 992
    move-object/from16 v0, p0

    #@15a
    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@160
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@163
    move-result-object v11

    #@164
    const/4 v9, 0x0

    #@165
    const/4 v12, -0x1

    #@166
    const/4 v13, 0x0

    #@167
    const/4 v14, 0x0

    #@168
    .line 991
    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@16b
    goto/16 :goto_1
.end method

.method private handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 905
    if-eqz p3, :cond_0

    #@4
    const/high16 v3, 0x10000

    #@6
    invoke-virtual {p3, v3}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 907
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@f
    .line 908
    return-void

    #@10
    .line 910
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@13
    move-result v0

    #@14
    .line 911
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@17
    move-result v3

    #@18
    and-int/lit16 v3, v3, 0x80

    #@1a
    if-eqz v3, :cond_2

    #@1c
    const/4 v2, 0x1

    #@1d
    .line 912
    .local v2, "isLongPress":Z
    :goto_0
    if-nez v0, :cond_4

    #@1f
    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_3

    #@25
    .line 914
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@27
    .line 915
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@29
    .line 904
    :cond_1
    :goto_1
    return-void

    #@2a
    .line 911
    .end local v2    # "isLongPress":Z
    :cond_2
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "isLongPress":Z
    goto :goto_0

    #@2c
    .line 916
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@2e
    if-eqz v3, :cond_1

    #@30
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@32
    if-nez v3, :cond_1

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 917
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@38
    .line 918
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    #@3b
    goto :goto_1

    #@3c
    .line 920
    :cond_4
    if-ne v0, v5, :cond_1

    #@3e
    .line 921
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 922
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@44
    .line 923
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@46
    if-nez v3, :cond_1

    #@48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_1

    #@4e
    .line 925
    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@51
    move-result-object v1

    #@52
    .line 926
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@55
    .line 927
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@58
    goto :goto_1
.end method

.method private isUserSetupComplete()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1039
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 1040
    const-string/jumbo v2, "user_setup_complete"

    #@e
    const/4 v3, -0x2

    #@f
    .line 1039
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method

.method private isValidLocalStreamType(I)Z
    .locals 2
    .param p1, "streamType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1045
    if-ltz p1, :cond_0

    #@3
    .line 1046
    const/4 v1, 0x5

    #@4
    if-gt p1, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    .line 1045
    :cond_0
    return v0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 1035
    const/16 v0, 0x4f

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private startVoiceInput(Z)V
    .locals 7
    .param p1, "needWakeLock"    # Z

    #@0
    .prologue
    .line 998
    const/4 v3, 0x0

    #@1
    .line 1004
    .local v3, "voiceIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@3
    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v4

    #@7
    const-string/jumbo v5, "power"

    #@a
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/os/PowerManager;

    #@10
    .line 1005
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@12
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@15
    move-result-object v4

    #@16
    if-eqz v4, :cond_3

    #@18
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1a
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@21
    move-result v1

    #@22
    .line 1006
    :goto_0
    if-nez v1, :cond_4

    #@24
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_4

    #@2a
    .line 1007
    new-instance v3, Landroid/content/Intent;

    #@2c
    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    #@2f
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@32
    .line 1008
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "MediaSessionService"

    #@35
    const-string/jumbo v5, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    #@38
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1016
    :goto_1
    if-eqz p1, :cond_0

    #@3d
    .line 1017
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@3f
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@46
    .line 1020
    :cond_0
    if-eqz v3, :cond_1

    #@48
    .line 1021
    const/high16 v4, 0x10800000

    #@4a
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@4d
    .line 1023
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@4f
    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@52
    move-result-object v4

    #@53
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@55
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 1028
    :cond_1
    if-eqz p1, :cond_2

    #@5a
    .line 1029
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@5c
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@63
    .line 997
    :cond_2
    :goto_2
    return-void

    #@64
    .line 1005
    .local v3, "voiceIntent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    #@65
    .local v1, "isLocked":Z
    goto :goto_0

    #@66
    .line 1010
    .end local v1    # "isLocked":Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    #@68
    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@6b
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6e
    .line 1011
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.extras.EXTRA_SECURE"

    #@71
    .line 1012
    if-eqz v1, :cond_5

    #@73
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@75
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@7c
    move-result v4

    #@7d
    .line 1011
    :goto_3
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@80
    .line 1013
    const-string/jumbo v4, "MediaSessionService"

    #@83
    const-string/jumbo v5, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    #@86
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    goto :goto_1

    #@8a
    .line 1012
    :cond_5
    const/4 v4, 0x0

    #@8b
    goto :goto_3

    #@8c
    .line 1025
    :catch_0
    move-exception v0

    #@8d
    .line 1026
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string/jumbo v4, "MediaSessionService"

    #@90
    new-instance v5, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v6, "No activity for search: "

    #@98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    .line 1028
    if-eqz p1, :cond_2

    #@a9
    .line 1029
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ab
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@ae
    move-result-object v4

    #@af
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@b2
    goto :goto_2

    #@b3
    .line 1027
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    #@b4
    .line 1028
    if-eqz p1, :cond_6

    #@b6
    .line 1029
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@b8
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@bf
    .line 1027
    :cond_6
    throw v4
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 852
    const/4 v6, 0x0

    #@2
    .line 853
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@4
    .line 856
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 857
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@a
    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    #@d
    .line 862
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "getSessions"

    #@10
    move v0, p3

    #@11
    move v1, p4

    #@12
    move v2, p2

    #@13
    move v4, v3

    #@14
    .line 861
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v7

    #@18
    .line 865
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1a
    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->-wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    #@1d
    .line 866
    return v7
.end method


# virtual methods
.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 12
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 688
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v5

    #@4
    .line 689
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v6

    #@8
    .line 690
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v10

    #@c
    .line 693
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    #@f
    move-result v4

    #@10
    .line 694
    .local v4, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@12
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@15
    move-result-object v9

    #@16
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    .line 695
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@19
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    #@1c
    move-result v8

    #@1d
    .line 696
    .local v8, "index":I
    const/4 v1, -0x1

    #@1e
    if-eq v8, v1, :cond_0

    #@20
    .line 697
    const-string/jumbo v1, "MediaSessionService"

    #@23
    const-string/jumbo v2, "ActiveSessionsListener is already added, ignoring"

    #@26
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 698
    return-void

    #@2e
    .line 700
    :cond_0
    :try_start_3
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    #@30
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@32
    move-object v2, p1

    #@33
    move-object v3, p2

    #@34
    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    .line 703
    .local v0, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_4
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    #@3a
    move-result-object v1

    #@3b
    const/4 v2, 0x0

    #@3c
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3f
    .line 708
    :try_start_5
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@41
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@48
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@49
    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 687
    return-void

    #@4d
    .line 704
    :catch_0
    move-exception v7

    #@4e
    .line 705
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v1, "MediaSessionService"

    #@51
    const-string/jumbo v2, "ActiveSessionsListener is dead, ignoring it"

    #@54
    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@57
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@58
    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 706
    return-void

    #@5c
    .line 694
    .end local v0    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    #@5d
    :try_start_9
    monitor-exit v9

    #@5e
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@5f
    .line 710
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v1

    #@60
    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 710
    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 646
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 647
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v10

    #@c
    .line 649
    .local v10, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    #@11
    .line 651
    const-string/jumbo v5, "createSession"

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    move/from16 v2, p4

    #@18
    move-object v6, p1

    #@19
    .line 650
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@1c
    move-result v5

    #@1d
    .line 652
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_0

    #@1f
    .line 653
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v3, "Controller callback cannot be null"

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 657
    .end local v5    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    #@29
    .line 658
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 657
    throw v2

    #@2d
    .line 655
    .restart local v5    # "resolvedUserId":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2f
    move v3, v0

    #@30
    move v4, v1

    #@31
    move-object v6, p1

    #@32
    move-object v7, p2

    #@33
    move-object v8, p3

    #@34
    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->-wrap0(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result-object v2

    #@3c
    .line 658
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 655
    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .locals 8
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 786
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 787
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 788
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 790
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 791
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@15
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@18
    move-result-object v5

    #@19
    .line 792
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1b
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@1e
    move-result v7

    #@1f
    .line 791
    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    #@22
    move-result-object v1

    #@23
    .line 793
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    .line 796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 785
    return-void

    #@2b
    .line 790
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v5

    #@2c
    :try_start_3
    monitor-exit v6

    #@2d
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    .line 795
    :catchall_1
    move-exception v5

    #@2f
    .line 796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 795
    throw v5
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 743
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v7

    #@6
    invoke-static {v7}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_1

    #@c
    .line 748
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f
    move-result v0

    #@10
    .line 749
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v4

    #@14
    .line 750
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 752
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_0

    #@1e
    .line 753
    const-string/jumbo v7, "MediaSessionService"

    #@21
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "dispatchMediaKeyEvent, pid="

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    const-string/jumbo v9, ", uid="

    #@34
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    const-string/jumbo v9, ", event="

    #@3f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    #@51
    move-result v7

    #@52
    if-nez v7, :cond_2

    #@54
    .line 759
    const-string/jumbo v7, "MediaSessionService"

    #@57
    const-string/jumbo v8, "Not dispatching media key event because user setup is in progress."

    #@5a
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5d
    .line 780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 761
    return-void

    #@61
    .line 744
    .end local v0    # "pid":I
    .end local v2    # "token":J
    .end local v4    # "uid":I
    :cond_1
    const-string/jumbo v7, "MediaSessionService"

    #@64
    const-string/jumbo v8, "Attempted to dispatch null or non-media key event."

    #@67
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 745
    return-void

    #@6b
    .line 764
    .restart local v0    # "pid":I
    .restart local v2    # "token":J
    .restart local v4    # "uid":I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@6d
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@70
    move-result-object v8

    #@71
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@72
    .line 767
    :try_start_2
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@74
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@77
    move-result-object v7

    #@78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@7b
    move-result v9

    #@7c
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v5

    #@80
    check-cast v5, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@82
    .line 768
    .local v5, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v5, :cond_3

    #@84
    .line 769
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@87
    move-result-object v7

    #@88
    if-nez v7, :cond_5

    #@8a
    .line 770
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@8d
    move-result-object v7

    #@8e
    if-nez v7, :cond_4

    #@90
    const/4 v6, 0x1

    #@91
    .line 771
    .local v6, "useNotPlayingSessions":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@93
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@96
    move-result-object v7

    #@97
    .line 772
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@99
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@9c
    move-result v9

    #@9d
    .line 771
    invoke-virtual {v7, v9, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;

    #@a0
    move-result-object v1

    #@a1
    .line 773
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@a4
    move-result v7

    #@a5
    invoke-direct {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    #@a8
    move-result v7

    #@a9
    if-eqz v7, :cond_6

    #@ab
    .line 774
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ae
    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@af
    .line 780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b2
    .line 742
    return-void

    #@b3
    .line 768
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :cond_3
    const/4 v6, 0x1

    #@b4
    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    #@b5
    .line 770
    .end local v6    # "useNotPlayingSessions":Z
    :cond_4
    const/4 v6, 0x0

    #@b6
    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    #@b7
    .line 769
    .end local v6    # "useNotPlayingSessions":Z
    :cond_5
    const/4 v6, 0x0

    #@b8
    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    #@b9
    .line 776
    .restart local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_6
    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bc
    goto :goto_1

    #@bd
    .line 764
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :catchall_0
    move-exception v7

    #@be
    :try_start_5
    monitor-exit v8

    #@bf
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@c0
    .line 779
    :catchall_1
    move-exception v7

    #@c1
    .line 780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c4
    .line 779
    throw v7
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 820
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, "android.permission.DUMP"

    #@9
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Permission Denial: can\'t dump MediaSessionService from from pid="

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v4

    #@1f
    .line 822
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 824
    const-string/jumbo v4, ", uid="

    #@26
    .line 822
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v4

    #@2e
    .line 822
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 825
    return-void

    #@3a
    .line 828
    :cond_0
    const-string/jumbo v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    #@3d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 829
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@43
    .line 831
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@45
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    monitor-enter v4

    #@4a
    .line 832
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@51
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v5

    #@59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    const-string/jumbo v5, " sessions listeners."

    #@60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 833
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@6d
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get1(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@74
    move-result v0

    #@75
    .line 834
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    const-string/jumbo v5, " Sessions:"

    #@81
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 835
    const/4 v1, 0x0

    #@8d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@8f
    .line 836
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@91
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get1(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v3

    #@99
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    #@9b
    const-string/jumbo v5, ""

    #@9e
    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@a1
    .line 837
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a4
    .line 835
    add-int/lit8 v1, v1, 0x1

    #@a6
    goto :goto_0

    #@a7
    .line 839
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@a9
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@ac
    move-result-object v3

    #@ad
    const-string/jumbo v5, ""

    #@b0
    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@b3
    .line 841
    const-string/jumbo v3, "User Records:"

    #@b6
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b9
    .line 842
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@bb
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@c2
    move-result v0

    #@c3
    .line 843
    const/4 v1, 0x0

    #@c4
    :goto_1
    if-ge v1, v0, :cond_2

    #@c6
    .line 844
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@c8
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@cb
    move-result-object v3

    #@cc
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ce
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@d5
    move-result v5

    #@d6
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d9
    move-result-object v2

    #@da
    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@dc
    .line 845
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    const-string/jumbo v3, ""

    #@df
    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e2
    .line 843
    add-int/lit8 v1, v1, 0x1

    #@e4
    goto :goto_1

    #@e5
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_2
    monitor-exit v4

    #@e6
    .line 819
    return-void

    #@e7
    .line 831
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@e8
    monitor-exit v4

    #@e9
    throw v3
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 665
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v8

    #@8
    .line 666
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v6

    #@c
    .line 669
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    #@f
    move-result v4

    #@10
    .line 670
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 671
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@17
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@1a
    move-result-object v10

    #@1b
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 672
    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1e
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    #@25
    move-result-object v3

    #@26
    .line 674
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v5

    #@2a
    .line 675
    .local v5, "size":I
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@2d
    .line 676
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v9

    #@31
    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    #@33
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    #@36
    move-result-object v9

    #@37
    invoke-interface {v9}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 675
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    :cond_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    .line 681
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 679
    return-object v0

    #@46
    .line 671
    .end local v1    # "i":I
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v9

    #@47
    :try_start_3
    monitor-exit v10

    #@48
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    .line 680
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v9

    #@4a
    .line 681
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 680
    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->isGlobalPriorityActive()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 719
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@9
    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    #@c
    move-result v1

    #@d
    .line 720
    .local v1, "index":I
    const/4 v3, -0x1

    #@e
    if-eq v1, v3, :cond_0

    #@10
    .line 721
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@12
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 723
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v3

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :goto_0
    monitor-exit v4

    #@29
    .line 717
    return-void

    #@2a
    .line 718
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3

    #@2d
    .line 724
    .restart local v1    # "index":I
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :catch_0
    move-exception v0

    #@2e
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 6
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    #@0
    .prologue
    .line 802
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 803
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 804
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 806
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    const-string/jumbo v5, "listen for volume changes"

    #@11
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    #@14
    .line 807
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@16
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 809
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 801
    return-void

    #@1d
    .line 808
    :catchall_0
    move-exception v4

    #@1e
    .line 809
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 808
    throw v4
.end method
