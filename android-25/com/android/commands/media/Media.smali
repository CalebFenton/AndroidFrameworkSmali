.class public Lcom/android/commands/media/Media;
.super Lcom/android/internal/os/BaseCommand;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/media/Media$ControllerMonitor;
    }
.end annotation


# instance fields
.field private mSessionService:Landroid/media/session/ISessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 57
    new-instance v0, Lcom/android/commands/media/Media;

    #@2
    invoke-direct {v0}, Lcom/android/commands/media/Media;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/media/Media;->run([Ljava/lang/String;)V

    #@8
    .line 56
    return-void
.end method

.method private runDispatch()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/commands/media/Media;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 140
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v1, "play"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 141
    const/16 v7, 0x7e

    #@f
    .line 167
    .local v7, "keycode":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v2

    #@13
    .line 168
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    #@15
    const/4 v6, 0x0

    #@16
    const/4 v8, 0x0

    #@17
    const/4 v9, 0x0

    #@18
    .line 169
    const/4 v10, -0x1

    #@19
    const/4 v11, 0x0

    #@1a
    const/4 v12, 0x0

    #@1b
    const/16 v13, 0x101

    #@1d
    move-wide v4, v2

    #@1e
    .line 168
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@21
    invoke-direct {p0, v1}, Lcom/android/commands/media/Media;->sendMediaKey(Landroid/view/KeyEvent;)V

    #@24
    .line 170
    new-instance v1, Landroid/view/KeyEvent;

    #@26
    const/4 v6, 0x1

    #@27
    const/4 v8, 0x0

    #@28
    const/4 v9, 0x0

    #@29
    .line 171
    const/4 v10, -0x1

    #@2a
    const/4 v11, 0x0

    #@2b
    const/4 v12, 0x0

    #@2c
    const/16 v13, 0x101

    #@2e
    move-wide v4, v2

    #@2f
    .line 170
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@32
    invoke-direct {p0, v1}, Lcom/android/commands/media/Media;->sendMediaKey(Landroid/view/KeyEvent;)V

    #@35
    .line 137
    return-void

    #@36
    .line 142
    .end local v2    # "now":J
    .end local v7    # "keycode":I
    :cond_0
    const-string/jumbo v1, "pause"

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_1

    #@3f
    .line 143
    const/16 v7, 0x7f

    #@41
    .restart local v7    # "keycode":I
    goto :goto_0

    #@42
    .line 144
    .end local v7    # "keycode":I
    :cond_1
    const-string/jumbo v1, "play-pause"

    #@45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 145
    const/16 v7, 0x55

    #@4d
    .restart local v7    # "keycode":I
    goto :goto_0

    #@4e
    .line 146
    .end local v7    # "keycode":I
    :cond_2
    const-string/jumbo v1, "mute"

    #@51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_3

    #@57
    .line 147
    const/16 v7, 0x5b

    #@59
    .restart local v7    # "keycode":I
    goto :goto_0

    #@5a
    .line 148
    .end local v7    # "keycode":I
    :cond_3
    const-string/jumbo v1, "headsethook"

    #@5d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 149
    const/16 v7, 0x4f

    #@65
    .restart local v7    # "keycode":I
    goto :goto_0

    #@66
    .line 150
    .end local v7    # "keycode":I
    :cond_4
    const-string/jumbo v1, "stop"

    #@69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_5

    #@6f
    .line 151
    const/16 v7, 0x56

    #@71
    .restart local v7    # "keycode":I
    goto :goto_0

    #@72
    .line 152
    .end local v7    # "keycode":I
    :cond_5
    const-string/jumbo v1, "next"

    #@75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v1

    #@79
    if-eqz v1, :cond_6

    #@7b
    .line 153
    const/16 v7, 0x57

    #@7d
    .restart local v7    # "keycode":I
    goto :goto_0

    #@7e
    .line 154
    .end local v7    # "keycode":I
    :cond_6
    const-string/jumbo v1, "previous"

    #@81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v1

    #@85
    if-eqz v1, :cond_7

    #@87
    .line 155
    const/16 v7, 0x58

    #@89
    .restart local v7    # "keycode":I
    goto :goto_0

    #@8a
    .line 156
    .end local v7    # "keycode":I
    :cond_7
    const-string/jumbo v1, "rewind"

    #@8d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_8

    #@93
    .line 157
    const/16 v7, 0x59

    #@95
    .restart local v7    # "keycode":I
    goto/16 :goto_0

    #@97
    .line 158
    .end local v7    # "keycode":I
    :cond_8
    const-string/jumbo v1, "record"

    #@9a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v1

    #@9e
    if-eqz v1, :cond_9

    #@a0
    .line 159
    const/16 v7, 0x82

    #@a2
    .restart local v7    # "keycode":I
    goto/16 :goto_0

    #@a4
    .line 160
    .end local v7    # "keycode":I
    :cond_9
    const-string/jumbo v1, "fast-forward"

    #@a7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_a

    #@ad
    .line 161
    const/16 v7, 0x5a

    #@af
    .restart local v7    # "keycode":I
    goto/16 :goto_0

    #@b1
    .line 163
    .end local v7    # "keycode":I
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v4, "Error: unknown dispatch code \'"

    #@b9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    const-string/jumbo v4, "\'"

    #@c4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    invoke-virtual {p0, v1}, Lcom/android/commands/media/Media;->showError(Ljava/lang/String;)V

    #@cf
    .line 164
    return-void
.end method

.method private runListSessions()V
    .locals 9

    #@0
    .prologue
    .line 293
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v7, "Sessions:"

    #@5
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 295
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    #@a
    .line 296
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@d
    move-result v7

    #@e
    const/4 v8, 0x0

    #@f
    .line 295
    invoke-interface {v6, v8, v7}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    #@12
    move-result-object v5

    #@13
    .line 297
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v4

    #@17
    .local v4, "session$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/os/IBinder;

    #@23
    .line 299
    .local v3, "session":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@26
    move-result-object v0

    #@27
    .line 300
    .local v0, "controller":Landroid/media/session/ISessionController;
    if-eqz v0, :cond_0

    #@29
    .line 302
    :try_start_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v8, "  tag="

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    .line 303
    const-string/jumbo v8, ", package="

    #@42
    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    .line 303
    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    goto :goto_0

    #@56
    .line 304
    :catch_0
    move-exception v1

    #@57
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@58
    .line 309
    .end local v0    # "controller":Landroid/media/session/ISessionController;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "session":Landroid/os/IBinder;
    .end local v4    # "session$iterator":Ljava/util/Iterator;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_1
    move-exception v2

    #@59
    .line 310
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5b
    const-string/jumbo v7, "***Error listing sessions***"

    #@5e
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private runMonitor()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/commands/media/Media;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 108
    .local v3, "id":Ljava/lang/String;
    if-nez v3, :cond_0

    #@6
    .line 109
    const-string/jumbo v9, "Error: must include a session id"

    #@9
    invoke-virtual {p0, v9}, Lcom/android/commands/media/Media;->showError(Ljava/lang/String;)V

    #@c
    .line 110
    return-void

    #@d
    .line 112
    :cond_0
    const/4 v8, 0x0

    #@e
    .line 114
    .local v8, "success":Z
    :try_start_0
    iget-object v9, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    #@10
    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@13
    move-result v10

    #@14
    const/4 v11, 0x0

    #@15
    .line 114
    invoke-interface {v9, v11, v10}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    #@18
    move-result-object v7

    #@19
    .line 116
    .local v7, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v6

    #@1d
    .local v6, "session$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_2

    #@23
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    check-cast v5, Landroid/os/IBinder;

    #@29
    .line 117
    .local v5, "session":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v0

    #@2d
    .line 119
    .local v0, "controller":Landroid/media/session/ISessionController;
    if-eqz v0, :cond_1

    #@2f
    :try_start_1
    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_1

    #@39
    .line 120
    new-instance v4, Lcom/android/commands/media/Media$ControllerMonitor;

    #@3b
    invoke-direct {v4, p0, v0}, Lcom/android/commands/media/Media$ControllerMonitor;-><init>(Lcom/android/commands/media/Media;Landroid/media/session/ISessionController;)V

    #@3e
    .line 121
    .local v4, "monitor":Lcom/android/commands/media/Media$ControllerMonitor;
    invoke-virtual {v4}, Lcom/android/commands/media/Media$ControllerMonitor;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    .line 122
    const/4 v8, 0x1

    #@42
    .line 132
    .end local v0    # "controller":Landroid/media/session/ISessionController;
    .end local v4    # "monitor":Lcom/android/commands/media/Media$ControllerMonitor;
    .end local v5    # "session":Landroid/os/IBinder;
    .end local v6    # "session$iterator":Ljava/util/Iterator;
    .end local v7    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_2
    :goto_1
    if-nez v8, :cond_3

    #@44
    .line 133
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v10, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v11, "No session found with id "

    #@4e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 106
    :cond_3
    return-void

    #@5e
    .line 129
    :catch_0
    move-exception v2

    #@5f
    .line 130
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@61
    new-instance v10, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v11, "***Error monitoring session*** "

    #@69
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7c
    goto :goto_1

    #@7d
    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "controller":Landroid/media/session/ISessionController;
    .restart local v5    # "session":Landroid/os/IBinder;
    .restart local v6    # "session$iterator":Ljava/util/Iterator;
    .restart local v7    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_1
    move-exception v1

    #@7e
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendMediaKey(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p1, v2}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 99
    :goto_0
    return-void

    #@7
    .line 102
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    const-string/jumbo v1, "media_session"

    #@3
    .line 77
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    #@d
    .line 79
    iget-object v1, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    const-string/jumbo v2, "Error type 2"

    #@16
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 81
    new-instance v1, Landroid/util/AndroidException;

    #@1b
    .line 82
    const-string/jumbo v2, "Can\'t connect to media session service; is the system running?"

    #@1e
    .line 81
    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/media/Media;->nextArgRequired()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 87
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "dispatch"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 88
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runDispatch()V

    #@32
    .line 76
    :goto_0
    return-void

    #@33
    .line 89
    :cond_1
    const-string/jumbo v1, "list-sessions"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 90
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runListSessions()V

    #@3f
    goto :goto_0

    #@40
    .line 91
    :cond_2
    const-string/jumbo v1, "monitor"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 92
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runMonitor()V

    #@4c
    goto :goto_0

    #@4d
    .line 94
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "Error: unknown command \'"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    const-string/jumbo v2, "\'"

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {p0, v1}, Lcom/android/commands/media/Media;->showError(Ljava/lang/String;)V

    #@6b
    .line 95
    return-void
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "usage: media [subcommand] [options]\n       media dispatch KEY\n       media list-sessions\n       media monitor <tag>\n\nmedia dispatch: dispatch a media key to the system.\n                KEY may be: play, pause, play-pause, mute, headsethook,\n                stop, next, previous, rewind, record, fast-forword.\nmedia list-sessions: print a list of the current sessions.\nmedia monitor: monitor updates to the specified session.\n                       Use the tag from list-sessions.\n"

    #@3
    .line 61
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 60
    return-void
.end method
