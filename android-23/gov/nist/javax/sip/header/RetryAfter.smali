.class public Lgov/nist/javax/sip/header/RetryAfter;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "RetryAfter.java"

# interfaces
.implements Ljavax/sip/header/RetryAfterHeader;


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field private static final serialVersionUID:J = -0xe495f10ce4d22dcL


# instance fields
.field protected comment:Ljava/lang/String;

.field protected retryAfter:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "Retry-After"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 59
    new-instance v0, Ljava/lang/Integer;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@c
    iput-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    #@e
    .line 67
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 77
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 78
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@e
    .line 80
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, " ("

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, ")"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 83
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/RetryAfter;->parameters:Lgov/nist/core/NameValueList;

    #@34
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, ";"

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Lgov/nist/javax/sip/header/RetryAfter;->parameters:Lgov/nist/core/NameValueList;

    #@48
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    return-object v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    #@0
    .prologue
    .line 188
    const-string/jumbo v0, "duration"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RetryAfter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, -0x1

    #@a
    return v0

    #@b
    .line 189
    :cond_0
    const-string/jumbo v0, "duration"

    #@e
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterAsInt(Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasComment()Z
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public removeComment()V
    .locals 1

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    #@3
    .line 99
    return-void
.end method

.method public removeDuration()V
    .locals 1

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "duration"

    #@3
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    #@6
    .line 105
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    if-nez p1, :cond_0

    #@2
    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "the comment parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 160
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/RetryAfter;->comment:Ljava/lang/String;

    #@d
    .line 157
    return-void
.end method

.method public setDuration(I)V
    .locals 2
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-gez p1, :cond_0

    #@2
    .line 174
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    const-string/jumbo v1, "the duration parameter is <0"

    #@7
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 175
    :cond_0
    const-string/jumbo v0, "duration"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/RetryAfter;->setParameter(Ljava/lang/String;I)V

    #@11
    .line 172
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 3
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    if-gez p1, :cond_0

    #@2
    .line 121
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid parameter "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 121
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 123
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lgov/nist/javax/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    #@22
    .line 119
    return-void
.end method
