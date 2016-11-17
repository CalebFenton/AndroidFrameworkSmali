.class public Lsun/security/x509/DistributionPointName;
.super Ljava/lang/Object;
.source "DistributionPointName.java"


# static fields
.field private static final TAG_FULL_NAME:B = 0x0t

.field private static final TAG_RELATIVE_NAME:B = 0x1t


# instance fields
.field private fullName:Lsun/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private relativeName:Lsun/security/x509/RDN;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 2
    .param p1, "encoding"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 89
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@6
    .line 90
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@8
    .line 132
    const/4 v0, 0x0

    #@9
    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 133
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@12
    move-result v0

    #@13
    .line 132
    if-eqz v0, :cond_0

    #@15
    .line 135
    const/16 v0, 0x30

    #@17
    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    #@1a
    .line 136
    new-instance v0, Lsun/security/x509/GeneralNames;

    #@1c
    invoke-direct {v0, p1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@1f
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@21
    .line 130
    :goto_0
    return-void

    #@22
    .line 138
    :cond_0
    const/4 v0, 0x1

    #@23
    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 139
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@2c
    move-result v0

    #@2d
    .line 138
    if-eqz v0, :cond_1

    #@2f
    .line 141
    const/16 v0, 0x31

    #@31
    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    #@34
    .line 142
    new-instance v0, Lsun/security/x509/RDN;

    #@36
    invoke-direct {v0, p1}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    #@39
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@3b
    goto :goto_0

    #@3c
    .line 145
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@3e
    const-string/jumbo v1, "Invalid encoding for DistributionPointName"

    #@41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;)V
    .locals 2
    .param p1, "fullName"    # Lsun/security/x509/GeneralNames;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 89
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@6
    .line 90
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@8
    .line 103
    if-nez p1, :cond_0

    #@a
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "fullName must not be null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 106
    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@15
    .line 101
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;)V
    .locals 2
    .param p1, "relativeName"    # Lsun/security/x509/RDN;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 89
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@6
    .line 90
    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@8
    .line 118
    if-nez p1, :cond_0

    #@a
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "relativeName must not be null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 121
    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@15
    .line 116
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 247
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, -0x80

    #@2
    const/4 v2, 0x1

    #@3
    .line 172
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@5
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8
    .line 174
    .local v0, "theChoice":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 175
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@e
    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    #@11
    .line 177
    const/4 v1, 0x0

    #@12
    invoke-static {v3, v2, v1}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@15
    move-result v1

    #@16
    .line 176
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@19
    .line 170
    :goto_0
    return-void

    #@1a
    .line 181
    :cond_0
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@1c
    invoke-virtual {v1, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    #@1f
    .line 183
    invoke-static {v3, v2, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@22
    move-result v1

    #@23
    .line 182
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@26
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 196
    if-ne p0, p1, :cond_0

    #@3
    .line 197
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 199
    :cond_0
    instance-of v2, p1, Lsun/security/x509/DistributionPointName;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 200
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 202
    nop

    #@c
    nop

    #@d
    .line 204
    .local v0, "other":Lsun/security/x509/DistributionPointName;
    iget-object v2, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@f
    iget-object v3, v0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@11
    invoke-static {v2, v3}, Lsun/security/x509/DistributionPointName;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 205
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@19
    iget-object v2, v0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@1b
    invoke-static {v1, v2}, Lsun/security/x509/DistributionPointName;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 204
    :cond_2
    return v1
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 214
    iget v0, p0, Lsun/security/x509/DistributionPointName;->hashCode:I

    #@2
    .line 215
    .local v0, "hash":I
    if-nez v0, :cond_0

    #@4
    .line 217
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 218
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@a
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/lit8 v0, v1, 0x1

    #@10
    .line 223
    :goto_0
    iput v0, p0, Lsun/security/x509/DistributionPointName;->hashCode:I

    #@12
    .line 225
    :cond_0
    return v0

    #@13
    .line 221
    :cond_1
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@15
    invoke-virtual {v1}, Lsun/security/x509/RDN;->hashCode()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v0, v1, 0x1

    #@1b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 234
    const-string/jumbo v1, "DistributionPointName:\n     "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "\n"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 240
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 237
    :cond_0
    const-string/jumbo v1, "DistributionPointName:\n     "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "\n"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_0
.end method
