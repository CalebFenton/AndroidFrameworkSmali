.class public Lorg/apache/http/impl/auth/NTLMScheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/NTLMScheme$State;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lorg/apache/http/impl/auth/NTLMEngine;

.field private state:Lorg/apache/http/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/auth/NTLMEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/apache/http/impl/auth/NTLMEngine;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    #@4
    .line 69
    if-nez p1, :cond_0

    #@6
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "NTLM engine may not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 72
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    #@11
    .line 73
    sget-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@13
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@15
    .line 74
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    #@17
    .line 67
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 11
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    const/4 v9, 0x0

    #@1
    .line 117
    .local v9, "ntcredentials":Lorg/apache/http/auth/NTCredentials;
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Lorg/apache/http/auth/NTCredentials;

    #@4
    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 123
    .local v9, "ntcredentials":Lorg/apache/http/auth/NTCredentials;
    const/4 v10, 0x0

    #@6
    .line 124
    .local v10, "response":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@8
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@a
    if-eq v1, v2, :cond_0

    #@c
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@e
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 125
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    #@14
    .line 126
    invoke-virtual {v9}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 127
    invoke-virtual {v9}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 125
    invoke-interface {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v10

    #@20
    .line 128
    .local v10, "response":Ljava/lang/String;
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@22
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@24
    .line 140
    :goto_0
    new-instance v7, Lorg/apache/http/util/CharArrayBuffer;

    #@26
    const/16 v1, 0x20

    #@28
    invoke-direct {v7, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@2b
    .line 141
    .local v7, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMScheme;->isProxy()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 142
    const-string/jumbo v1, "Proxy-Authorization"

    #@34
    invoke-virtual {v7, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@37
    .line 146
    :goto_1
    const-string/jumbo v1, ": NTLM "

    #@3a
    invoke-virtual {v7, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3d
    .line 147
    invoke-virtual {v7, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@40
    .line 148
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    #@42
    invoke-direct {v1, v7}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@45
    return-object v1

    #@46
    .line 118
    .end local v7    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v10    # "response":Ljava/lang/String;
    .local v9, "ntcredentials":Lorg/apache/http/auth/NTCredentials;
    :catch_0
    move-exception v8

    #@47
    .line 119
    .local v8, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/apache/http/auth/InvalidCredentialsException;

    #@49
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "Credentials cannot be used for NTLM authentication: "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 119
    invoke-direct {v1, v2}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 129
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .local v9, "ntcredentials":Lorg/apache/http/auth/NTCredentials;
    .local v10, "response":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@6b
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@6d
    if-ne v1, v2, :cond_2

    #@6f
    .line 130
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    #@71
    .line 131
    invoke-virtual {v9}, Lorg/apache/http/auth/NTCredentials;->getUserName()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    .line 132
    invoke-virtual {v9}, Lorg/apache/http/auth/NTCredentials;->getPassword()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 133
    invoke-virtual {v9}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    .line 134
    invoke-virtual {v9}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    .line 135
    iget-object v6, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    #@83
    .line 130
    invoke-interface/range {v1 .. v6}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    .line 136
    .local v10, "response":Ljava/lang/String;
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@89
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@8b
    goto :goto_0

    #@8c
    .line 138
    .local v10, "response":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    #@8e
    new-instance v2, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v3, "Unexpected state: "

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-direct {v1, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v1

    #@a8
    .line 144
    .restart local v7    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v10, "response":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "Authorization"

    #@ab
    invoke-virtual {v7, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@ae
    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "ntlm"

    #@3
    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 152
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@3
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@9
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "challenge":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 100
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@c
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 101
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@12
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@14
    .line 105
    :goto_0
    const/4 v1, 0x0

    #@15
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    #@17
    .line 97
    :goto_1
    return-void

    #@18
    .line 103
    :cond_0
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@1a
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@1c
    goto :goto_0

    #@1d
    .line 107
    :cond_1
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@1f
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    #@21
    .line 108
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    #@23
    goto :goto_1
.end method
