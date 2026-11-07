.class public Lsun/security/x509/EDIPartyName;
.super Ljava/lang/Object;
.source "EDIPartyName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final blacklist TAG_ASSIGNER:B = 0x0t

.field private static final blacklist TAG_PARTYNAME:B = 0x1t


# instance fields
.field private blacklist assigner:Ljava/lang/String;

.field private blacklist myhash:I

.field private blacklist party:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "partyName"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 73
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "assignerName"    # Ljava/lang/String;
    .param p2, "partyName"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 63
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 9
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 83
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 84
    .local v0, "in":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 86
    .local v2, "seq":[Lsun/security/util/DerValue;
    array-length v3, v2

    .line 87
    .local v3, "len":I
    const/4 v4, 0x1

    if-lt v3, v4, :cond_73

    if-gt v3, v1, :cond_73

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v3, :cond_72

    .line 91
    aget-object v5, v2, v1

    .line 92
    .local v5, "opt":Lsun/security/util/DerValue;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 93
    invoke-virtual {v5}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v6

    if-nez v6, :cond_4a

    .line 94
    iget-object v6, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v6, :cond_42

    .line 97
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 98
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    goto :goto_4a

    .line 95
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Duplicate nameAssigner found in EDIPartyName"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_4a
    :goto_4a
    invoke-virtual {v5, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 101
    invoke-virtual {v5}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v6

    if-nez v6, :cond_6f

    .line 102
    iget-object v6, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v6, :cond_67

    .line 105
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    goto :goto_6f

    .line 103
    :cond_67
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Duplicate partyName found in EDIPartyName"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    .end local v5    # "opt":Lsun/security/util/DerValue;
    :cond_6f
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 109
    .end local v1    # "i":I
    :cond_72
    return-void

    .line 88
    :cond_73
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Invalid encoding of EDIPartyName"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 235
    if-nez p1, :cond_4

    .line 236
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto :goto_c

    .line 237
    .end local v0    # "constraintType":I
    :cond_4
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    .line 238
    const/4 v0, -0x1

    .line 242
    .restart local v0    # "constraintType":I
    :goto_c
    return v0

    .line 240
    .end local v0    # "constraintType":I
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing, widening, and matching of names not supported for EDIPartyName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 8
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 126
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 128
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    const/16 v3, -0x80

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    .line 129
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 131
    .local v2, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 132
    invoke-static {v3, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v0, v5, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 135
    .end local v2    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_22
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 139
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x1

    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 143
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 144
    return-void

    .line 136
    :cond_39
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot have null partyName"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 172
    instance-of v0, p1, Lsun/security/x509/EDIPartyName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 173
    return v1

    .line 174
    :cond_6
    move-object v0, p1

    check-cast v0, Lsun/security/x509/EDIPartyName;

    iget-object v0, v0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 175
    .local v0, "otherAssigner":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 176
    if-eqz v0, :cond_1b

    .line 177
    return v1

    .line 179
    :cond_12
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 180
    return v1

    .line 182
    :cond_1b
    move-object v2, p1

    check-cast v2, Lsun/security/x509/EDIPartyName;

    iget-object v2, v2, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 183
    .local v2, "otherParty":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 184
    if-eqz v2, :cond_30

    .line 185
    return v1

    .line 187
    :cond_27
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 188
    return v1

    .line 190
    :cond_30
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getAssignerName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPartyName()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 115
    const/4 v0, 0x5

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 199
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 200
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 201
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 202
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 205
    :cond_26
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "subtreeDepth() not supported for EDIPartyName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EDIPartyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, ""

    goto :goto_2d

    .line 214
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  nameAssigner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  partyName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method
