.class Lgov/nist/javax/sip/stack/MessageLog;
.super Ljava/lang/Object;
.source "MessageLog.java"

# interfaces
.implements Lgov/nist/javax/sip/LogRecord;


# instance fields
.field private callId:Ljava/lang/String;

.field private destination:Ljava/lang/String;

.field private firstLine:Ljava/lang/String;

.field private isSender:Z

.field private message:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private timeStamp:J

.field private timeStampHeaderValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p6, "isSender"    # Z
    .param p7, "firstLine"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "callId"    # Ljava/lang/String;
    .param p10, "timestampVal"    # J

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, ""

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "null msg"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 127
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    #@19
    .line 128
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    #@1b
    .line 129
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    #@1d
    .line 130
    const-wide/16 v0, 0x0

    #@1f
    cmp-long v0, p4, v0

    #@21
    if-gez v0, :cond_2

    #@23
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "negative ts"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 132
    :cond_2
    iput-wide p4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    #@2e
    .line 133
    iput-boolean p6, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    #@30
    .line 134
    iput-object p7, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    #@32
    .line 135
    iput-object p8, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    #@34
    .line 136
    iput-object p9, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    #@36
    .line 137
    iput-wide p10, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    #@38
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;
    .param p5, "isSender"    # Z
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "tid"    # Ljava/lang/String;
    .param p8, "callId"    # Ljava/lang/String;
    .param p9, "timeStampHeaderValue"    # J

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v3, ""

    #@8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 93
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v6, "null msg"

    #@13
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 94
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    #@19
    .line 95
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    #@1b
    .line 96
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    #@1d
    .line 98
    :try_start_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@20
    move-result-wide v4

    #@21
    .line 99
    .local v4, "ts":J
    const-wide/16 v6, 0x0

    #@23
    cmp-long v3, v4, v6

    #@25
    if-gez v3, :cond_2

    #@27
    .line 100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v6, "Bad time stamp "

    #@2c
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 102
    .end local v4    # "ts":J
    :catch_0
    move-exception v2

    #@31
    .line 103
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@33
    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Bad number format "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    .line 103
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 101
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "ts":J
    :cond_2
    :try_start_1
    iput-wide v4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@4d
    .line 106
    iput-boolean p5, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    #@4f
    .line 107
    iput-object p6, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    #@51
    .line 108
    move-object/from16 v0, p7

    #@53
    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    #@55
    .line 109
    move-object/from16 v0, p8

    #@57
    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    #@59
    .line 110
    move-wide/from16 v0, p9

    #@5b
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    #@5d
    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    instance-of v2, p1, Lgov/nist/javax/sip/stack/MessageLog;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 70
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 72
    check-cast v0, Lgov/nist/javax/sip/stack/MessageLog;

    #@9
    .line 73
    .local v0, "otherLog":Lgov/nist/javax/sip/stack/MessageLog;
    iget-object v2, v0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    #@b
    iget-object v3, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 74
    iget-wide v2, v0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    #@15
    iget-wide v4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    #@17
    cmp-long v2, v2, v4

    #@19
    if-nez v2, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 73
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "<message\nfrom=\""

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 151
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    #@e
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 152
    const-string/jumbo v2, "\" \nto=\""

    #@15
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 153
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    #@1b
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 154
    const-string/jumbo v2, "\" \ntime=\""

    #@22
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 155
    iget-wide v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    #@28
    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 156
    const-string/jumbo v2, "\""

    #@2f
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 157
    iget-wide v4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    #@35
    const-wide/16 v6, 0x0

    #@37
    cmp-long v1, v4, v6

    #@39
    if-eqz v1, :cond_0

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "\ntimeStamp = \""

    #@43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-wide v4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    #@49
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    const-string/jumbo v3, "\""

    #@50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 150
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 158
    const-string/jumbo v2, "\nisSender=\""

    #@5f
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 159
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    #@65
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    .line 160
    const-string/jumbo v2, "\" \ntransactionId=\""

    #@6c
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 161
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    #@72
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 162
    const-string/jumbo v2, "\" \ncallId=\""

    #@79
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    .line 163
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    #@7f
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    .line 164
    const-string/jumbo v2, "\" \nfirstLine=\""

    #@86
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    .line 165
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    #@8c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    .line 165
    const-string/jumbo v2, "\""

    #@97
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    .line 166
    const-string/jumbo v2, " \n>\n"

    #@9e
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    .line 167
    .local v0, "log":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    const-string/jumbo v2, "<![CDATA["

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v0

    #@ba
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    #@c5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    const-string/jumbo v2, "]]>\n"

    #@d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v1

    #@dd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v0

    #@e1
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    const-string/jumbo v2, "</message>\n"

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v0

    #@f5
    .line 172
    return-object v0

    #@f6
    .line 157
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    #@f9
    goto/16 :goto_0
.end method
