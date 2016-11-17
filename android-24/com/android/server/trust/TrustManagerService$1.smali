.class Lcom/android/server/trust/TrustManagerService$1;
.super Landroid/app/trust/ITrustManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 0
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService$1;->dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    #@0
    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method private dumpBool(Z)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 828
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "1"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    const-string/jumbo v0, "0"

    #@9
    goto :goto_0
.end method

.method private dumpHex(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 11
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    #@0
    .prologue
    .line 781
    const-string/jumbo v0, " User \"%s\" (id=%d, flags=%#x)"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 782
    iget-object v2, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    iget v2, p2, Landroid/content/pm/UserInfo;->flags:I

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x2

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 781
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@20
    .line 783
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 784
    const-string/jumbo v0, "(managed profile)"

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 785
    const-string/jumbo v0, "   disabled because switching to this user is not possible."

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 786
    return-void

    #@33
    .line 788
    :cond_0
    if-eqz p3, :cond_1

    #@35
    .line 789
    const-string/jumbo v0, " (current)"

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 791
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, ": trusted="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@49
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@4b
    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap1(Lcom/android/server/trust/TrustManagerService;I)Z

    #@4e
    move-result v1

    #@4f
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v1, ", trustManaged="

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6c
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@6e
    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap0(Lcom/android/server/trust/TrustManagerService;I)Z

    #@71
    move-result v1

    #@72
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v1, ", deviceLocked="

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@8f
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@91
    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    #@94
    move-result v1

    #@95
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a4
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v1, ", strongAuthRequired="

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    .line 795
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@b2
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get6(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@b5
    move-result-object v1

    #@b6
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@b8
    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    #@bb
    move-result v1

    #@bc
    .line 794
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpHex(I)Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    .line 796
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ce
    .line 797
    const-string/jumbo v0, "   Enabled agents:"

    #@d1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 798
    const/4 v5, 0x0

    #@d5
    .line 799
    .local v5, "duplicateSimpleNames":Z
    new-instance v9, Landroid/util/ArraySet;

    #@d7
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@da
    .line 800
    .local v9, "simpleNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@dc
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get0(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    #@df
    move-result-object v0

    #@e0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e3
    move-result-object v7

    #@e4
    .local v7, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@e7
    move-result v0

    #@e8
    if-eqz v0, :cond_5

    #@ea
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ed
    move-result-object v6

    #@ee
    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@f0
    .line 801
    .local v6, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@f2
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    #@f4
    if-ne v0, v1, :cond_2

    #@f6
    .line 802
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@f8
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    #@fb
    move-result v10

    #@fc
    .line 803
    .local v10, "trusted":Z
    const-string/jumbo v0, "    "

    #@ff
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@104
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v1, "     bound="

    #@113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v0

    #@117
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@119
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    #@11c
    move-result v1

    #@11d
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v0

    #@125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v0

    #@129
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12c
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v1, ", connected="

    #@134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v0

    #@138
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@13a
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@13d
    move-result v1

    #@13e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@141
    move-result-object v1

    #@142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v0

    #@146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v0

    #@14a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v1, ", managingTrust="

    #@155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v0

    #@159
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@15b
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@15e
    move-result v1

    #@15f
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@162
    move-result-object v1

    #@163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v0

    #@167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v0

    #@16b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16e
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v1, ", trusted="

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v0

    #@17a
    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@17d
    move-result-object v1

    #@17e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v0

    #@182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v0

    #@186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@189
    .line 808
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@18c
    .line 809
    if-eqz v10, :cond_3

    #@18e
    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v1, "      message=\""

    #@196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v0

    #@19a
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@19c
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    #@19f
    move-result-object v1

    #@1a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v0

    #@1a4
    const-string/jumbo v1, "\""

    #@1a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v0

    #@1ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v0

    #@1af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b2
    .line 812
    :cond_3
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1b4
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@1b7
    move-result v0

    #@1b8
    if-nez v0, :cond_4

    #@1ba
    .line 814
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1bc
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    #@1bf
    move-result-wide v0

    #@1c0
    .line 815
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c3
    move-result-wide v2

    #@1c4
    .line 814
    sub-long/2addr v0, v2

    #@1c5
    .line 813
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    #@1c8
    move-result-object v8

    #@1c9
    .line 816
    .local v8, "restartTime":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    const-string/jumbo v1, "      restartScheduledAt="

    #@1d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v0

    #@1d5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v0

    #@1d9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v0

    #@1dd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    .line 818
    .end local v8    # "restartTime":Ljava/lang/String;
    :cond_4
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@1e2
    invoke-static {v0}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    #@1e5
    move-result-object v0

    #@1e6
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1e9
    move-result v0

    #@1ea
    if-nez v0, :cond_2

    #@1ec
    .line 819
    const/4 v5, 0x1

    #@1ed
    goto/16 :goto_0

    #@1ef
    .line 822
    .end local v6    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v10    # "trusted":Z
    :cond_5
    const-string/jumbo v0, "   Events:"

    #@1f2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f5
    .line 823
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@1f7
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@1f9
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    #@1fb
    const-string/jumbo v4, "    "

    #@1fe
    const/16 v2, 0x32

    #@200
    move-object v1, p1

    #@201
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    #@204
    .line 824
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@207
    .line 780
    return-void
.end method

.method private enforceListenerPermission()V
    .locals 3

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.TRUST_LISTENER"

    #@9
    .line 753
    const-string/jumbo v2, "register trust listener"

    #@c
    .line 752
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 751
    return-void
.end method

.method private enforceReportPermission()V
    .locals 3

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 748
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@9
    const-string/jumbo v2, "reporting trust events"

    #@c
    .line 747
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 746
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "android.permission.DUMP"

    #@9
    .line 759
    const-string/jumbo v3, "dumping TrustManagerService"

    #@c
    .line 758
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 760
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@11
    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 761
    const-string/jumbo v1, "disabled because the system is in safe mode."

    #@1a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 762
    return-void

    #@1e
    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get7(Lcom/android/server/trust/TrustManagerService;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_1

    #@26
    .line 765
    const-string/jumbo v1, "disabled because the third-party apps can\'t run yet."

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 766
    return-void

    #@2d
    .line 768
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2f
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get10(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    #@32
    move-result-object v1

    #@33
    const/4 v2, 0x1

    #@34
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@37
    move-result-object v0

    #@38
    .line 769
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@3a
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@3d
    move-result-object v1

    #@3e
    new-instance v2, Lcom/android/server/trust/TrustManagerService$1$1;

    #@40
    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V

    #@43
    .line 777
    const-wide/16 v4, 0x5dc

    #@45
    .line 769
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    #@48
    .line 757
    return-void
.end method

.method public isDeviceLocked(I)Z
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 716
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 717
    const-string/jumbo v5, "isDeviceLocked"

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x1

    #@d
    const/4 v6, 0x0

    #@e
    move v2, p1

    #@f
    .line 716
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v8

    #@17
    .line 721
    .local v8, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@19
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_0

    #@23
    .line 722
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@25
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap3(Lcom/android/server/trust/TrustManagerService;I)I

    #@28
    move-result p1

    #@29
    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2b
    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result v0

    #@2f
    .line 726
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 724
    return v0

    #@33
    .line 725
    :catchall_0
    move-exception v0

    #@34
    .line 726
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 725
    throw v0
.end method

.method public isDeviceSecure(I)Z
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 732
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 733
    const-string/jumbo v5, "isDeviceSecure"

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x1

    #@d
    const/4 v6, 0x0

    #@e
    move v2, p1

    #@f
    .line 732
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v8

    #@17
    .line 737
    .local v8, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@19
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_0

    #@23
    .line 738
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@25
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap3(Lcom/android/server/trust/TrustManagerService;I)I

    #@28
    move-result p1

    #@29
    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2b
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v0

    #@33
    .line 742
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 740
    return v0

    #@37
    .line 741
    :catchall_0
    move-exception v0

    #@38
    .line 742
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 741
    throw v0
.end method

.method public isTrustUsuallyManaged(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.TRUST_LISTENER"

    #@9
    .line 845
    const-string/jumbo v2, "query trust state"

    #@c
    .line 844
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 846
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@11
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap2(Lcom/android/server/trust/TrustManagerService;I)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    #@3
    .line 705
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 703
    return-void
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 688
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@4
    .line 690
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 691
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 687
    return-void
.end method

.method public reportKeyguardShowingChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 696
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@4
    .line 698
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 699
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 695
    return-void
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 3
    .param p1, "authenticated"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@3
    .line 682
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@8
    move-result-object v1

    #@9
    if-eqz p1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    const/4 v2, 0x3

    #@d
    invoke-virtual {v1, v2, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 680
    return-void

    #@15
    .line 682
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public setDeviceLockedForUser(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@3
    .line 838
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@8
    move-result-object v1

    #@9
    if-eqz p2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    const/16 v2, 0xa

    #@e
    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@15
    .line 836
    return-void

    #@16
    .line 838
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 710
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    #@3
    .line 711
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 709
    return-void
.end method
