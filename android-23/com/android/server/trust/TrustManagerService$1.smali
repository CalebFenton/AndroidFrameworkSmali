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
    .line 673
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
    .line 838
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

.method private dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 11
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    #@0
    .prologue
    .line 790
    const-string/jumbo v0, " User \"%s\" (id=%d, flags=%#x)"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 791
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
    .line 790
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@20
    .line 792
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 793
    const-string/jumbo v0, "(managed profile)"

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 794
    const-string/jumbo v0, "   disabled because switching to this user is not possible."

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 795
    return-void

    #@33
    .line 797
    :cond_0
    if-eqz p3, :cond_1

    #@35
    .line 798
    const-string/jumbo v0, " (current)"

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 800
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
    .line 801
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
    .line 802
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
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v1, ", hasAuthenticated="

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@b2
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@b4
    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap3(Lcom/android/server/trust/TrustManagerService;I)Z

    #@b7
    move-result v1

    #@b8
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v1, ", hasAuthenticatedSinceBoot="

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    .line 805
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@d5
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    #@d7
    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap2(Lcom/android/server/trust/TrustManagerService;I)Z

    #@da
    move-result v1

    #@db
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@de
    move-result-object v1

    #@df
    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    .line 806
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ed
    .line 807
    const-string/jumbo v0, "   Enabled agents:"

    #@f0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f3
    .line 808
    const/4 v5, 0x0

    #@f4
    .line 809
    .local v5, "duplicateSimpleNames":Z
    new-instance v9, Landroid/util/ArraySet;

    #@f6
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@f9
    .line 810
    .local v9, "simpleNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@fb
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get0(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    #@fe
    move-result-object v0

    #@ff
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@102
    move-result-object v7

    #@103
    .local v7, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@106
    move-result v0

    #@107
    if-eqz v0, :cond_5

    #@109
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10c
    move-result-object v6

    #@10d
    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@10f
    .line 811
    .local v6, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@111
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    #@113
    if-ne v0, v1, :cond_2

    #@115
    .line 812
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@117
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    #@11a
    move-result v10

    #@11b
    .line 813
    .local v10, "trusted":Z
    const-string/jumbo v0, "    "

    #@11e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@123
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@126
    move-result-object v0

    #@127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v1, "     bound="

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@138
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    #@13b
    move-result v1

    #@13c
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v0

    #@144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v0

    #@148
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14b
    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v1, ", connected="

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v0

    #@157
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@159
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@15c
    move-result v1

    #@15d
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@160
    move-result-object v1

    #@161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v0

    #@165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v0

    #@169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v1, ", managingTrust="

    #@174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v0

    #@178
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@17a
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@17d
    move-result v1

    #@17e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@181
    move-result-object v1

    #@182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v0

    #@186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v0

    #@18a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    const-string/jumbo v1, ", trusted="

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v0

    #@199
    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    #@19c
    move-result-object v1

    #@19d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v0

    #@1a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v0

    #@1a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    .line 818
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1ab
    .line 819
    if-eqz v10, :cond_3

    #@1ad
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v1, "      message=\""

    #@1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v0

    #@1b9
    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1bb
    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    #@1be
    move-result-object v1

    #@1bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v0

    #@1c3
    const-string/jumbo v1, "\""

    #@1c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v0

    #@1ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v0

    #@1ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d1
    .line 822
    :cond_3
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1d3
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@1d6
    move-result v0

    #@1d7
    if-nez v0, :cond_4

    #@1d9
    .line 824
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1db
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    #@1de
    move-result-wide v0

    #@1df
    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e2
    move-result-wide v2

    #@1e3
    .line 824
    sub-long/2addr v0, v2

    #@1e4
    .line 823
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    #@1e7
    move-result-object v8

    #@1e8
    .line 826
    .local v8, "restartTime":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v1, "      restartScheduledAt="

    #@1f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v0

    #@1f4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v0

    #@1f8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v0

    #@1fc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ff
    .line 828
    .end local v8    # "restartTime":Ljava/lang/String;
    :cond_4
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@201
    invoke-static {v0}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    #@204
    move-result-object v0

    #@205
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@208
    move-result v0

    #@209
    if-nez v0, :cond_2

    #@20b
    .line 829
    const/4 v5, 0x1

    #@20c
    goto/16 :goto_0

    #@20e
    .line 832
    .end local v6    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v10    # "trusted":Z
    :cond_5
    const-string/jumbo v0, "   Events:"

    #@211
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@214
    .line 833
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@216
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@218
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    #@21a
    const-string/jumbo v4, "    "

    #@21d
    const/16 v2, 0x32

    #@21f
    move-object v1, p1

    #@220
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    #@223
    .line 834
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@226
    .line 789
    return-void
.end method

.method private enforceListenerPermission()V
    .locals 3

    #@0
    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.TRUST_LISTENER"

    #@9
    .line 762
    const-string/jumbo v2, "register trust listener"

    #@c
    .line 761
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 760
    return-void
.end method

.method private enforceReportPermission()V
    .locals 3

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 757
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@9
    const-string/jumbo v2, "reporting trust events"

    #@c
    .line 756
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 755
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
    .line 767
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "android.permission.DUMP"

    #@9
    .line 768
    const-string/jumbo v3, "dumping TrustManagerService"

    #@c
    .line 767
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 769
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@11
    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 770
    const-string/jumbo v1, "disabled because the system is in safe mode."

    #@1a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 771
    return-void

    #@1e
    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get6(Lcom/android/server/trust/TrustManagerService;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_1

    #@26
    .line 774
    const-string/jumbo v1, "disabled because the third-party apps can\'t run yet."

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 775
    return-void

    #@2d
    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2f
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get9(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    #@32
    move-result-object v1

    #@33
    const/4 v2, 0x1

    #@34
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@37
    move-result-object v0

    #@38
    .line 778
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
    .line 786
    const-wide/16 v4, 0x5dc

    #@45
    .line 778
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    #@48
    .line 766
    return-void
.end method

.method public hasUserAuthenticatedSinceBoot(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 745
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 746
    const-string/jumbo v3, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@9
    const/4 v4, 0x0

    #@a
    .line 745
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 749
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@13
    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap2(Lcom/android/server/trust/TrustManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v2

    #@17
    .line 751
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 749
    return v2

    #@1b
    .line 750
    :catchall_0
    move-exception v2

    #@1c
    .line 751
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 750
    throw v2
.end method

.method public isDeviceLocked(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 722
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 723
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
    .line 722
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 724
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@15
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;I)I

    #@18
    move-result p1

    #@19
    .line 726
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@1b
    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    #@1e
    move-result v0

    #@1f
    return v0
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
    .line 731
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 732
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
    .line 731
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 733
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@15
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;I)I

    #@18
    move-result p1

    #@19
    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v8

    #@1d
    .line 737
    .local v8, "token":J
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@1f
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@21
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@28
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v0

    #@2c
    .line 739
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 737
    return v0

    #@30
    .line 738
    :catchall_0
    move-exception v0

    #@31
    .line 739
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 738
    throw v0
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
    const/4 v1, 0x1

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
    .line 683
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@4
    .line 685
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 686
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 682
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
    .line 702
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@4
    .line 704
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 705
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 701
    return-void
.end method

.method public reportRequireCredentialEntry(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 691
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@4
    .line 692
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_0

    #@7
    if-ltz p1, :cond_1

    #@9
    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@b
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 690
    return-void

    #@18
    .line 695
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 696
    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    #@1d
    .line 695
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
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
    .line 676
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    #@3
    .line 677
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
    .line 675
    return-void

    #@15
    .line 677
    :cond_0
    const/4 v0, 0x0

    #@16
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
    .line 716
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    #@3
    .line 717
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
    .line 715
    return-void
.end method
