.class public Lgov/nist/javax/sip/header/RetryAfter;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "RetryAfter.java"

# interfaces
.implements Ljavax/sip/header/RetryAfterHeader;


# static fields
.field public static final greylist DURATION:Ljava/lang/String; = "duration"

.field private static final whitelist serialVersionUID:J = -0xe495f10ce4d22dcL


# instance fields
.field protected greylist comment:Ljava/lang/String;

.field protected greylist retryAfter:Ljava/lang/Integer;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 68
    const-string v0, "Retry-After"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    .line 69
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 4

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 78
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 80
    :cond_e
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_30
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/RetryAfter;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getComment()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDuration()I
    .registers 3

    .line 188
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RetryAfter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, -0x1

    return v0

    .line 189
    :cond_a
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getRetryAfter()I
    .registers 2

    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public greylist hasComment()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist removeComment()V
    .registers 2

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public greylist removeDuration()V
    .registers 2

    .line 106
    const-string v0, "duration"

    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public greylist setComment(Ljava/lang/String;)V
    .registers 4
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 158
    if-eqz p1, :cond_5

    .line 160
    iput-object p1, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    .line 161
    return-void

    .line 159
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the comment parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setDuration(I)V
    .registers 4
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 173
    if-ltz p1, :cond_8

    .line 175
    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/RetryAfter;->setParameter(Ljava/lang/String;I)V

    .line 176
    return-void

    .line 174
    :cond_8
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "the duration parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setRetryAfter(I)V
    .registers 5
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 120
    if-ltz p1, :cond_9

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    .line 124
    return-void

    .line 121
    :cond_9
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
