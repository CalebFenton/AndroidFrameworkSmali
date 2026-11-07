.class public Lgov/nist/javax/sip/header/CallID;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "CallID.java"

# interfaces
.implements Ljavax/sip/header/CallIdHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x59b36d79798089d4L


# instance fields
.field protected greylist callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 57
    const-string v0, "Call-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 137
    const-string v0, "Call-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 142
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 143
    .local v0, "retval":Lgov/nist/javax/sip/header/CallID;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v1, :cond_14

    .line 144
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CallIdentifier;

    iput-object v1, v0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 145
    :cond_14
    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallID;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 89
    :cond_9
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 67
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 69
    :cond_4
    instance-of v0, p1, Ljavax/sip/header/CallIdHeader;

    if-eqz v0, :cond_18

    .line 70
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 71
    .local v0, "o":Ljavax/sip/header/CallIdHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 73
    .end local v0    # "o":Ljavax/sip/header/CallIdHeader;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCallId()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .registers 2

    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-object v0
.end method

.method public greylist setCallId(Ljava/lang/String;)V
    .registers 5
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 118
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    .line 121
    nop

    .line 122
    return-void

    .line 119
    :catch_9
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .registers 2
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    .line 129
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 130
    return-void
.end method
