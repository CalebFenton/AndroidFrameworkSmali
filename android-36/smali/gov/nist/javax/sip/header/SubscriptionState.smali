.class public Lgov/nist/javax/sip/header/SubscriptionState;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SubscriptionState.java"

# interfaces
.implements Ljavax/sip/header/SubscriptionStateHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x5c9e37cd95983a79L


# instance fields
.field protected greylist expires:I

.field protected greylist reasonCode:Ljava/lang/String;

.field protected greylist retryAfter:I

.field protected greylist state:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 59
    const-string v0, "Subscription-State"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    .line 61
    iput v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    .line 62
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SubscriptionState;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 171
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 174
    const-string v0, ";reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_18
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 176
    const-string v0, ";expires="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    :cond_28
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    if-eq v0, v1, :cond_37

    .line 178
    const-string v0, ";retry-after="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    :cond_37
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 181
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 184
    :cond_49
    return-object p1
.end method

.method public greylist getExpires()I
    .registers 2

    .line 86
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    return v0
.end method

.method public greylist getReasonCode()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getRetryAfter()I
    .registers 2

    .line 111
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return v0
.end method

.method public greylist getState()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setExpires(I)V
    .registers 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 72
    if-ltz p1, :cond_5

    .line 76
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    .line 77
    return-void

    .line 73
    :cond_5
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setReasonCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "reasonCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 132
    if-eqz p1, :cond_5

    .line 136
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    .line 137
    return-void

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setRetryAfter(I)V
    .registers 4
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 97
    if-lez p1, :cond_5

    .line 101
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    .line 102
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setState(Ljava/lang/String;)V
    .registers 4
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_5

    .line 160
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    .line 161
    return-void

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
