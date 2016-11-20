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
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
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
    .line 638
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@3
    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    #@6
    .line 643
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@8
    .line 644
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@a
    .line 1062
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
    .line 1132
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@1e
    .line 638
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
    .line 882
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 883
    if-nez p4, :cond_4

    #@8
    const/4 v12, 0x0

    #@9
    .line 884
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
    .line 885
    const-string/jumbo v3, ", suggestedStream="

    #@39
    .line 884
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
    .line 888
    :cond_0
    const/4 v14, 0x0

    #@4b
    .line 889
    .local v14, "preferSuggestedStream":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 890
    const/4 v1, 0x0

    #@52
    move/from16 v0, p1

    #@54
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@57
    move-result v1

    #@58
    .line 889
    if-eqz v1, :cond_1

    #@5a
    .line 891
    const/4 v14, 0x1

    #@5b
    .line 893
    :cond_1
    if-eqz p4, :cond_2

    #@5d
    if-eqz v14, :cond_7

    #@5f
    .line 894
    :cond_2
    move/from16 v0, p3

    #@61
    and-int/lit16 v1, v0, 0x200

    #@63
    if-eqz v1, :cond_3

    #@65
    .line 895
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
    .line 902
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
    .line 903
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@79
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    #@7c
    move-result-object v1

    #@7d
    .line 904
    const-string/jumbo v6, "MediaSessionService"

    #@80
    move/from16 v2, p2

    #@82
    move/from16 v3, p1

    #@84
    move/from16 v4, p3

    #@86
    .line 903
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    .line 881
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    #@8a
    .line 883
    .end local v14    # "preferSuggestedStream":Z
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    #@8d
    move-result-object v12

    #@8e
    .local v12, "description":Ljava/lang/String;
    goto/16 :goto_0

    #@90
    .line 896
    .end local v12    # "description":Ljava/lang/String;
    .restart local v14    # "preferSuggestedStream":Z
    :cond_5
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@93
    move-result v1

    #@94
    if-eqz v1, :cond_6

    #@96
    .line 897
    const-string/jumbo v1, "MediaSessionService"

    #@99
    const-string/jumbo v2, "No active session to adjust, skipping media only volume event"

    #@9c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 899
    :cond_6
    return-void

    #@a0
    .line 905
    :catch_0
    move-exception v13

    #@a1
    .line 906
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionService"

    #@a4
    const-string/jumbo v2, "Error adjusting default volume."

    #@a7
    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@aa
    goto :goto_1

    #@ab
    .line 909
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
    .line 910
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
    .line 909
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    #@c3
    goto :goto_1
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 16
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 946
    if-eqz p3, :cond_3

    #@2
    .line 947
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 948
    const-string/jumbo v1, "MediaSessionService"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Sending media key to "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 950
    :cond_0
    if-eqz p2, :cond_1

    #@28
    .line 951
    move-object/from16 v0, p0

    #@2a
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@2c
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    #@2f
    .line 956
    :cond_1
    if-eqz p2, :cond_2

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@35
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    #@38
    move-result v3

    #@39
    .line 957
    :goto_0
    move-object/from16 v0, p0

    #@3b
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@41
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@48
    move-result-object v1

    #@49
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4b
    .line 958
    move-object/from16 v0, p0

    #@4d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@4f
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    move-object/from16 v1, p3

    #@59
    move-object/from16 v2, p1

    #@5b
    .line 955
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;ILjava/lang/String;)V

    #@5e
    .line 945
    :goto_1
    return-void

    #@5f
    .line 956
    :cond_2
    const/4 v3, -0x1

    #@60
    goto :goto_0

    #@61
    .line 961
    :cond_3
    move-object/from16 v0, p0

    #@63
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@65
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@68
    move-result-object v1

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@6d
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@70
    move-result v2

    #@71
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v15

    #@75
    check-cast v15, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@77
    .line 962
    .local v15, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v15, :cond_9

    #@79
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@7c
    move-result-object v1

    #@7d
    if-nez v1, :cond_4

    #@7f
    .line 963
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@82
    move-result-object v1

    #@83
    if-eqz v1, :cond_9

    #@85
    .line 964
    :cond_4
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_5

    #@8b
    .line 965
    const-string/jumbo v1, "MediaSessionService"

    #@8e
    new-instance v2, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v3, "Sending media key to last known PendingIntent "

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    .line 966
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@9d
    move-result-object v3

    #@9e
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    .line 966
    const-string/jumbo v3, " or restored Intent "

    #@a5
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    .line 967
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@ac
    move-result-object v3

    #@ad
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v2

    #@b5
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 969
    :cond_5
    if-eqz p2, :cond_6

    #@ba
    .line 970
    move-object/from16 v0, p0

    #@bc
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@be
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    #@c1
    .line 972
    :cond_6
    new-instance v4, Landroid/content/Intent;

    #@c3
    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    #@c6
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c9
    .line 973
    .local v4, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@cb
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ce
    .line 974
    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@d6
    .line 976
    :try_start_0
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@d9
    move-result-object v1

    #@da
    if-eqz v1, :cond_8

    #@dc
    .line 977
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@df
    move-result-object v1

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e4
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@e7
    move-result-object v2

    #@e8
    .line 978
    if-eqz p2, :cond_7

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@ee
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    #@f1
    move-result v3

    #@f2
    .line 979
    :goto_2
    move-object/from16 v0, p0

    #@f4
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@fa
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@fd
    move-result-object v6

    #@fe
    .line 977
    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@101
    goto/16 :goto_1

    #@103
    .line 985
    :catch_0
    move-exception v14

    #@104
    .line 986
    .local v14, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MediaSessionService"

    #@107
    new-instance v2, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v3, "Error sending key event to media button receiver "

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    .line 987
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@116
    move-result-object v3

    #@117
    .line 986
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v2

    #@11b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v2

    #@11f
    invoke-static {v1, v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@122
    goto/16 :goto_1

    #@124
    .line 978
    .end local v14    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_7
    const/4 v3, -0x1

    #@125
    goto :goto_2

    #@126
    .line 981
    :cond_8
    :try_start_1
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@129
    move-result-object v1

    #@12a
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@12d
    .line 982
    move-object/from16 v0, p0

    #@12f
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@131
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@134
    move-result-object v1

    #@135
    .line 983
    new-instance v2, Landroid/os/UserHandle;

    #@137
    move-object/from16 v0, p0

    #@139
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@13b
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@13e
    move-result v3

    #@13f
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@142
    .line 982
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    #@145
    goto/16 :goto_1

    #@147
    .line 990
    .end local v4    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_9
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@14a
    move-result v1

    #@14b
    if-eqz v1, :cond_a

    #@14d
    .line 991
    const-string/jumbo v1, "MediaSessionService"

    #@150
    const-string/jumbo v2, "Sending media key ordered broadcast"

    #@153
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    .line 993
    :cond_a
    if-eqz p2, :cond_b

    #@158
    .line 994
    move-object/from16 v0, p0

    #@15a
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@15c
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@15f
    move-result-object v1

    #@160
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@163
    .line 997
    :cond_b
    new-instance v6, Landroid/content/Intent;

    #@165
    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    #@168
    const/4 v2, 0x0

    #@169
    invoke-direct {v6, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@16c
    .line 998
    .local v6, "keyIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@16e
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@171
    .line 999
    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    #@174
    move-object/from16 v0, p1

    #@176
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@179
    .line 1000
    if-eqz p2, :cond_c

    #@17b
    .line 1001
    const-string/jumbo v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@17e
    .line 1002
    const/16 v2, 0x7bc

    #@180
    .line 1001
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@183
    .line 1004
    :cond_c
    move-object/from16 v0, p0

    #@185
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@187
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@18a
    move-result-object v5

    #@18b
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@18d
    .line 1005
    move-object/from16 v0, p0

    #@18f
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@191
    move-object/from16 v0, p0

    #@193
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@195
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@198
    move-result-object v10

    #@199
    const/4 v8, 0x0

    #@19a
    const/4 v11, -0x1

    #@19b
    const/4 v12, 0x0

    #@19c
    const/4 v13, 0x0

    #@19d
    .line 1004
    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1a0
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
    .line 916
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
    .line 918
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@f
    .line 919
    return-void

    #@10
    .line 921
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@13
    move-result v0

    #@14
    .line 922
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
    .line 923
    .local v2, "isLongPress":Z
    :goto_0
    if-nez v0, :cond_4

    #@1f
    .line 924
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_3

    #@25
    .line 925
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@27
    .line 926
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@29
    .line 915
    :cond_1
    :goto_1
    return-void

    #@2a
    .line 922
    .end local v2    # "isLongPress":Z
    :cond_2
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "isLongPress":Z
    goto :goto_0

    #@2c
    .line 927
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
    .line 928
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@38
    .line 929
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    #@3b
    goto :goto_1

    #@3c
    .line 931
    :cond_4
    if-ne v0, v5, :cond_1

    #@3e
    .line 932
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 933
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@44
    .line 934
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
    .line 936
    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@51
    move-result-object v1

    #@52
    .line 937
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@55
    .line 938
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
    .line 1052
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
    .line 1053
    const-string/jumbo v2, "user_setup_complete"

    #@e
    const/4 v3, -0x2

    #@f
    .line 1052
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
    .line 1058
    if-ltz p1, :cond_0

    #@3
    .line 1059
    const/4 v1, 0x5

    #@4
    if-gt p1, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    .line 1058
    :cond_0
    return v0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 1048
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
    const/4 v4, 0x0

    #@1
    .line 1011
    const/4 v3, 0x0

    #@2
    .line 1017
    .local v3, "voiceIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@4
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v5

    #@8
    const-string/jumbo v6, "power"

    #@b
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/os/PowerManager;

    #@11
    .line 1018
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@13
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@16
    move-result-object v5

    #@17
    if-eqz v5, :cond_3

    #@19
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1b
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@22
    move-result v1

    #@23
    .line 1019
    .local v1, "isLocked":Z
    :goto_0
    if-nez v1, :cond_4

    #@25
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_4

    #@2b
    .line 1020
    new-instance v3, Landroid/content/Intent;

    #@2d
    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    #@30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@33
    .line 1021
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "MediaSessionService"

    #@36
    const-string/jumbo v5, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    #@39
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1029
    :goto_1
    if-eqz p1, :cond_0

    #@3e
    .line 1030
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@40
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@47
    .line 1033
    :cond_0
    if-eqz v3, :cond_1

    #@49
    .line 1034
    const/high16 v4, 0x10800000

    #@4b
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@4e
    .line 1036
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@50
    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@53
    move-result-object v4

    #@54
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@56
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 1041
    :cond_1
    if-eqz p1, :cond_2

    #@5b
    .line 1042
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@5d
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@64
    .line 1010
    :cond_2
    :goto_2
    return-void

    #@65
    .end local v1    # "isLocked":Z
    .local v3, "voiceIntent":Landroid/content/Intent;
    :cond_3
    move v1, v4

    #@66
    .line 1018
    goto :goto_0

    #@67
    .line 1023
    .restart local v1    # "isLocked":Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    #@69
    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@6c
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6f
    .line 1024
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.extras.EXTRA_SECURE"

    #@72
    .line 1025
    if-eqz v1, :cond_5

    #@74
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@76
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@7d
    move-result v4

    #@7e
    .line 1024
    :cond_5
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@81
    .line 1026
    const-string/jumbo v4, "MediaSessionService"

    #@84
    const-string/jumbo v5, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    #@87
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    goto :goto_1

    #@8b
    .line 1038
    :catch_0
    move-exception v0

    #@8c
    .line 1039
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string/jumbo v4, "MediaSessionService"

    #@8f
    new-instance v5, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v6, "No activity for search: "

    #@97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a6
    .line 1041
    if-eqz p1, :cond_2

    #@a8
    .line 1042
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@aa
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@b1
    goto :goto_2

    #@b2
    .line 1040
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    #@b3
    .line 1041
    if-eqz p1, :cond_6

    #@b5
    .line 1042
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@b7
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@be
    .line 1040
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
    .line 863
    const/4 v6, 0x0

    #@2
    .line 864
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@4
    .line 867
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 868
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@a
    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    #@d
    .line 873
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
    .line 872
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v7

    #@18
    .line 876
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1a
    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->-wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    #@1d
    .line 877
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
    .line 692
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v5

    #@4
    .line 693
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v6

    #@8
    .line 694
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v10

    #@c
    .line 697
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    #@f
    move-result v4

    #@10
    .line 698
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
    .line 699
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@19
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    #@1c
    move-result v8

    #@1d
    .line 700
    .local v8, "index":I
    const/4 v1, -0x1

    #@1e
    if-eq v8, v1, :cond_0

    #@20
    .line 701
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
    .line 715
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 702
    return-void

    #@2e
    .line 704
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
    .line 707
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
    .line 712
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
    .line 715
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 691
    return-void

    #@4d
    .line 708
    :catch_0
    move-exception v7

    #@4e
    .line 709
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
    .line 715
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 710
    return-void

    #@5c
    .line 698
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
    .line 714
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v1

    #@60
    .line 715
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 714
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
    .line 649
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 650
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 651
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v10

    #@c
    .line 653
    .local v10, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    #@11
    .line 655
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
    .line 654
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@1c
    move-result v5

    #@1d
    .line 656
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_0

    #@1f
    .line 657
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
    .line 661
    .end local v5    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    #@29
    .line 662
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 661
    throw v2

    #@2d
    .line 659
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
    .line 662
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 659
    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .locals 8
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 797
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 798
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 799
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 801
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
    .line 802
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@15
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@18
    move-result-object v5

    #@19
    .line 803
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1b
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@1e
    move-result v7

    #@1f
    .line 802
    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    #@22
    move-result-object v1

    #@23
    .line 804
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
    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 796
    return-void

    #@2b
    .line 801
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
    .line 806
    :catchall_1
    move-exception v5

    #@2f
    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 806
    throw v5
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 747
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
    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f
    move-result v0

    #@10
    .line 753
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v4

    #@14
    .line 754
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 756
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_0

    #@1e
    .line 757
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
    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    #@51
    move-result v7

    #@52
    if-nez v7, :cond_2

    #@54
    .line 763
    const-string/jumbo v7, "MediaSessionService"

    #@57
    const-string/jumbo v8, "Not dispatching media key event because user setup is in progress."

    #@5a
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5d
    .line 791
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 765
    return-void

    #@61
    .line 748
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
    .line 749
    return-void

    #@6b
    .line 767
    .restart local v0    # "pid":I
    .restart local v2    # "token":J
    .restart local v4    # "uid":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isGlobalPriorityActive()Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_3

    #@71
    const/16 v7, 0x3e8

    #@73
    if-eq v4, v7, :cond_3

    #@75
    .line 770
    const-string/jumbo v7, "MediaSessionService"

    #@78
    const-string/jumbo v8, "Only the system can dispatch media key event to the global priority session."

    #@7b
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@7e
    .line 791
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@81
    .line 772
    return-void

    #@82
    .line 775
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@84
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@87
    move-result-object v8

    #@88
    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@89
    .line 778
    :try_start_3
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@8b
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@8e
    move-result-object v7

    #@8f
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@91
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@94
    move-result v9

    #@95
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v5

    #@99
    check-cast v5, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@9b
    .line 779
    .local v5, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v5, :cond_4

    #@9d
    .line 780
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@a0
    move-result-object v7

    #@a1
    if-nez v7, :cond_6

    #@a3
    .line 781
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@a6
    move-result-object v7

    #@a7
    if-nez v7, :cond_5

    #@a9
    const/4 v6, 0x1

    #@aa
    .line 782
    .local v6, "useNotPlayingSessions":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ac
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@af
    move-result-object v7

    #@b0
    .line 783
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@b2
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    #@b5
    move-result v9

    #@b6
    .line 782
    invoke-virtual {v7, v9, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;

    #@b9
    move-result-object v1

    #@ba
    .line 784
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@bd
    move-result v7

    #@be
    invoke-direct {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    #@c1
    move-result v7

    #@c2
    if-eqz v7, :cond_7

    #@c4
    .line 785
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c8
    .line 791
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@cb
    .line 746
    return-void

    #@cc
    .line 779
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :cond_4
    const/4 v6, 0x1

    #@cd
    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    #@ce
    .line 781
    .end local v6    # "useNotPlayingSessions":Z
    :cond_5
    const/4 v6, 0x0

    #@cf
    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    #@d0
    .line 780
    .end local v6    # "useNotPlayingSessions":Z
    :cond_6
    const/4 v6, 0x0

    #@d1
    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    #@d2
    .line 787
    .restart local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_7
    :try_start_5
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d5
    goto :goto_1

    #@d6
    .line 775
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :catchall_0
    move-exception v7

    #@d7
    :try_start_6
    monitor-exit v8

    #@d8
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@d9
    .line 790
    :catchall_1
    move-exception v7

    #@da
    .line 791
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@dd
    .line 790
    throw v7
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 831
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
    .line 833
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
    .line 834
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v4

    #@1f
    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 835
    const-string/jumbo v4, ", uid="

    #@26
    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v4

    #@2e
    .line 833
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
    .line 836
    return-void

    #@3a
    .line 839
    :cond_0
    const-string/jumbo v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    #@3d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 840
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@43
    .line 842
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@45
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    monitor-enter v4

    #@4a
    .line 843
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
    .line 844
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
    .line 845
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
    .line 846
    const/4 v1, 0x0

    #@8d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@8f
    .line 847
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
    .line 848
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a4
    .line 846
    add-int/lit8 v1, v1, 0x1

    #@a6
    goto :goto_0

    #@a7
    .line 850
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
    .line 852
    const-string/jumbo v3, "User Records:"

    #@b6
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b9
    .line 853
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
    .line 854
    const/4 v1, 0x0

    #@c4
    :goto_1
    if-ge v1, v0, :cond_2

    #@c6
    .line 855
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
    .line 856
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    const-string/jumbo v3, ""

    #@df
    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e2
    .line 854
    add-int/lit8 v1, v1, 0x1

    #@e4
    goto :goto_1

    #@e5
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_2
    monitor-exit v4

    #@e6
    .line 830
    return-void

    #@e7
    .line 842
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
    .line 668
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 669
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v8

    #@8
    .line 670
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v6

    #@c
    .line 673
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    #@f
    move-result v4

    #@10
    .line 674
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 675
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
    .line 676
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
    .line 678
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v5

    #@2a
    .line 679
    .local v5, "size":I
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@2d
    .line 680
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
    .line 679
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
    .line 685
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 683
    return-object v0

    #@46
    .line 675
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
    .line 684
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v9

    #@4a
    .line 685
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 684
    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    #@0
    .prologue
    .line 826
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
    .line 722
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 723
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@9
    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    #@c
    move-result v1

    #@d
    .line 724
    .local v1, "index":I
    const/4 v3, -0x1

    #@e
    if-eq v1, v3, :cond_0

    #@10
    .line 725
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
    .line 727
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
    .line 721
    return-void

    #@2a
    .line 722
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3

    #@2d
    .line 728
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
    .line 813
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 814
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 815
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 817
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    const-string/jumbo v5, "listen for volume changes"

    #@11
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    #@14
    .line 818
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@16
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 820
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 812
    return-void

    #@1d
    .line 819
    :catchall_0
    move-exception v4

    #@1e
    .line 820
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 819
    throw v4
.end method
