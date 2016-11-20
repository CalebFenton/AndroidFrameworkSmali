.class Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# instance fields
.field final mDumping:Z

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "dumping"    # Z

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    #@5
    .line 39
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@7
    .line 40
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    #@9
    .line 37
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;Z)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "dumping"    # Z

    #@0
    .prologue
    .line 193
    if-eqz p1, :cond_0

    #@2
    .line 194
    const-string/jumbo v0, "Activity manager dump options:"

    #@5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 195
    const-string/jumbo v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    #@b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 196
    const-string/jumbo v0, "  WHAT may be one of:"

    #@11
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 197
    const-string/jumbo v0, "    a[ctivities]: activity stack state"

    #@17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 198
    const-string/jumbo v0, "    r[recents]: recent activities state"

    #@1d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 199
    const-string/jumbo v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    #@23
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 200
    const-string/jumbo v0, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    #@29
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 201
    const-string/jumbo v0, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    #@2f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 202
    const-string/jumbo v0, "    p[rocesses] [PACKAGE_NAME]: process state"

    #@35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 203
    const-string/jumbo v0, "    o[om]: out of memory management"

    #@3b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 204
    const-string/jumbo v0, "    perm[issions]: URI permission grant state"

    #@41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 205
    const-string/jumbo v0, "    prov[iders] [COMP_SPEC ...]: content provider state"

    #@47
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 206
    const-string/jumbo v0, "    provider [COMP_SPEC]: provider client-side state"

    #@4d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 207
    const-string/jumbo v0, "    s[ervices] [COMP_SPEC ...]: service state"

    #@53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56
    .line 208
    const-string/jumbo v0, "    as[sociations]: tracked app associations"

    #@59
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    .line 209
    const-string/jumbo v0, "    service [COMP_SPEC]: service client-side state"

    #@5f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 210
    const-string/jumbo v0, "    package [PACKAGE_NAME]: all state related to given package"

    #@65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68
    .line 211
    const-string/jumbo v0, "    all: dump all activities"

    #@6b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    .line 212
    const-string/jumbo v0, "    top: dump the top activity"

    #@71
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 213
    const-string/jumbo v0, "  WHAT may also be a COMP_SPEC to dump activities."

    #@77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7a
    .line 214
    const-string/jumbo v0, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    #@7d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 215
    const-string/jumbo v0, "    a partial substring in a component name, a"

    #@83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 216
    const-string/jumbo v0, "    hex object identifier."

    #@89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 217
    const-string/jumbo v0, "  -a: include all available server state."

    #@8f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 218
    const-string/jumbo v0, "  -c: include client state."

    #@95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 219
    const-string/jumbo v0, "  -p: limit output to given package."

    #@9b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9e
    .line 220
    const-string/jumbo v0, "  --checkin: output checkin format, resetting data."

    #@a1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a4
    .line 221
    const-string/jumbo v0, "  --C: output checkin format, not resetting data."

    #@a7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@aa
    .line 192
    :goto_0
    return-void

    #@ab
    .line 223
    :cond_0
    const-string/jumbo v0, "Activity manager (activity) commands:"

    #@ae
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b1
    .line 224
    const-string/jumbo v0, "  help"

    #@b4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b7
    .line 225
    const-string/jumbo v0, "    Print this help text."

    #@ba
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 226
    const-string/jumbo v0, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    #@c0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c3
    .line 227
    const-string/jumbo v0, "    Completely stop the given application package."

    #@c6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c9
    .line 228
    const-string/jumbo v0, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    #@cc
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 229
    const-string/jumbo v0, "    Kill all processes associated with the given application."

    #@d2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d5
    .line 230
    const-string/jumbo v0, "  kill-all"

    #@d8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@db
    .line 231
    const-string/jumbo v0, "    Kill all processes that are safe to kill (cached, etc)."

    #@de
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 232
    const-string/jumbo v0, "  write"

    #@e4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e7
    .line 233
    const-string/jumbo v0, "    Write all pending state to storage."

    #@ea
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ed
    .line 234
    const-string/jumbo v0, "  track-associations"

    #@f0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f3
    .line 235
    const-string/jumbo v0, "    Enable association tracking."

    #@f6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 236
    const-string/jumbo v0, "  untrack-associations"

    #@fc
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 237
    const-string/jumbo v0, "    Disable and clear association tracking."

    #@102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@105
    .line 238
    const-string/jumbo v0, "  is-user-stopped <USER_ID>"

    #@108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 239
    const-string/jumbo v0, "    Returns whether <USER_ID> has been stopped or not."

    #@10e
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@111
    .line 240
    const-string/jumbo v0, "  lenient-background-check [<true|false>]"

    #@114
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@117
    .line 241
    const-string/jumbo v0, "    Optionally controls lenient background check mode, returns current mode."

    #@11a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11d
    .line 242
    const-string/jumbo v0, "  get-uid-state <UID>"

    #@120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@123
    .line 243
    const-string/jumbo v0, "    Gets the process state of an app given its <UID>."

    #@126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    goto :goto_0
.end method


# virtual methods
.method getUidState(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 176
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@3
    const-string/jumbo v2, "android.permission.DUMP"

    #@6
    .line 177
    const-string/jumbo v3, "getUidState()"

    #@9
    .line 176
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 178
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    #@19
    move-result v0

    #@1a
    .line 179
    .local v0, "state":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1d
    .line 180
    const-string/jumbo v1, " ("

    #@20
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 181
    const-class v1, Landroid/app/ActivityManager;

    #@25
    const-string/jumbo v2, "PROCESS_STATE_"

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    new-array v2, v4, [Ljava/lang/Object;

    #@2e
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@31
    .line 182
    const-string/jumbo v1, ")"

    #@34
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 183
    return v4
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    if-nez p1, :cond_0

    #@2
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 50
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "force-stop"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 50
    :cond_1
    const-string/jumbo v2, "kill"

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 54
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    #@25
    move-result v2

    #@26
    return v2

    #@27
    .line 50
    :cond_2
    const-string/jumbo v2, "kill-all"

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 56
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    #@33
    move-result v2

    #@34
    return v2

    #@35
    .line 50
    :cond_3
    const-string/jumbo v2, "write"

    #@38
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 58
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    #@41
    move-result v2

    #@42
    return v2

    #@43
    .line 50
    :cond_4
    const-string/jumbo v2, "track-associations"

    #@46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_5

    #@4c
    .line 60
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    #@4f
    move-result v2

    #@50
    return v2

    #@51
    .line 50
    :cond_5
    const-string/jumbo v2, "untrack-associations"

    #@54
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_6

    #@5a
    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    #@5d
    move-result v2

    #@5e
    return v2

    #@5f
    .line 50
    :cond_6
    const-string/jumbo v2, "is-user-stopped"

    #@62
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_7

    #@68
    .line 64
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    #@6b
    move-result v2

    #@6c
    return v2

    #@6d
    .line 50
    :cond_7
    const-string/jumbo v2, "lenient-background-check"

    #@70
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v2

    #@74
    if-eqz v2, :cond_8

    #@76
    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->runLenientBackgroundCheck(Ljava/io/PrintWriter;)I

    #@79
    move-result v2

    #@7a
    return v2

    #@7b
    .line 50
    :cond_8
    const-string/jumbo v2, "get-uid-state"

    #@7e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v2

    #@82
    if-eqz v2, :cond_9

    #@84
    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    #@87
    move-result v2

    #@88
    return v2

    #@89
    .line 70
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    move-result v2

    #@8d
    return v2

    #@8e
    .line 72
    :catch_0
    move-exception v0

    #@8f
    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v3, "Remote exception: "

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6
    .line 75
    const/4 v2, -0x1

    #@a7
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 189
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    #@6
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    #@9
    .line 187
    return-void
.end method

.method runForceStop(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    const/4 v1, -0x1

    #@1
    .line 89
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 90
    const-string/jumbo v2, "--user"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 91
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    goto :goto_0

    #@19
    .line 93
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Error: Unknown option: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 94
    const/4 v2, -0x1

    #@31
    return v2

    #@32
    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    #@34
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    #@3b
    .line 98
    const/4 v2, 0x0

    #@3c
    return v2
.end method

.method runIsUserStopped(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 80
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@a
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    #@d
    move-result v0

    #@e
    .line 81
    .local v0, "stopped":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@11
    .line 82
    const/4 v2, 0x0

    #@12
    return v2
.end method

.method runKill(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    const/4 v1, -0x1

    #@1
    .line 105
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 106
    const-string/jumbo v2, "--user"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 107
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    goto :goto_0

    #@19
    .line 109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Error: Unknown option: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 110
    const/4 v2, -0x1

    #@31
    return v2

    #@32
    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    #@34
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    #@3b
    .line 114
    const/4 v2, 0x0

    #@3c
    return v2
.end method

.method runKillAll(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    #@5
    .line 119
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method runLenientBackgroundCheck(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 161
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    const-string/jumbo v2, "1"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    .line 163
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    #@19
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setLenientBackgroundCheck(Z)V

    #@1c
    .line 165
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@1e
    monitor-enter v3

    #@1f
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@22
    .line 166
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@24
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mLenientBackgroundCheck:Z

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 167
    const-string/jumbo v2, "Lenient background check enabled"

    #@2b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :goto_1
    monitor-exit v3

    #@2f
    .line 165
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@32
    .line 172
    const/4 v2, 0x0

    #@33
    return v2

    #@34
    .line 162
    :cond_1
    const/4 v1, 0x1

    #@35
    .local v1, "state":Z
    goto :goto_0

    #@36
    .line 169
    .end local v1    # "state":Z
    :cond_2
    :try_start_1
    const-string/jumbo v2, "Lenient background check disabled"

    #@39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_1

    #@3d
    .line 165
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@42
    throw v2
.end method

.method runTrackAssociations(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    #@5
    .line 132
    const-string/jumbo v2, "registerUidObserver()"

    #@8
    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 133
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@d
    monitor-enter v1

    #@e
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@11
    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    #@15
    if-nez v0, :cond_0

    #@17
    .line 135
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@19
    const/4 v2, 0x1

    #@1a
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    #@1c
    .line 136
    const-string/jumbo v0, "Association tracking started."

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :goto_0
    monitor-exit v1

    #@23
    .line 133
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@26
    .line 141
    const/4 v0, 0x0

    #@27
    return v0

    #@28
    .line 138
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Association tracking already enabled."

    #@2b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 133
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@34
    throw v0
.end method

.method runUntrackAssociations(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 145
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@3
    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    #@6
    .line 146
    const-string/jumbo v2, "registerUidObserver()"

    #@9
    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 147
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@e
    monitor-enter v1

    #@f
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@12
    .line 148
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 149
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@1a
    const/4 v2, 0x0

    #@1b
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    #@1d
    .line 150
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@24
    .line 151
    const-string/jumbo v0, "Association tracking stopped."

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :goto_0
    monitor-exit v1

    #@2b
    .line 147
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2e
    .line 156
    return v3

    #@2f
    .line 153
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Association tracking not running."

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 147
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3b
    throw v0
.end method

.method runWrite(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    #@5
    .line 124
    const-string/jumbo v2, "registerUidObserver()"

    #@8
    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 125
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@f
    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->flush()V

    #@12
    .line 126
    const-string/jumbo v0, "All tasks persisted."

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 127
    const/4 v0, 0x0

    #@19
    return v0
.end method
