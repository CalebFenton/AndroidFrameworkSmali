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
    .line 641
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@3
    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    #@6
    .line 646
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@8
    .line 647
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@a
    .line 1080
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    #@15
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@17
    .line 1150
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@1e
    .line 641
    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .locals 14
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 893
    const/4 v13, 0x0

    #@1
    .line 894
    .local v13, "preferSuggestedStream":Z
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 895
    const/4 v1, 0x0

    #@8
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@b
    move-result v1

    #@c
    .line 894
    if-eqz v1, :cond_0

    #@e
    .line 896
    const/4 v13, 0x1

    #@f
    .line 898
    :cond_0
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 899
    const-string/jumbo v1, "MediaSessionService"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Adjusting "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    move-object/from16 v0, p4

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, " by "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    move/from16 v0, p2

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, ". flags="

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    move/from16 v0, p3

    #@40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 900
    const-string/jumbo v3, ", suggestedStream="

    #@47
    .line 899
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 901
    const-string/jumbo v3, ", preferSuggestedStream="

    #@52
    .line 899
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 903
    :cond_1
    if-eqz p4, :cond_2

    #@63
    if-eqz v13, :cond_6

    #@65
    .line 904
    :cond_2
    move/from16 v0, p3

    #@67
    and-int/lit16 v1, v0, 0x200

    #@69
    if-eqz v1, :cond_3

    #@6b
    .line 905
    const/4 v1, 0x3

    #@6c
    const/4 v2, 0x0

    #@6d
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_4

    #@73
    .line 912
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@75
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 913
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@7f
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    #@82
    move-result-object v1

    #@83
    .line 914
    const-string/jumbo v6, "MediaSessionService"

    #@86
    move/from16 v2, p2

    #@88
    move v3, p1

    #@89
    move/from16 v4, p3

    #@8b
    .line 913
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8e
    .line 892
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    #@8f
    .line 906
    :cond_4
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@92
    move-result v1

    #@93
    if-eqz v1, :cond_5

    #@95
    .line 907
    const-string/jumbo v1, "MediaSessionService"

    #@98
    const-string/jumbo v2, "No active session to adjust, skipping media only volume event"

    #@9b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 909
    :cond_5
    return-void

    #@9f
    .line 915
    :catch_0
    move-exception v12

    #@a0
    .line 916
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionService"

    #@a3
    const-string/jumbo v2, "Error adjusting default volume."

    #@a6
    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a9
    goto :goto_0

    #@aa
    .line 919
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ac
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b3
    move-result-object v9

    #@b4
    .line 920
    const/16 v10, 0x3e8

    #@b6
    const/4 v11, 0x1

    #@b7
    move-object/from16 v6, p4

    #@b9
    move/from16 v7, p2

    #@bb
    move/from16 v8, p3

    #@bd
    .line 919
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    #@c0
    goto :goto_0
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 18
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 956
    if-eqz p3, :cond_3

    #@2
    .line 957
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get1()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 958
    const-string/jumbo v1, "MediaSessionService"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Sending "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " to "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 960
    :cond_0
    if-eqz p2, :cond_1

    #@33
    .line 961
    move-object/from16 v0, p0

    #@35
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@37
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    #@3a
    .line 966
    :cond_1
    if-eqz p2, :cond_2

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@40
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    #@43
    move-result v3

    #@44
    .line 967
    :goto_0
    move-object/from16 v0, p0

    #@46
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@48
    .line 968
    move-object/from16 v0, p0

    #@4a
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@4c
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    .line 967
    const/16 v5, 0x3e8

    #@56
    move-object/from16 v1, p3

    #@58
    move-object/from16 v2, p1

    #@5a
    .line 965
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;ILjava/lang/String;)V

    #@5d
    .line 955
    :goto_1
    return-void

    #@5e
    .line 966
    :cond_2
    const/4 v3, -0x1

    #@5f
    goto :goto_0

    #@60
    .line 971
    :cond_3
    move-object/from16 v0, p0

    #@62
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@64
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    #@67
    move-result-object v1

    #@68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v17

    #@6c
    .local v17, "userId$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_b

    #@72
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v1

    #@76
    check-cast v1, Ljava/lang/Integer;

    #@78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@7b
    move-result v16

    #@7c
    .line 972
    .local v16, "userId":I
    move-object/from16 v0, p0

    #@7e
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@80
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@83
    move-result-object v1

    #@84
    move/from16 v0, v16

    #@86
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v15

    #@8a
    check-cast v15, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@8c
    .line 973
    .local v15, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@8f
    move-result-object v1

    #@90
    if-nez v1, :cond_5

    #@92
    .line 974
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@95
    move-result-object v1

    #@96
    if-eqz v1, :cond_4

    #@98
    .line 977
    :cond_5
    if-eqz p2, :cond_6

    #@9a
    .line 978
    move-object/from16 v0, p0

    #@9c
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@9e
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    #@a1
    .line 980
    :cond_6
    new-instance v4, Landroid/content/Intent;

    #@a3
    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    #@a6
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a9
    .line 981
    .local v4, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@ab
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ae
    .line 982
    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    #@b1
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@b6
    .line 984
    :try_start_0
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@b9
    move-result-object v1

    #@ba
    if-eqz v1, :cond_9

    #@bc
    .line 985
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get1()Z

    #@bf
    move-result v1

    #@c0
    if-eqz v1, :cond_7

    #@c2
    .line 986
    const-string/jumbo v1, "MediaSessionService"

    #@c5
    new-instance v2, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v3, "Sending "

    #@cd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v2

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v2

    #@d7
    .line 987
    const-string/jumbo v3, " to the last known pendingIntent "

    #@da
    .line 986
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v2

    #@de
    .line 988
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@e1
    move-result-object v3

    #@e2
    .line 986
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v2

    #@e6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v2

    #@ea
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 990
    :cond_7
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@f0
    move-result-object v1

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@f5
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@f8
    move-result-object v2

    #@f9
    .line 991
    if-eqz p2, :cond_8

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@ff
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    #@102
    move-result v3

    #@103
    .line 992
    :goto_2
    move-object/from16 v0, p0

    #@105
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@10b
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@10e
    move-result-object v6

    #@10f
    .line 990
    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    #@112
    .line 1006
    :goto_3
    return-void

    #@113
    .line 991
    :cond_8
    const/4 v3, -0x1

    #@114
    goto :goto_2

    #@115
    .line 994
    :cond_9
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get1()Z

    #@118
    move-result v1

    #@119
    if-eqz v1, :cond_a

    #@11b
    .line 995
    const-string/jumbo v1, "MediaSessionService"

    #@11e
    new-instance v2, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v3, "Sending "

    #@126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v2

    #@12a
    move-object/from16 v0, p1

    #@12c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v2

    #@130
    const-string/jumbo v3, " to the restored intent "

    #@133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v2

    #@137
    .line 996
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@13a
    move-result-object v3

    #@13b
    .line 995
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v2

    #@13f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v2

    #@143
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    .line 998
    :cond_a
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@149
    move-result-object v1

    #@14a
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@14d
    .line 999
    move-object/from16 v0, p0

    #@14f
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@151
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@154
    move-result-object v1

    #@155
    .line 1000
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@158
    move-result-object v2

    #@159
    .line 999
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@15c
    goto :goto_3

    #@15d
    .line 1002
    :catch_0
    move-exception v14

    #@15e
    .line 1003
    .local v14, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MediaSessionService"

    #@161
    new-instance v2, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v3, "Error sending key event to media button receiver "

    #@169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v2

    #@16d
    .line 1004
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@170
    move-result-object v3

    #@171
    .line 1003
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v2

    #@175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v2

    #@179
    invoke-static {v1, v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17c
    goto :goto_3

    #@17d
    .line 1008
    .end local v4    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v14    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v15    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v16    # "userId":I
    :cond_b
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@180
    move-result v1

    #@181
    if-eqz v1, :cond_c

    #@183
    .line 1009
    const-string/jumbo v1, "MediaSessionService"

    #@186
    const-string/jumbo v2, "Sending media key ordered broadcast"

    #@189
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18c
    .line 1011
    :cond_c
    if-eqz p2, :cond_d

    #@18e
    .line 1012
    move-object/from16 v0, p0

    #@190
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@192
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@199
    .line 1015
    :cond_d
    new-instance v6, Landroid/content/Intent;

    #@19b
    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    #@19e
    const/4 v2, 0x0

    #@19f
    invoke-direct {v6, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1a2
    .line 1016
    .local v6, "keyIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@1a4
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1a7
    .line 1017
    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1af
    .line 1018
    if-eqz p2, :cond_e

    #@1b1
    .line 1019
    const-string/jumbo v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@1b4
    const/16 v2, 0x7bc

    #@1b6
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1b9
    .line 1022
    :cond_e
    move-object/from16 v0, p0

    #@1bb
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1bd
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@1c0
    move-result-object v5

    #@1c1
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1c3
    .line 1023
    move-object/from16 v0, p0

    #@1c5
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1cb
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@1ce
    move-result-object v10

    #@1cf
    const/4 v8, 0x0

    #@1d0
    const/4 v11, -0x1

    #@1d1
    const/4 v12, 0x0

    #@1d2
    const/4 v13, 0x0

    #@1d3
    .line 1022
    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1d6
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
    .line 926
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
    .line 928
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@f
    .line 929
    return-void

    #@10
    .line 931
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@13
    move-result v0

    #@14
    .line 932
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
    .line 933
    .local v2, "isLongPress":Z
    :goto_0
    if-nez v0, :cond_4

    #@1f
    .line 934
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_3

    #@25
    .line 935
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@27
    .line 936
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@29
    .line 925
    :cond_1
    :goto_1
    return-void

    #@2a
    .line 932
    .end local v2    # "isLongPress":Z
    :cond_2
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "isLongPress":Z
    goto :goto_0

    #@2c
    .line 937
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
    .line 938
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    #@38
    .line 939
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    #@3b
    goto :goto_1

    #@3c
    .line 941
    :cond_4
    if-ne v0, v5, :cond_1

    #@3e
    .line 942
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 943
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    #@44
    .line 944
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
    .line 946
    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@51
    move-result-object v1

    #@52
    .line 947
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    #@55
    .line 948
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
    .line 1070
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
    .line 1071
    const-string/jumbo v2, "user_setup_complete"

    #@e
    const/4 v3, -0x2

    #@f
    .line 1070
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
    .line 1076
    if-ltz p1, :cond_0

    #@3
    .line 1077
    const/4 v1, 0x5

    #@4
    if-gt p1, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    .line 1076
    :cond_0
    return v0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 1066
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
    .line 1028
    const/4 v3, 0x0

    #@2
    .line 1034
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
    .line 1035
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@13
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@16
    move-result-object v5

    #@17
    if-eqz v5, :cond_4

    #@19
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1b
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@22
    move-result v1

    #@23
    .line 1036
    .local v1, "isLocked":Z
    :goto_0
    if-nez v1, :cond_5

    #@25
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_5

    #@2b
    .line 1037
    new-instance v3, Landroid/content/Intent;

    #@2d
    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    #@30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@33
    .line 1038
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "MediaSessionService"

    #@36
    const-string/jumbo v5, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    #@39
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1046
    :goto_1
    if-eqz p1, :cond_0

    #@3e
    .line 1047
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@40
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@47
    .line 1050
    :cond_0
    if-eqz v3, :cond_2

    #@49
    .line 1051
    const/high16 v4, 0x10800000

    #@4b
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@4e
    .line 1053
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_1

    #@54
    const-string/jumbo v4, "MediaSessionService"

    #@57
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "voiceIntent: "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 1054
    :cond_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@70
    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@73
    move-result-object v4

    #@74
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@76
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 1059
    :cond_2
    if-eqz p1, :cond_3

    #@7b
    .line 1060
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@7d
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@84
    .line 1027
    :cond_3
    :goto_2
    return-void

    #@85
    .end local v1    # "isLocked":Z
    .local v3, "voiceIntent":Landroid/content/Intent;
    :cond_4
    move v1, v4

    #@86
    .line 1035
    goto :goto_0

    #@87
    .line 1040
    .restart local v1    # "isLocked":Z
    :cond_5
    new-instance v3, Landroid/content/Intent;

    #@89
    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@8c
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8f
    .line 1041
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.extras.EXTRA_SECURE"

    #@92
    .line 1042
    if-eqz v1, :cond_6

    #@94
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@96
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@9d
    move-result v4

    #@9e
    .line 1041
    :cond_6
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@a1
    .line 1043
    const-string/jumbo v4, "MediaSessionService"

    #@a4
    const-string/jumbo v5, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    #@a7
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    goto :goto_1

    #@ab
    .line 1056
    :catch_0
    move-exception v0

    #@ac
    .line 1057
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string/jumbo v4, "MediaSessionService"

    #@af
    new-instance v5, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v6, "No activity for search: "

    #@b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c6
    .line 1059
    if-eqz p1, :cond_3

    #@c8
    .line 1060
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ca
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d1
    goto :goto_2

    #@d2
    .line 1058
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    #@d3
    .line 1059
    if-eqz p1, :cond_7

    #@d5
    .line 1060
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@d7
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@da
    move-result-object v5

    #@db
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@de
    .line 1058
    :cond_7
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
    .line 874
    const/4 v6, 0x0

    #@2
    .line 875
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@4
    .line 878
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 879
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@a
    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    #@d
    .line 884
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
    .line 883
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v7

    #@18
    .line 887
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1a
    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->-wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    #@1d
    .line 888
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
    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v5

    #@4
    .line 696
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v6

    #@8
    .line 697
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v10

    #@c
    .line 700
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    #@f
    move-result v4

    #@10
    .line 701
    .local v4, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@12
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@15
    move-result-object v9

    #@16
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    .line 702
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@19
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    #@1c
    move-result v8

    #@1d
    .line 703
    .local v8, "index":I
    const/4 v1, -0x1

    #@1e
    if-eq v8, v1, :cond_0

    #@20
    .line 704
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
    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 705
    return-void

    #@2e
    .line 707
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
    .line 710
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
    .line 715
    :try_start_5
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@41
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

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
    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 694
    return-void

    #@4d
    .line 711
    :catch_0
    move-exception v7

    #@4e
    .line 712
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
    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 713
    return-void

    #@5c
    .line 701
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
    .line 717
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v1

    #@60
    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 717
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
    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 653
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 654
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v10

    #@c
    .line 656
    .local v10, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    #@11
    .line 658
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
    .line 657
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@1c
    move-result v5

    #@1d
    .line 659
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_0

    #@1f
    .line 660
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
    .line 664
    .end local v5    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    #@29
    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 664
    throw v2

    #@2d
    .line 662
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
    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 662
    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .locals 6
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 812
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@6
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 813
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@d
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@10
    move-result-object v1

    #@11
    .line 814
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@13
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    #@16
    move-result-object v5

    #@17
    .line 813
    invoke-virtual {v1, v5}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(Ljava/util/List;)Lcom/android/server/media/MediaSessionRecord;

    #@1a
    move-result-object v0

    #@1b
    .line 815
    .local v0, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 809
    return-void

    #@23
    .line 812
    .end local v0    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v1

    #@24
    :try_start_3
    monitor-exit v4

    #@25
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@26
    .line 817
    :catchall_1
    move-exception v1

    #@27
    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 817
    throw v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 13
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 750
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v9

    #@6
    invoke-static {v9}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    #@9
    move-result v9

    #@a
    if-eqz v9, :cond_1

    #@c
    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f
    move-result v0

    #@10
    .line 756
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v4

    #@14
    .line 757
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 759
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@1b
    move-result v9

    #@1c
    if-eqz v9, :cond_0

    #@1e
    .line 760
    const-string/jumbo v9, "MediaSessionService"

    #@21
    new-instance v10, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v11, "dispatchMediaKeyEvent, pid="

    #@29
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v10

    #@31
    const-string/jumbo v11, ", uid="

    #@34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    const-string/jumbo v11, ", event="

    #@3f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v10

    #@47
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    #@51
    move-result v9

    #@52
    if-nez v9, :cond_2

    #@54
    .line 766
    const-string/jumbo v9, "MediaSessionService"

    #@57
    const-string/jumbo v10, "Not dispatching media key event because user setup is in progress."

    #@5a
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5d
    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 768
    return-void

    #@61
    .line 751
    .end local v0    # "pid":I
    .end local v2    # "token":J
    .end local v4    # "uid":I
    :cond_1
    const-string/jumbo v9, "MediaSessionService"

    #@64
    const-string/jumbo v10, "Attempted to dispatch null or non-media key event."

    #@67
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 752
    return-void

    #@6b
    .line 770
    .restart local v0    # "pid":I
    .restart local v2    # "token":J
    .restart local v4    # "uid":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isGlobalPriorityActive()Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_3

    #@71
    const/16 v9, 0x3e8

    #@73
    if-eq v4, v9, :cond_3

    #@75
    .line 773
    const-string/jumbo v9, "MediaSessionService"

    #@78
    const-string/jumbo v10, "Only the system can dispatch media key event to the global priority session."

    #@7b
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@7e
    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@81
    .line 775
    return-void

    #@82
    .line 778
    :cond_3
    :try_start_2
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@84
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@87
    move-result-object v10

    #@88
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@89
    .line 781
    const/4 v6, 0x1

    #@8a
    .line 782
    .local v6, "useNotPlayingSessions":Z
    :try_start_3
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@8c
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    #@8f
    move-result-object v9

    #@90
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@93
    move-result-object v8

    #@94
    .local v8, "userId$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@97
    move-result v9

    #@98
    if-eqz v9, :cond_6

    #@9a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9d
    move-result-object v9

    #@9e
    check-cast v9, Ljava/lang/Integer;

    #@a0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@a3
    move-result v7

    #@a4
    .line 783
    .local v7, "userId":I
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@a6
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ad
    move-result-object v5

    #@ae
    check-cast v5, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@b0
    .line 784
    .local v5, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    #@b3
    move-result-object v9

    #@b4
    if-nez v9, :cond_5

    #@b6
    .line 785
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    #@b9
    move-result-object v9

    #@ba
    if-eqz v9, :cond_4

    #@bc
    .line 786
    :cond_5
    const/4 v6, 0x0

    #@bd
    .line 791
    .end local v5    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v7    # "userId":I
    :cond_6
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    #@c0
    move-result v9

    #@c1
    if-eqz v9, :cond_7

    #@c3
    .line 792
    const-string/jumbo v9, "MediaSessionService"

    #@c6
    new-instance v11, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v12, "dispatchMediaKeyEvent, useNotPlayingSessions="

    #@ce
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v11

    #@d2
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v11

    #@da
    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 795
    :cond_7
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@df
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@e2
    move-result-object v9

    #@e3
    .line 796
    iget-object v11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e5
    invoke-static {v11}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    #@e8
    move-result-object v11

    #@e9
    .line 795
    invoke-virtual {v9, v11, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(Ljava/util/List;Z)Lcom/android/server/media/MediaSessionRecord;

    #@ec
    move-result-object v1

    #@ed
    .line 797
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@f0
    move-result v9

    #@f1
    invoke-direct {p0, v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    #@f4
    move-result v9

    #@f5
    if-eqz v9, :cond_8

    #@f7
    .line 798
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fa
    :goto_0
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@fb
    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fe
    .line 749
    return-void

    #@ff
    .line 800
    :cond_8
    :try_start_5
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@102
    goto :goto_0

    #@103
    .line 778
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v8    # "userId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@104
    :try_start_6
    monitor-exit v10

    #@105
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@106
    .line 803
    .end local v6    # "useNotPlayingSessions":Z
    :catchall_1
    move-exception v9

    #@107
    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10a
    .line 803
    throw v9
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 842
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
    .line 844
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
    .line 845
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v4

    #@1f
    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 846
    const-string/jumbo v4, ", uid="

    #@26
    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v4

    #@2e
    .line 844
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
    .line 847
    return-void

    #@3a
    .line 850
    :cond_0
    const-string/jumbo v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    #@3d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 851
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@43
    .line 853
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@45
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    monitor-enter v4

    #@4a
    .line 854
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@51
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

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
    .line 855
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@6d
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@74
    move-result v0

    #@75
    .line 856
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
    .line 857
    const/4 v1, 0x0

    #@8d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@8f
    .line 858
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@91
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

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
    .line 859
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a4
    .line 857
    add-int/lit8 v1, v1, 0x1

    #@a6
    goto :goto_0

    #@a7
    .line 861
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@a9
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@ac
    move-result-object v3

    #@ad
    const-string/jumbo v5, ""

    #@b0
    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@b3
    .line 863
    const-string/jumbo v3, "User Records:"

    #@b6
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b9
    .line 864
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@bb
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@c2
    move-result v0

    #@c3
    .line 865
    const/4 v1, 0x0

    #@c4
    :goto_1
    if-ge v1, v0, :cond_2

    #@c6
    .line 866
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@c8
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    #@cb
    move-result-object v3

    #@cc
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@ce
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

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
    .line 867
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    const-string/jumbo v3, ""

    #@df
    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e2
    .line 865
    add-int/lit8 v1, v1, 0x1

    #@e4
    goto :goto_1

    #@e5
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_2
    monitor-exit v4

    #@e6
    .line 841
    return-void

    #@e7
    .line 853
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
    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 672
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v8

    #@8
    .line 673
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v6

    #@c
    .line 676
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    #@f
    move-result v4

    #@10
    .line 677
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 678
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@17
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@1a
    move-result-object v10

    #@1b
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 679
    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@1e
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    #@25
    move-result-object v3

    #@26
    .line 681
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v5

    #@2a
    .line 682
    .local v5, "size":I
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@2d
    .line 683
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
    .line 682
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
    .line 688
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 686
    return-object v0

    #@46
    .line 678
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
    .line 687
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v9

    #@4a
    .line 688
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 687
    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    #@0
    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

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
    .line 725
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 726
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@9
    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    #@c
    move-result v1

    #@d
    .line 727
    .local v1, "index":I
    const/4 v3, -0x1

    #@e
    if-eq v1, v3, :cond_0

    #@10
    .line 728
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@12
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

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
    .line 730
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
    .line 724
    return-void

    #@2a
    .line 725
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3

    #@2d
    .line 731
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
    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 825
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 826
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 828
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    const-string/jumbo v5, "listen for volume changes"

    #@11
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    #@14
    .line 829
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@16
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 831
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 823
    return-void

    #@1d
    .line 830
    :catchall_0
    move-exception v4

    #@1e
    .line 831
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 830
    throw v4
.end method
