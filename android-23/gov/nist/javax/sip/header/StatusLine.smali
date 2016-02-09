.class public final Lgov/nist/javax/sip/header/StatusLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "StatusLine.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SipStatusLine;


# static fields
.field private static final serialVersionUID:J = -0x41c115c43b1c364eL


# instance fields
.field protected matchStatusClass:Z

.field protected reasonPhrase:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 107
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@6
    .line 108
    const-string/jumbo v0, "SIP/2.0"

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@b
    .line 106
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "SIP/2.0 "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 117
    .local v0, "encoding":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, " "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "\r\n"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 120
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSipVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@2
    return v0
.end method

.method public getVersionMajor()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 169
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 170
    return-object v4

    #@6
    .line 171
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 172
    .local v1, "major":Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    .line 173
    .local v2, "slash":Z
    const/4 v0, 0x0

    #@9
    .end local v1    # "major":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_5

    #@11
    .line 174
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    const/16 v4, 0x2e

    #@19
    if-ne v3, v4, :cond_1

    #@1b
    .line 175
    const/4 v2, 0x0

    #@1c
    .line 176
    :cond_1
    if-eqz v2, :cond_2

    #@1e
    .line 177
    if-nez v1, :cond_4

    #@20
    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, ""

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 182
    :cond_2
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@3c
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v3

    #@40
    const/16 v4, 0x2f

    #@42
    if-ne v3, v4, :cond_3

    #@44
    .line 183
    const/4 v2, 0x1

    #@45
    .line 173
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 180
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@53
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v4

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .local v1, "major":Ljava/lang/String;
    goto :goto_1

    #@60
    .line 185
    .end local v1    # "major":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 192
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 193
    return-object v4

    #@6
    .line 194
    :cond_0
    const/4 v2, 0x0

    #@7
    .line 195
    .local v2, "minor":Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .line 196
    .local v0, "dot":Z
    const/4 v1, 0x0

    #@9
    .end local v2    # "minor":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    if-ge v1, v3, :cond_4

    #@11
    .line 197
    if-eqz v0, :cond_1

    #@13
    .line 198
    if-nez v2, :cond_3

    #@15
    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, ""

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@23
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 203
    :cond_1
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v3

    #@35
    const/16 v4, 0x2e

    #@37
    if-ne v3, v4, :cond_2

    #@39
    .line 204
    const/4 v0, 0x1

    #@3a
    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 201
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@48
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    .local v2, "minor":Ljava/lang/String;
    goto :goto_1

    #@55
    .line 206
    .end local v2    # "minor":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "matchObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 69
    instance-of v4, p1, Lgov/nist/javax/sip/header/StatusLine;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 70
    return v6

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 71
    check-cast v3, Lgov/nist/javax/sip/header/StatusLine;

    #@9
    .line 73
    .local v3, "sl":Lgov/nist/javax/sip/header/StatusLine;
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->matchExpression:Lgov/nist/core/Match;

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 74
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->matchExpression:Lgov/nist/core/Match;

    #@f
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v4, v5}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    return v4

    #@18
    .line 76
    :cond_1
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@1a
    if-eqz v4, :cond_2

    #@1c
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@1e
    iget-object v5, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_3

    #@26
    .line 78
    :cond_2
    iget v4, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@28
    if-eqz v4, :cond_5

    #@2a
    .line 79
    iget-boolean v4, p0, Lgov/nist/javax/sip/header/StatusLine;->matchStatusClass:Z

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 80
    iget v1, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@30
    .line 81
    .local v1, "hiscode":I
    iget v4, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@32
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 82
    .local v0, "codeString":Ljava/lang/String;
    iget v4, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@38
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 83
    .local v2, "mycode":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v4

    #@40
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v5

    #@44
    if-eq v4, v5, :cond_5

    #@46
    .line 84
    return v6

    #@47
    .line 77
    .end local v0    # "codeString":Ljava/lang/String;
    .end local v1    # "hiscode":I
    .end local v2    # "mycode":Ljava/lang/String;
    :cond_3
    return v6

    #@48
    .line 86
    :cond_4
    iget v4, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@4a
    iget v5, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@4c
    if-eq v4, v5, :cond_5

    #@4e
    .line 87
    return v6

    #@4f
    .line 90
    :cond_5
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@51
    if-eqz v4, :cond_6

    #@53
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@55
    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@57
    if-ne v4, v5, :cond_7

    #@59
    .line 91
    :cond_6
    const/4 v4, 0x1

    #@5a
    return v4

    #@5b
    .line 92
    :cond_7
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@5d
    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v4

    #@63
    return v4
.end method

.method public setMatchStatusClass(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 101
    iput-boolean p1, p0, Lgov/nist/javax/sip/header/StatusLine;->matchStatusClass:Z

    #@2
    .line 100
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    #@2
    .line 161
    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    #@2
    .line 147
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    #@0
    .prologue
    .line 155
    iput p1, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    #@2
    .line 154
    return-void
.end method
