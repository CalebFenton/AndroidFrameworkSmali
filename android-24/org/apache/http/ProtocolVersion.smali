.class public Lorg/apache/http/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "major"    # I
    .param p3, "minor"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    if-nez p1, :cond_0

    #@5
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 86
    const-string/jumbo v1, "Protocol name must not be null."

    #@a
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 88
    :cond_0
    if-gez p2, :cond_1

    #@10
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 90
    const-string/jumbo v1, "Protocol major version number must not be negative."

    #@15
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 92
    :cond_1
    if-gez p3, :cond_2

    #@1b
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    .line 94
    const-string/jumbo v1, "Protocol minor version number may not be negative"

    #@20
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 96
    :cond_2
    iput-object p1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@26
    .line 97
    iput p2, p0, Lorg/apache/http/ProtocolVersion;->major:I

    #@28
    .line 98
    iput p3, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@2a
    .line 83
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compareToVersion(Lorg/apache/http/ProtocolVersion;)I
    .locals 4
    .param p1, "that"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 225
    if-nez p1, :cond_0

    #@2
    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 227
    const-string/jumbo v2, "Protocol version must not be null."

    #@7
    .line 226
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@d
    iget-object v2, p1, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Versions for different protocols cannot be compared. "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 232
    const-string/jumbo v3, " "

    #@2a
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 230
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 235
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    #@3d
    move-result v1

    #@3e
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    #@41
    move-result v2

    #@42
    sub-int v0, v1, v2

    #@44
    .line 236
    .local v0, "delta":I
    if-nez v0, :cond_2

    #@46
    .line 237
    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    #@49
    move-result v1

    #@4a
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    #@4d
    move-result v2

    #@4e
    sub-int v0, v1, v2

    #@50
    .line 239
    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 179
    if-ne p0, p1, :cond_0

    #@4
    .line 180
    return v1

    #@5
    .line 182
    :cond_0
    instance-of v3, p1, Lorg/apache/http/ProtocolVersion;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 183
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 185
    check-cast v0, Lorg/apache/http/ProtocolVersion;

    #@d
    .line 187
    .local v0, "that":Lorg/apache/http/ProtocolVersion;
    iget-object v3, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@f
    iget-object v4, v0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 188
    iget v3, p0, Lorg/apache/http/ProtocolVersion;->major:I

    #@19
    iget v4, v0, Lorg/apache/http/ProtocolVersion;->major:I

    #@1b
    if-ne v3, v4, :cond_3

    #@1d
    .line 189
    iget v3, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@1f
    iget v4, v0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@21
    if-ne v3, v4, :cond_2

    #@23
    .line 187
    :goto_0
    return v1

    #@24
    :cond_2
    move v1, v2

    #@25
    .line 189
    goto :goto_0

    #@26
    :cond_3
    move v1, v2

    #@27
    .line 187
    goto :goto_0
.end method

.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    #@0
    .prologue
    .line 146
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@6
    if-ne p2, v0, :cond_0

    #@8
    .line 147
    return-object p0

    #@9
    .line 151
    :cond_0
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    #@b
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@d
    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    #@10
    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    #@0
    .prologue
    .line 116
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    #@2
    return v0
.end method

.method public final getMinor()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@2
    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final greaterEquals(Lorg/apache/http/ProtocolVersion;)Z
    .locals 2
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->isComparable(Lorg/apache/http/ProtocolVersion;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    #@a
    move-result v1

    #@b
    if-ltz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->major:I

    #@8
    const v2, 0x186a0

    #@b
    mul-int/2addr v1, v2

    #@c
    xor-int/2addr v0, v1

    #@d
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@f
    xor-int/2addr v0, v1

    #@10
    return v0
.end method

.method public isComparable(Lorg/apache/http/ProtocolVersion;)Z
    .locals 2
    .param p1, "that"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 204
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@4
    iget-object v1, p1, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final lessEquals(Lorg/apache/http/ProtocolVersion;)Z
    .locals 2
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->isComparable(Lorg/apache/http/ProtocolVersion;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    #@a
    move-result v1

    #@b
    if-gtz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 279
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 280
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@c
    .line 281
    const/16 v1, 0x2f

    #@e
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@11
    .line 282
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->major:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1a
    .line 283
    const/16 v1, 0x2e

    #@1c
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@1f
    .line 284
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@28
    .line 285
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method
