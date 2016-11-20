.class public Lcom/android/commands/monkey/MonkeyActivityEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyActivityEvent.java"


# instance fields
.field mAlarmTime:J

.field private mApp:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 34
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 31
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    #@8
    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    #@a
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "arg"    # J

    #@0
    .prologue
    .line 39
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 31
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    #@8
    .line 40
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    #@a
    .line 41
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    #@c
    .line 38
    return-void
.end method

.method private getEvent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 50
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 51
    const/high16 v1, 0x10200000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 52
    return-object v0
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 14
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyActivityEvent;->getEvent()Landroid/content/Intent;

    #@3
    move-result-object v3

    #@4
    .line 58
    .local v3, "intent":Landroid/content/Intent;
    if-lez p3, :cond_0

    #@6
    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, ":Switch: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 62
    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    #@26
    const-wide/16 v4, 0x0

    #@28
    cmp-long v0, v0, v4

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 63
    new-instance v11, Landroid/os/Bundle;

    #@2e
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@31
    .line 64
    .local v11, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "alarmTime"

    #@34
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    #@36
    invoke-virtual {v11, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@39
    .line 65
    invoke-virtual {v3, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@3c
    .line 69
    .end local v11    # "args":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    #@3d
    const/4 v2, 0x0

    #@3e
    const/4 v4, 0x0

    #@3f
    const/4 v5, 0x0

    #@40
    const/4 v6, 0x0

    #@41
    const/4 v7, 0x0

    #@42
    .line 70
    const/4 v8, 0x0

    #@43
    const/4 v9, 0x0

    #@44
    const/4 v10, 0x0

    #@45
    move-object/from16 v0, p2

    #@47
    .line 69
    :try_start_0
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 81
    const/4 v0, 0x1

    #@4b
    return v0

    #@4c
    .line 74
    :catch_0
    move-exception v13

    #@4d
    .line 75
    .local v13, "e":Ljava/lang/SecurityException;
    if-lez p3, :cond_2

    #@4f
    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@51
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "** Permissions error starting activity "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 77
    const/4 v2, 0x0

    #@5e
    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6d
    .line 79
    :cond_2
    const/4 v0, -0x2

    #@6e
    return v0

    #@6f
    .line 71
    .end local v13    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v12

    #@70
    .line 72
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v1, "** Failed talking with activity manager!"

    #@75
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 73
    const/4 v0, -0x1

    #@79
    return v0
.end method
