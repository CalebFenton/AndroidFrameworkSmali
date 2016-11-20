.class public Lsun/security/x509/EDIPartyName;
.super Ljava/lang/Object;
.source "EDIPartyName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final TAG_ASSIGNER:B = 0x0t

.field private static final TAG_PARTYNAME:B = 0x1t


# instance fields
.field private assigner:Ljava/lang/String;

.field private myhash:I

.field private party:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "partyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@6
    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@8
    .line 54
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@b
    .line 73
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@d
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "assignerName"    # Ljava/lang/String;
    .param p2, "partyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@6
    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@8
    .line 54
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@b
    .line 63
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@d
    .line 64
    iput-object p2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@f
    .line 62
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 8
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 51
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@8
    .line 52
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@a
    .line 54
    const/4 v5, -0x1

    #@b
    iput v5, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@d
    .line 83
    new-instance v1, Lsun/security/util/DerInputStream;

    #@f
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@12
    move-result-object v5

    #@13
    invoke-direct {v1, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@16
    .line 84
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@19
    move-result-object v4

    #@1a
    .line 86
    .local v4, "seq":[Lsun/security/util/DerValue;
    array-length v2, v4

    #@1b
    .line 87
    .local v2, "len":I
    if-lt v2, v6, :cond_0

    #@1d
    if-le v2, v7, :cond_1

    #@1f
    .line 88
    :cond_0
    new-instance v5, Ljava/io/IOException;

    #@21
    const-string/jumbo v6, "Invalid encoding of EDIPartyName"

    #@24
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v5

    #@28
    .line 90
    :cond_1
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_8

    #@2b
    .line 91
    aget-object v3, v4, v0

    #@2d
    .line 92
    .local v3, "opt":Lsun/security/util/DerValue;
    const/4 v5, 0x0

    #@2e
    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 93
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_4

    #@3a
    .line 100
    :cond_2
    :goto_1
    invoke-virtual {v3, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_3

    #@40
    .line 101
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_6

    #@46
    .line 90
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_0

    #@49
    .line 94
    :cond_4
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@4b
    if-eqz v5, :cond_5

    #@4d
    .line 95
    new-instance v5, Ljava/io/IOException;

    #@4f
    const-string/jumbo v6, "Duplicate nameAssigner found in EDIPartyName"

    #@52
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@55
    throw v5

    #@56
    .line 97
    :cond_5
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@58
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@5b
    move-result-object v3

    #@5c
    .line 98
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@62
    goto :goto_1

    #@63
    .line 102
    :cond_6
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@65
    if-eqz v5, :cond_7

    #@67
    .line 103
    new-instance v5, Ljava/io/IOException;

    #@69
    const-string/jumbo v6, "Duplicate partyName found in EDIPartyName"

    #@6c
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v5

    #@70
    .line 105
    :cond_7
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@72
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@75
    move-result-object v3

    #@76
    .line 106
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@7c
    goto :goto_2

    #@7d
    .line 82
    .end local v3    # "opt":Lsun/security/util/DerValue;
    :cond_8
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    if-nez p1, :cond_0

    #@2
    .line 236
    const/4 v0, -0x1

    #@3
    .line 242
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@4
    .line 237
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x5

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 238
    const/4 v0, -0x1

    #@c
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@d
    .line 240
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@f
    const-string/jumbo v2, "Narrowing, widening, and matching of names not supported for EDIPartyName"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
.end method

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
    .line 125
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@5
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8
    .line 126
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@a
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@d
    .line 128
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 129
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@13
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@16
    .line 131
    .local v2, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    #@1b
    .line 132
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@22
    .line 135
    .end local v2    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@24
    if-nez v3, :cond_1

    #@26
    .line 136
    new-instance v3, Ljava/io/IOException;

    #@28
    const-string/jumbo v4, "Cannot have null partyName"

    #@2b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 139
    :cond_1
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    #@34
    .line 141
    const/4 v3, 0x1

    #@35
    .line 140
    invoke-static {v5, v4, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@38
    move-result v3

    #@39
    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@3c
    .line 143
    const/16 v3, 0x30

    #@3e
    invoke-virtual {p1, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@41
    .line 124
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    instance-of v2, p1, Lsun/security/x509/EDIPartyName;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 173
    return v3

    #@6
    :cond_0
    move-object v2, p1

    #@7
    .line 174
    nop

    #@8
    nop

    #@9
    iget-object v0, v2, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@b
    .line 175
    .local v0, "otherAssigner":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@d
    if-nez v2, :cond_1

    #@f
    .line 176
    if-eqz v0, :cond_2

    #@11
    .line 177
    return v3

    #@12
    .line 179
    :cond_1
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 180
    return v3

    #@1b
    .line 182
    :cond_2
    nop

    #@1c
    nop

    #@1d
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@1f
    .line 183
    .local v1, "otherParty":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@21
    if-nez v2, :cond_3

    #@23
    .line 184
    if-eqz v1, :cond_4

    #@25
    .line 185
    return v3

    #@26
    .line 187
    :cond_3
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_4

    #@2e
    .line 188
    return v3

    #@2f
    .line 190
    :cond_4
    const/4 v2, 0x1

    #@30
    return v2
.end method

.method public getAssignerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 115
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 199
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 200
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, 0x25

    #@d
    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@f
    .line 201
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 202
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@15
    mul-int/lit8 v0, v0, 0x25

    #@17
    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v0, v1

    #@1e
    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@20
    .line 205
    :cond_0
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    #@22
    return v0
.end method

.method public subtreeDepth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "subtreeDepth() not supported for EDIPartyName"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "EDIPartyName: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 213
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@e
    if-nez v0, :cond_0

    #@10
    const-string/jumbo v0, ""

    #@13
    .line 212
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 215
    const-string/jumbo v1, "  partyName = "

    #@1a
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 215
    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    #@20
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "  nameAssigner = "

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string/jumbo v2, ","

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    goto :goto_0
.end method
