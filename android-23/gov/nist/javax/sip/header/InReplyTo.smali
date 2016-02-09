.class public Lgov/nist/javax/sip/header/InReplyTo;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "InReplyTo.java"

# interfaces
.implements Ljavax/sip/header/InReplyToHeader;


# static fields
.field private static final serialVersionUID:J = 0x1759ce6d8e492f1aL


# instance fields
.field protected callId:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "In-Reply-To"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 55
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 1
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "In-Reply-To"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 64
    iput-object p1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@8
    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 104
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/InReplyTo;

    #@6
    .line 105
    .local v0, "retval":Lgov/nist/javax/sip/header/InReplyTo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 106
    iget-object v1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/CallIdentifier;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@14
    .line 107
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 91
    return-object v1

    #@6
    .line 92
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/CallIdentifier;

    #@2
    invoke-direct {v1, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    #@5
    iput-object v1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 75
    return-void

    #@8
    .line 78
    :catch_0
    move-exception v0

    #@9
    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/text/ParseException;

    #@b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@13
    throw v1
.end method
