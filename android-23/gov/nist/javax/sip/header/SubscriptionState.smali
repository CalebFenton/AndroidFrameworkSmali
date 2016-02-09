.class public Lgov/nist/javax/sip/header/SubscriptionState;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SubscriptionState.java"

# interfaces
.implements Ljavax/sip/header/SubscriptionStateHeader;


# static fields
.field private static final serialVersionUID:J = -0x5c9e37cd95983a79L


# instance fields
.field protected expires:I

.field protected reasonCode:Ljava/lang/String;

.field protected retryAfter:I

.field protected state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 59
    const-string/jumbo v0, "Subscription-State"

    #@4
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@7
    .line 60
    iput v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    #@9
    .line 61
    iput v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    #@b
    .line 58
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SubscriptionState;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 171
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 172
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 173
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 174
    const-string/jumbo v0, ";reason="

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 175
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    #@1c
    if-eq v0, v2, :cond_2

    #@1e
    .line 176
    const-string/jumbo v0, ";expires="

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    .line 177
    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    #@2c
    if-eq v0, v2, :cond_3

    #@2e
    .line 178
    const-string/jumbo v0, ";retry-after="

    #@31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v0

    #@35
    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3a
    .line 180
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->parameters:Lgov/nist/core/NameValueList;

    #@3c
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@3f
    move-result v0

    #@40
    if-nez v0, :cond_4

    #@42
    .line 181
    const-string/jumbo v0, ";"

    #@45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->parameters:Lgov/nist/core/NameValueList;

    #@4a
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@4d
    .line 184
    :cond_4
    return-object p1
.end method

.method public getExpires()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    #@2
    return v0
.end method

.method public getReasonCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRetryAfter()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    #@2
    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setExpires(I)V
    .locals 2
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    if-gez p1, :cond_0

    #@2
    .line 73
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 74
    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0"

    #@7
    .line 73
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 76
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    #@d
    .line 71
    return-void
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "reasonCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    if-nez p1, :cond_0

    #@2
    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 134
    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null"

    #@7
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 136
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    #@d
    .line 131
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 2
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    if-gtz p1, :cond_0

    #@2
    .line 98
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 99
    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0"

    #@7
    .line 98
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 101
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    #@d
    .line 96
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    if-nez p1, :cond_0

    #@2
    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 158
    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null"

    #@7
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 160
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    #@d
    .line 155
    return-void
.end method
