.class public Lsun/security/x509/GeneralSubtree;
.super Ljava/lang/Object;
.source "GeneralSubtree.java"


# static fields
.field private static final MIN_DEFAULT:I = 0x0

.field private static final TAG_MAX:B = 0x1t

.field private static final TAG_MIN:B


# instance fields
.field private maximum:I

.field private minimum:I

.field private myhash:I

.field private name:Lsun/security/x509/GeneralName;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 51
    iput v3, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@9
    .line 52
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@b
    .line 54
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@d
    .line 75
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    #@f
    const/16 v2, 0x30

    #@11
    if-eq v1, v2, :cond_0

    #@13
    .line 76
    new-instance v1, Ljava/io/IOException;

    #@15
    const-string/jumbo v2, "Invalid encoding for GeneralSubtree."

    #@18
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 78
    :cond_0
    new-instance v1, Lsun/security/x509/GeneralName;

    #@1e
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@20
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    #@27
    iput-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@29
    .line 83
    :goto_0
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2b
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_5

    #@31
    .line 84
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@33
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@36
    move-result-object v0

    #@37
    .line 86
    .local v0, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_3

    #@43
    .line 90
    :cond_1
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_2

    #@49
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_4

    #@4f
    .line 94
    :cond_2
    new-instance v1, Ljava/io/IOException;

    #@51
    const-string/jumbo v2, "Invalid encoding of GeneralSubtree."

    #@54
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 87
    :cond_3
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    #@5b
    .line 88
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    #@5e
    move-result v1

    #@5f
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@61
    goto :goto_0

    #@62
    .line 91
    :cond_4
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    #@65
    .line 92
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    #@68
    move-result v1

    #@69
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@6b
    goto :goto_0

    #@6c
    .line 74
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_5
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralName;II)V
    .locals 2
    .param p1, "name"    # Lsun/security/x509/GeneralName;
    .param p2, "min"    # I
    .param p3, "max"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@7
    .line 52
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@9
    .line 54
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@b
    .line 64
    iput-object p1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@d
    .line 65
    iput p2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@f
    .line 66
    iput p3, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@11
    .line 63
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, -0x80

    #@2
    const/4 v4, 0x0

    #@3
    .line 193
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@5
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8
    .line 195
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@a
    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    #@d
    .line 197
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 198
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@13
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@16
    .line 199
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@18
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@1b
    .line 200
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@22
    .line 203
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@24
    const/4 v3, -0x1

    #@25
    if-eq v2, v3, :cond_1

    #@27
    .line 204
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@29
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@2c
    .line 205
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@2e
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@31
    .line 207
    const/4 v2, 0x1

    #@32
    .line 206
    invoke-static {v5, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@35
    move-result v2

    #@36
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@39
    .line 209
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    const/16 v2, 0x30

    #@3b
    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@3e
    .line 192
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 148
    instance-of v1, p1, Lsun/security/x509/GeneralSubtree;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 149
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 150
    nop

    #@8
    nop

    #@9
    .line 151
    .local v0, "otherGS":Lsun/security/x509/GeneralSubtree;
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@b
    if-nez v1, :cond_1

    #@d
    .line 152
    iget-object v1, v0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 153
    return v3

    #@12
    .line 156
    :cond_1
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@14
    iget-object v2, v0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@16
    invoke-virtual {v1, v2}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 157
    return v3

    #@1d
    .line 159
    :cond_2
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@1f
    iget v2, v0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@21
    if-eq v1, v2, :cond_3

    #@23
    .line 160
    return v3

    #@24
    .line 161
    :cond_3
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@26
    iget v2, v0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@28
    if-eq v1, v2, :cond_4

    #@2a
    .line 162
    return v3

    #@2b
    .line 163
    :cond_4
    const/4 v1, 0x1

    #@2c
    return v1
.end method

.method public getMaximum()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@2
    return v0
.end method

.method public getMinimum()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@2
    return v0
.end method

.method public getName()Lsun/security/x509/GeneralName;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 172
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@3
    if-ne v0, v2, :cond_2

    #@5
    .line 173
    const/16 v0, 0x11

    #@7
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@9
    .line 174
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 175
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@f
    mul-int/lit8 v0, v0, 0x25

    #@11
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@13
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@1a
    .line 177
    :cond_0
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 178
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@20
    mul-int/lit8 v0, v0, 0x25

    #@22
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@24
    add-int/2addr v0, v1

    #@25
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@27
    .line 180
    :cond_1
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@29
    if-eq v0, v2, :cond_2

    #@2b
    .line 181
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@2d
    mul-int/lit8 v0, v0, 0x25

    #@2f
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@31
    add-int/2addr v0, v1

    #@32
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@34
    .line 184
    :cond_2
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    #@36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "\n   GeneralSubtree: [\n    GeneralName: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 131
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@e
    if-nez v1, :cond_0

    #@10
    const-string/jumbo v1, ""

    #@13
    .line 130
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 132
    const-string/jumbo v2, "\n    Minimum: "

    #@1a
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 132
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    #@20
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 133
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@2a
    const/4 v2, -0x1

    #@2b
    if-ne v1, v2, :cond_1

    #@2d
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "\t    Maximum: undefined"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 137
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v2, "    ]\n"

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    .line 138
    return-object v0

    #@56
    .line 131
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    #@58
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    goto :goto_0

    #@5d
    .line 136
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    const-string/jumbo v2, "\t    Maximum: "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    goto :goto_1
.end method
