.class public Lsun/security/x509/DistributionPointName;
.super Ljava/lang/Object;
.source "DistributionPointName.java"


# static fields
.field private static final blacklist TAG_FULL_NAME:B = 0x0t

.field private static final blacklist TAG_RELATIVE_NAME:B = 0x1t


# instance fields
.field private blacklist fullName:Lsun/security/x509/GeneralNames;

.field private volatile blacklist hashCode:I

.field private blacklist relativeName:Lsun/security/x509/RDN;


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "encoding"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    .line 90
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 133
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 135
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 136
    new-instance v0, Lsun/security/x509/GeneralNames;

    invoke-direct {v0, p1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    goto :goto_3b

    .line 138
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 139
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 141
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 142
    new-instance v0, Lsun/security/x509/RDN;

    invoke-direct {v0, p1}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    .line 148
    :goto_3b
    return-void

    .line 145
    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for DistributionPointName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/GeneralNames;)V
    .registers 4
    .param p1, "fullName"    # Lsun/security/x509/GeneralNames;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    .line 90
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    .line 103
    if-eqz p1, :cond_d

    .line 106
    iput-object p1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    .line 107
    return-void

    .line 104
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fullName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/RDN;)V
    .registers 4
    .param p1, "relativeName"    # Lsun/security/x509/RDN;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    .line 90
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    .line 118
    if-eqz p1, :cond_d

    .line 121
    iput-object p1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    .line 122
    return-void

    .line 119
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relativeName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 174
    .local v0, "theChoice":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    const/16 v2, -0x80

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    .line 175
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 176
    nop

    .line 177
    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    .line 176
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_28

    .line 181
    :cond_1b
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 182
    nop

    .line 183
    invoke-static {v2, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    .line 182
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 187
    :goto_28
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 197
    return v0

    .line 199
    :cond_4
    instance-of v1, p1, Lsun/security/x509/DistributionPointName;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 200
    return v2

    .line 202
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/DistributionPointName;

    .line 204
    .local v1, "other":Lsun/security/x509/DistributionPointName;
    iget-object v3, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    iget-object v4, v1, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    iget-object v4, v1, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    .line 205
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 204
    :goto_23
    return v0
.end method

.method public blacklist getFullName()Lsun/security/x509/GeneralNames;
    .registers 2

    .line 154
    iget-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getRelativeName()Lsun/security/x509/RDN;
    .registers 2

    .line 161
    iget-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 214
    iget v0, p0, Lsun/security/x509/DistributionPointName;->hashCode:I

    .line 215
    .local v0, "hash":I
    if-nez v0, :cond_1a

    .line 216
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_11

    .line 218
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_18

    .line 221
    :cond_11
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1}, Lsun/security/x509/RDN;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :goto_18
    iput v0, p0, Lsun/security/x509/DistributionPointName;->hashCode:I

    .line 225
    :cond_1a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    const-string v2, "\n"

    const-string v3, "DistributionPointName:\n     "

    if-eqz v1, :cond_28

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 237
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
