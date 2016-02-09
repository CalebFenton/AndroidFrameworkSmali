.class public final Lgov/nist/javax/sip/header/Accept;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Accept.java"

# interfaces
.implements Ljavax/sip/header/AcceptHeader;


# static fields
.field private static final serialVersionUID:J = -0x6d2a503d84e287e7L


# instance fields
.field protected mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "Accept"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 61
    return-void
.end method


# virtual methods
.method public allowsAllContentSubTypes()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 83
    return v0

    #@6
    .line 85
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "*"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    const/4 v0, 0x1

    #@16
    :cond_1
    return v0
.end method

.method public allowsAllContentTypes()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 71
    return v0

    #@6
    .line 73
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "*"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    :cond_1
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 195
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/Accept;

    #@6
    .line 196
    .local v0, "retval":Lgov/nist/javax/sip/header/Accept;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 197
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MediaRange;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/MediaRange;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@14
    .line 198
    :cond_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Accept;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@6
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@9
    .line 98
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->parameters:Lgov/nist/core/NameValueList;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->parameters:Lgov/nist/core/NameValueList;

    #@f
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 102
    :cond_1
    :goto_0
    return-object p1

    #@16
    .line 99
    :cond_2
    const/16 v0, 0x3b

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->parameters:Lgov/nist/core/NameValueList;

    #@1d
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@20
    goto :goto_0
.end method

.method public getContentSubType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 127
    return-object v1

    #@6
    .line 129
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 117
    return-object v1

    #@6
    .line 119
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getType()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getMediaRange()Lgov/nist/javax/sip/header/MediaRange;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    return-object v0
.end method

.method public getQValue()F
    .locals 1

    #@0
    .prologue
    .line 137
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Accept;->getParameterAsFloat(Ljava/lang/String;)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public hasQValue()Z
    .locals 1

    #@0
    .prologue
    .line 145
    const-string/jumbo v0, "q"

    #@3
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public removeQValue()V
    .locals 1

    #@0
    .prologue
    .line 153
    const-string/jumbo v0, "q"

    #@3
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    #@6
    .line 152
    return-void
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 161
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@b
    .line 162
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    #@10
    .line 159
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 170
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@b
    .line 171
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    #@10
    .line 168
    return-void
.end method

.method public setMediaRange(Lgov/nist/javax/sip/header/MediaRange;)V
    .locals 0
    .param p1, "m"    # Lgov/nist/javax/sip/header/MediaRange;

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    .line 190
    return-void
.end method

.method public setQValue(F)V
    .locals 1
    .param p1, "qValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 181
    const-string/jumbo v0, "q"

    #@9
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    #@c
    .line 182
    :cond_0
    const-string/jumbo v0, "q"

    #@f
    invoke-super {p0, v0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;F)V

    #@12
    .line 179
    return-void
.end method
