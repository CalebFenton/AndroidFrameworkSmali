.class public Lgov/nist/javax/sip/header/TimeStamp;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "TimeStamp.java"

# interfaces
.implements Ljavax/sip/header/TimeStampHeader;


# static fields
.field private static final serialVersionUID:J = -0x3381440765137350L


# instance fields
.field protected delay:I

.field protected delayFloat:F

.field protected timeStamp:J

.field private timeStampFloat:F


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/high16 v2, -0x40800000    # -1.0f

    #@3
    .line 71
    const-string/jumbo v0, "Timestamp"

    #@6
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@9
    .line 56
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@d
    .line 61
    iput v3, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@f
    .line 63
    iput v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@11
    .line 65
    iput v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@13
    .line 72
    iput v3, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@15
    .line 70
    return-void
.end method

.method private getDelayAsString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 85
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@3
    if-ne v0, v2, :cond_0

    #@5
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@7
    const/high16 v1, -0x40800000    # -1.0f

    #@9
    cmpl-float v0, v0, v1

    #@b
    if-nez v0, :cond_0

    #@d
    .line 86
    const-string/jumbo v0, ""

    #@10
    return-object v0

    #@11
    .line 87
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@13
    if-eq v0, v2, :cond_1

    #@15
    .line 88
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 90
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@1e
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method private getTimeStampAsString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 76
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@a
    const/high16 v1, -0x40800000    # -1.0f

    #@c
    cmpl-float v0, v0, v1

    #@e
    if-nez v0, :cond_0

    #@10
    .line 77
    const-string/jumbo v0, ""

    #@13
    return-object v0

    #@14
    .line 78
    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@16
    cmp-long v0, v0, v2

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 79
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 81
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@23
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 100
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getTimeStampAsString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 101
    .local v1, "s1":Ljava/lang/String;
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getDelayAsString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 102
    .local v2, "s2":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    const-string/jumbo v3, ""

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 103
    const-string/jumbo v3, ""

    #@22
    return-object v3

    #@23
    .line 104
    :cond_0
    const-string/jumbo v3, ""

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 106
    :cond_1
    const-string/jumbo v3, ""

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_2

    #@38
    .line 107
    const-string/jumbo v3, " "

    #@3b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    return-object v3
.end method

.method public getDelay()F
    .locals 2

    #@0
    .prologue
    .line 148
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_0

    #@8
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@a
    int-to-float v0, v0

    #@b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@16
    goto :goto_0
.end method

.method public getTime()J
    .locals 4

    #@0
    .prologue
    .line 172
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@a
    float-to-long v0, v0

    #@b
    :goto_0
    return-wide v0

    #@c
    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@e
    goto :goto_0
.end method

.method public getTimeDelay()I
    .locals 2

    #@0
    .prologue
    .line 176
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@7
    float-to-int v0, v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@b
    goto :goto_0
.end method

.method public getTimeStamp()F
    .locals 2

    #@0
    .prologue
    .line 141
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_0

    #@8
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@a
    long-to-float v0, v0

    #@b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    .line 142
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@16
    goto :goto_0
.end method

.method public hasDelay()Z
    .locals 2

    #@0
    .prologue
    .line 118
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public removeDelay()V
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@3
    .line 124
    return-void
.end method

.method public setDelay(F)V
    .locals 2
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_0

    #@5
    const/high16 v0, -0x40800000    # -1.0f

    #@7
    cmpl-float v0, p1, v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 164
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@d
    .line 165
    const-string/jumbo v1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    #@10
    .line 164
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 167
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@16
    .line 168
    const/4 v0, -0x1

    #@17
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@19
    .line 162
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    const-wide/16 v0, -0x1

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 182
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@8
    const-string/jumbo v1, "Illegal timestamp"

    #@b
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 183
    :cond_0
    iput-wide p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@11
    .line 184
    const/high16 v0, -0x40800000    # -1.0f

    #@13
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@15
    .line 180
    return-void
.end method

.method public setTimeDelay(I)V
    .locals 3
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    const/4 v0, -0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 190
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Value out of range "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 191
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    #@1f
    .line 192
    const/high16 v0, -0x40800000    # -1.0f

    #@21
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    #@23
    .line 188
    return-void
.end method

.method public setTimeStamp(F)V
    .locals 2
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 132
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@7
    .line 133
    const-string/jumbo v1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    #@a
    .line 132
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 135
    :cond_0
    const-wide/16 v0, -0x1

    #@10
    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    #@12
    .line 136
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    #@14
    .line 130
    return-void
.end method
