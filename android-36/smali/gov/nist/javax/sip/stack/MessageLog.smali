.class Lgov/nist/javax/sip/stack/MessageLog;
.super Ljava/lang/Object;
.source "MessageLog.java"

# interfaces
.implements Lgov/nist/javax/sip/LogRecord;


# instance fields
.field private greylist callId:Ljava/lang/String;

.field private greylist destination:Ljava/lang/String;

.field private greylist firstLine:Ljava/lang/String;

.field private greylist isSender:Z

.field private greylist message:Ljava/lang/String;

.field private greylist source:Ljava/lang/String;

.field private greylist tid:Ljava/lang/String;

.field private greylist timeStamp:J

.field private greylist timeStampHeaderValue:J


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p6, "isSender"    # Z
    .param p7, "firstLine"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "callId"    # Ljava/lang/String;
    .param p10, "timestampVal"    # J

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-eqz p1, :cond_2e

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 127
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    .line 130
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_26

    .line 132
    iput-wide p4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    .line 133
    iput-boolean p6, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    .line 134
    iput-object p7, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    .line 135
    iput-object p8, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    .line 136
    iput-object p9, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    .line 137
    iput-wide p10, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    .line 138
    return-void

    .line 131
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative ts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null msg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;
    .param p5, "isSender"    # Z
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "tid"    # Ljava/lang/String;
    .param p8, "callId"    # Ljava/lang/String;
    .param p9, "timeStampHeaderValue"    # J

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_4d

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 94
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    .line 98
    :try_start_13
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    .local v0, "ts":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2b

    .line 101
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1f} :catch_33

    .line 105
    .end local v0    # "ts":J
    nop

    .line 106
    iput-boolean p5, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    .line 107
    iput-object p6, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    .line 110
    iput-wide p9, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    .line 111
    return-void

    .line 100
    .restart local v0    # "ts":J
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad time stamp "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/stack/MessageLog;
    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "source":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "timeStamp":Ljava/lang/String;
    .end local p5    # "isSender":Z
    .end local p6    # "firstLine":Ljava/lang/String;
    .end local p7    # "tid":Ljava/lang/String;
    .end local p8    # "callId":Ljava/lang/String;
    .end local p9    # "timeStampHeaderValue":J
    throw v2
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_33} :catch_33

    .line 102
    .end local v0    # "ts":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/MessageLog;
    .restart local p1    # "message":Ljava/lang/String;
    .restart local p2    # "source":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "timeStamp":Ljava/lang/String;
    .restart local p5    # "isSender":Z
    .restart local p6    # "firstLine":Ljava/lang/String;
    .restart local p7    # "tid":Ljava/lang/String;
    .restart local p8    # "callId":Ljava/lang/String;
    .restart local p9    # "timeStampHeaderValue":J
    :catch_33
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad number format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null msg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lgov/nist/javax/sip/stack/MessageLog;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 70
    return v1

    .line 72
    :cond_6
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/MessageLog;

    .line 73
    .local v0, "otherLog":Lgov/nist/javax/sip/stack/MessageLog;
    iget-object v2, v0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-wide v2, v0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    iget-wide v4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<message\nfrom=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \nto=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \ntime=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget-wide v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ntimeStamp = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_51
    const-string v1, ""

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisSender=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \ntransactionId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \ncallId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \nfirstLine=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \n>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "log":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</message>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method
