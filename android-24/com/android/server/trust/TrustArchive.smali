.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustArchive$Event;
    }
.end annotation


# static fields
.field private static final HISTORY_LIMIT:I = 0xc8

.field private static final TYPE_AGENT_CONNECTED:I = 0x4

.field private static final TYPE_AGENT_DIED:I = 0x3

.field private static final TYPE_AGENT_STOPPED:I = 0x5

.field private static final TYPE_GRANT_TRUST:I = 0x0

.field private static final TYPE_MANAGING_TRUST:I = 0x6

.field private static final TYPE_REVOKE_TRUST:I = 0x1

.field private static final TYPE_TRUST_TIMEOUT:I = 0x2


# instance fields
.field mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/trust/TrustArchive$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    #@a
    .line 32
    return-void
.end method

.method private addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .locals 2
    .param p1, "e"    # Lcom/android/server/trust/TrustArchive$Event;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xc8

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 104
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@f
    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@14
    .line 102
    return-void
.end method

.method private dumpGrantFlags(I)Ljava/lang/String;
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    const/16 v2, 0x7c

    #@2
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 193
    :cond_0
    const-string/jumbo v1, "INITIATED_BY_USER"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 195
    :cond_1
    and-int/lit8 v1, p1, 0x2

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 197
    :cond_2
    const-string/jumbo v1, "DISMISS_KEYGUARD"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 199
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_4

    #@33
    .line 200
    const/16 v1, 0x30

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method private dumpType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    #@3
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ")"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 171
    :pswitch_0
    const-string/jumbo v0, "GrantTrust"

    #@22
    return-object v0

    #@23
    .line 173
    :pswitch_1
    const-string/jumbo v0, "RevokeTrust"

    #@26
    return-object v0

    #@27
    .line 175
    :pswitch_2
    const-string/jumbo v0, "TrustTimeout"

    #@2a
    return-object v0

    #@2b
    .line 177
    :pswitch_3
    const-string/jumbo v0, "AgentDied"

    #@2e
    return-object v0

    #@2f
    .line 179
    :pswitch_4
    const-string/jumbo v0, "AgentConnected"

    #@32
    return-object v0

    #@33
    .line 181
    :pswitch_5
    const-string/jumbo v0, "AgentStopped"

    #@36
    return-object v0

    #@37
    .line 183
    :pswitch_6
    const-string/jumbo v0, "ManagingTrust"

    #@3a
    return-object v0

    #@3b
    .line 169
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "duration"    # J

    #@0
    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@8
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static formatElapsed(J)Ljava/lang/String;
    .locals 6
    .param p0, "elapsed"    # J

    #@0
    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    sub-long v0, p0, v4

    #@6
    .line 154
    .local v0, "delta":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v4

    #@a
    add-long v2, v0, v4

    #@c
    .line 155
    .local v2, "wallTime":J
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    return-object v4
.end method

.method static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p0, "cn"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 160
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v0

    #@a
    .line 161
    .local v0, "idx":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    if-ge v0, v2, :cond_0

    #@10
    if-ltz v0, :cond_0

    #@12
    .line 162
    add-int/lit8 v2, v0, 0x1

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 164
    :cond_0
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "limit"    # I
    .param p3, "userId"    # I
    .param p4, "linePrefix"    # Ljava/lang/String;
    .param p5, "duplicateSimpleNames"    # Z

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    .line 112
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .line 113
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/trust/TrustArchive$Event;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_4

    #@d
    if-ge v0, p2, :cond_4

    #@f
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/trust/TrustArchive$Event;

    #@15
    .line 115
    .local v1, "ev":Lcom/android/server/trust/TrustArchive$Event;
    const/4 v3, -0x1

    #@16
    if-eq p3, v3, :cond_1

    #@18
    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    #@1a
    if-ne p3, v3, :cond_0

    #@1c
    .line 119
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    .line 120
    const-string/jumbo v3, "#%-2d %s %s: "

    #@22
    const/4 v4, 0x3

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v5

    #@29
    const/4 v6, 0x0

    #@2a
    aput-object v5, v4, v6

    #@2c
    iget-wide v6, v1, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    #@2e
    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    const/4 v6, 0x1

    #@33
    aput-object v5, v4, v6

    #@35
    .line 121
    iget v5, v1, Lcom/android/server/trust/TrustArchive$Event;->type:I

    #@37
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    const/4 v6, 0x2

    #@3c
    aput-object v5, v4, v6

    #@3e
    .line 120
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@41
    .line 122
    const/4 v3, -0x1

    #@42
    if-ne p3, v3, :cond_2

    #@44
    .line 123
    const-string/jumbo v3, "user="

    #@47
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    #@4c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@4f
    const-string/jumbo v3, ", "

    #@52
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    .line 125
    :cond_2
    const-string/jumbo v3, "agent="

    #@58
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 126
    if-eqz p5, :cond_3

    #@5d
    .line 127
    iget-object v3, v1, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    #@5f
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 131
    :goto_1
    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->type:I

    #@68
    sparse-switch v3, :sswitch_data_0

    #@6b
    .line 141
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6e
    .line 142
    add-int/lit8 v0, v0, 0x1

    #@70
    goto :goto_0

    #@71
    .line 129
    :cond_3
    iget-object v3, v1, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    #@73
    invoke-static {v3}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    goto :goto_1

    #@7b
    .line 133
    :sswitch_0
    const-string/jumbo v3, ", message=\"%s\", duration=%s, flags=%s"

    #@7e
    const/4 v4, 0x3

    #@7f
    new-array v4, v4, [Ljava/lang/Object;

    #@81
    .line 134
    iget-object v5, v1, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    #@83
    const/4 v6, 0x0

    #@84
    aput-object v5, v4, v6

    #@86
    iget-wide v6, v1, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    #@88
    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    const/4 v6, 0x1

    #@8d
    aput-object v5, v4, v6

    #@8f
    iget v5, v1, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    #@91
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    const/4 v6, 0x2

    #@96
    aput-object v5, v4, v6

    #@98
    .line 133
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@9b
    goto :goto_2

    #@9c
    .line 137
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, ", managingTrust="

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    iget-boolean v4, v1, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    const/4 v4, 0x0

    #@b3
    new-array v4, v4, [Ljava/lang/Object;

    #@b5
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@b8
    goto :goto_2

    #@b9
    .line 110
    .end local v1    # "ev":Lcom/android/server/trust/TrustArchive$Event;
    :cond_4
    return-void

    #@ba
    .line 131
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 91
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v2, 0x4

    #@7
    move v3, p1

    #@8
    move-object v4, p2

    #@9
    move v9, v8

    #@a
    move-object v10, v5

    #@b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@11
    .line 90
    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 87
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v2, 0x3

    #@7
    move v3, p1

    #@8
    move-object v4, p2

    #@9
    move v9, v8

    #@a
    move-object v10, v5

    #@b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@11
    .line 86
    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 95
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v2, 0x5

    #@7
    move v3, p1

    #@8
    move-object v4, p2

    #@9
    move v9, v8

    #@a
    move-object v10, v5

    #@b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@11
    .line 94
    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 74
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@2
    const/4 v2, 0x0

    #@3
    .line 75
    const/4 v9, 0x0

    #@4
    .line 74
    const/4 v10, 0x0

    #@5
    move v3, p1

    #@6
    move-object v4, p2

    #@7
    move-object v5, p3

    #@8
    move-wide/from16 v6, p4

    #@a
    move/from16 v8, p6

    #@c
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@f
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@12
    .line 73
    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "managing"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 99
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@3
    const-wide/16 v6, 0x0

    #@5
    const/4 v2, 0x6

    #@6
    const/4 v8, 0x0

    #@7
    move v3, p1

    #@8
    move-object v4, p2

    #@9
    move v9, p3

    #@a
    move-object v10, v5

    #@b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@11
    .line 98
    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 79
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v2, 0x1

    #@7
    move v3, p1

    #@8
    move-object v4, p2

    #@9
    move v9, v8

    #@a
    move-object v10, v5

    #@b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@11
    .line 78
    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 83
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v2, 0x2

    #@7
    move v3, p1

    #@8
    move-object v4, p2

    #@9
    move v9, v8

    #@a
    move-object v10, v5

    #@b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    #@11
    .line 82
    return-void
.end method
