.class public Lcom/android/server/job/JobSchedulerShellCommand;
.super Landroid/os/ShellCommand;
.source "JobSchedulerShellCommand.java"


# static fields
.field public static final CMD_ERR_CONSTRAINTS:I = -0x3ea

.field public static final CMD_ERR_NO_JOB:I = -0x3e9

.field public static final CMD_ERR_NO_PACKAGE:I = -0x3e8


# instance fields
.field mInternal:Lcom/android/server/job/JobSchedulerService;

.field mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    #@5
    .line 39
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    #@b
    .line 37
    return-void
.end method

.method private runJob()I
    .locals 13

    #@0
    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v8

    #@4
    .line 60
    .local v8, "uid":I
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    #@6
    .line 61
    const-string/jumbo v11, "android.permission.CHANGE_APP_IDLE_STATE"

    #@9
    .line 60
    invoke-interface {v10, v11, v8}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    #@c
    move-result v4

    #@d
    .line 62
    .local v4, "perm":I
    if-eqz v4, :cond_0

    #@f
    .line 63
    new-instance v10, Ljava/lang/SecurityException;

    #@11
    new-instance v11, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v12, "Uid "

    #@19
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v11

    #@1d
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    .line 64
    const-string/jumbo v12, " not permitted to force scheduled jobs"

    #@24
    .line 63
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v11

    #@28
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v11

    #@2c
    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 66
    .end local v4    # "perm":I
    .end local v8    # "uid":I
    :catch_0
    move-exception v0

    #@31
    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@34
    move-result-object v6

    #@35
    .line 71
    .local v6, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    #@36
    .line 72
    .local v1, "force":Z
    const/4 v9, 0x0

    #@37
    .line 75
    .local v9, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_5

    #@3d
    .line 76
    const-string/jumbo v10, "-f"

    #@40
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v10

    #@44
    if-eqz v10, :cond_2

    #@46
    .line 79
    :cond_1
    const/4 v1, 0x1

    #@47
    .line 80
    goto :goto_0

    #@48
    .line 76
    :cond_2
    const-string/jumbo v10, "--force"

    #@4b
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v10

    #@4f
    if-nez v10, :cond_1

    #@51
    const-string/jumbo v10, "-u"

    #@54
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_4

    #@5a
    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@61
    move-result v9

    #@62
    goto :goto_0

    #@63
    .line 76
    :cond_4
    const-string/jumbo v10, "--user"

    #@66
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v10

    #@6a
    if-nez v10, :cond_3

    #@6c
    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v11, "Error: unknown option \'"

    #@74
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    const-string/jumbo v11, "\'"

    #@7f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 89
    const/4 v10, -0x1

    #@8b
    return v10

    #@8c
    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    .line 94
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@93
    move-result-object v10

    #@94
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@97
    move-result v2

    #@98
    .line 96
    .local v2, "jobId":I
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    #@9a
    invoke-virtual {v10, v5, v9, v2, v1}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(Ljava/lang/String;IIZ)I

    #@9d
    move-result v7

    #@9e
    .line 97
    .local v7, "ret":I
    packed-switch v7, :pswitch_data_0

    #@a1
    .line 126
    const-string/jumbo v10, "Running job"

    #@a4
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    .line 127
    if-eqz v1, :cond_6

    #@a9
    .line 128
    const-string/jumbo v10, " [FORCED]"

    #@ac
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 130
    :cond_6
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    #@b2
    .line 133
    :goto_1
    return v7

    #@b3
    .line 99
    :pswitch_0
    const-string/jumbo v10, "Package not found: "

    #@b6
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b9
    .line 100
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    .line 101
    const-string/jumbo v10, " / user "

    #@bf
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    .line 102
    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(I)V

    #@c5
    goto :goto_1

    #@c6
    .line 106
    :pswitch_1
    const-string/jumbo v10, "Could not find job "

    #@c9
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    .line 107
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(I)V

    #@cf
    .line 108
    const-string/jumbo v10, " in package "

    #@d2
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 109
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 110
    const-string/jumbo v10, " / user "

    #@db
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    .line 111
    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(I)V

    #@e1
    goto :goto_1

    #@e2
    .line 115
    :pswitch_2
    const-string/jumbo v10, "Job "

    #@e5
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e8
    .line 116
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(I)V

    #@eb
    .line 117
    const-string/jumbo v10, " in package "

    #@ee
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    .line 118
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 119
    const-string/jumbo v10, " / user "

    #@f7
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    .line 120
    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(I)V

    #@fd
    .line 121
    const-string/jumbo v10, " has functional constraints but --force not specified"

    #@100
    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    goto :goto_1

    #@104
    .line 97
    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v1

    #@4
    .line 46
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "run"

    #@7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 47
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob()I

    #@10
    move-result v2

    #@11
    return v2

    #@12
    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 51
    :catch_0
    move-exception v0

    #@18
    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Exception: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 54
    const/4 v2, -0x1

    #@30
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 140
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Job scheduler (jobscheduler) commands:"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 141
    const-string/jumbo v1, "  help"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 142
    const-string/jumbo v1, "    Print this help text."

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 143
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@19
    .line 144
    const-string/jumbo v1, "  run [-f | --force] [-u | --user USER_ID] PACKAGE JOB_ID"

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 145
    const-string/jumbo v1, "    Trigger immediate execution of a specific scheduled job."

    #@22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 146
    const-string/jumbo v1, "    Options:"

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 147
    const-string/jumbo v1, "      -f or --force: run the job even if technical constraints such as"

    #@2e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 148
    const-string/jumbo v1, "         connectivity are not currently met"

    #@34
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 149
    const-string/jumbo v1, "      -u or --user: specify which user\'s job is to be run; the default is"

    #@3a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 150
    const-string/jumbo v1, "         the primary or system user"

    #@40
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 151
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@46
    .line 137
    return-void
.end method
