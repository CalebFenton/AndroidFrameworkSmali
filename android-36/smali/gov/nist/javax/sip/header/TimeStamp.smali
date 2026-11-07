.class public Lgov/nist/javax/sip/header/TimeStamp;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "TimeStamp.java"

# interfaces
.implements Ljavax/sip/header/TimeStampHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x3381440765137350L


# instance fields
.field protected greylist delay:I

.field protected greylist delayFloat:F

.field protected greylist timeStamp:J

.field private greylist timeStampFloat:F


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 71
    const-string v0, "Timestamp"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 63
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 65
    iput v1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 72
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 73
    return-void
.end method

.method private greylist getDelayAsString()Ljava/lang/String;
    .registers 4

    .line 85
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_10

    .line 86
    const-string v0, ""

    return-object v0

    .line 87
    :cond_10
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    if-eq v0, v1, :cond_1b

    .line 88
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1b
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getTimeStampAsString()Ljava/lang/String;
    .registers 5

    .line 76
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 77
    const-string v0, ""

    return-object v0

    .line 78
    :cond_13
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 79
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_20
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 6

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getTimeStampAsString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "s1":Ljava/lang/String;
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getDelayAsString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "s2":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 103
    return-object v3

    .line 104
    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 107
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist getDelay()F
    .registers 3

    .line 148
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    :goto_16
    return v0
.end method

.method public greylist getTime()J
    .registers 5

    .line 172
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    float-to-long v0, v0

    goto :goto_e

    :cond_c
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    :goto_e
    return-wide v0
.end method

.method public greylist getTimeDelay()I
    .registers 3

    .line 176
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    float-to-int v0, v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    :goto_b
    return v0
.end method

.method public greylist getTimeStamp()F
    .registers 3

    .line 141
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_16

    .line 142
    :cond_14
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 141
    :goto_16
    return v0
.end method

.method public greylist hasDelay()Z
    .registers 3

    .line 118
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist removeDelay()V
    .registers 2

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 126
    return-void
.end method

.method public greylist setDelay(F)V
    .registers 4
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_14

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 164
    :cond_c
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_14
    :goto_14
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 169
    return-void
.end method

.method public greylist setTime(J)V
    .registers 5
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 181
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 183
    iput-wide p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 184
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 186
    return-void

    .line 182
    :cond_d
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Illegal timestamp"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setTimeDelay(I)V
    .registers 5
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 189
    const/4 v0, -0x1

    if-lt p1, v0, :cond_a

    .line 191
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 192
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 194
    return-void

    .line 190
    :cond_a
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setTimeStamp(F)V
    .registers 4
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 136
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 137
    return-void

    .line 132
    :cond_c
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
