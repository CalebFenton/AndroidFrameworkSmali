.class public Lsun/security/x509/PolicyInformation;
.super Ljava/lang/Object;
.source "PolicyInformation.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "PolicyInformation"

.field public static final QUALIFIERS:Ljava/lang/String; = "qualifiers"


# instance fields
.field private policyIdentifier:Lsun/security/x509/CertificatePolicyId;

.field private policyQualifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x30

    #@2
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 103
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    #@7
    if-eq v1, v3, :cond_0

    #@9
    .line 104
    new-instance v1, Ljava/io/IOException;

    #@b
    const-string/jumbo v2, "Invalid encoding of PolicyInformation"

    #@e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 106
    :cond_0
    new-instance v1, Lsun/security/x509/CertificatePolicyId;

    #@14
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@16
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    #@1d
    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@1f
    .line 107
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@21
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 108
    new-instance v1, Ljava/util/LinkedHashSet;

    #@29
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@2c
    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@2e
    .line 109
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@30
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@33
    move-result-object v0

    #@34
    .line 110
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    #@36
    if-eq v1, v3, :cond_1

    #@38
    .line 111
    new-instance v1, Ljava/io/IOException;

    #@3a
    const-string/jumbo v2, "Invalid encoding of PolicyInformation"

    #@3d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 112
    :cond_1
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@43
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@46
    move-result v1

    #@47
    if-nez v1, :cond_2

    #@49
    .line 113
    new-instance v1, Ljava/io/IOException;

    #@4b
    const-string/jumbo v2, "No data available in policyQualifiers"

    #@4e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    .line 114
    :cond_2
    :goto_0
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@54
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_4

    #@5a
    .line 115
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@5c
    new-instance v2, Ljava/security/cert/PolicyQualifierInfo;

    #@5e
    .line 116
    iget-object v3, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@60
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    #@67
    move-result-object v3

    #@68
    .line 115
    invoke-direct {v2, v3}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    #@6b
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_0

    #@6f
    .line 118
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@72
    move-result-object v1

    #@73
    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@75
    .line 102
    :cond_4
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/CertificatePolicyId;Ljava/util/Set;)V
    .locals 2
    .param p1, "policyIdentifier"    # Lsun/security/x509/CertificatePolicyId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/CertificatePolicyId;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p2, "policyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    if-nez p2, :cond_0

    #@5
    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "policyQualifiers is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 91
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    #@10
    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@13
    .line 90
    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@15
    .line 92
    iput-object p1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@17
    .line 86
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    const-string/jumbo v0, "qualifiers"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 226
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@f
    .line 224
    return-void

    #@10
    .line 227
    :cond_0
    const-string/jumbo v0, "id"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 228
    new-instance v0, Ljava/io/IOException;

    #@1b
    const-string/jumbo v1, "Attribute ID may not be deleted from PolicyInformation."

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 232
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Attribute name ["

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 233
    const-string/jumbo v2, "] not recognized by PolicyInformation."

    #@37
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
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
    const/16 v5, 0x30

    #@2
    .line 272
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@4
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@7
    .line 273
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@9
    invoke-virtual {v4, v2}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 274
    iget-object v4, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@e
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 275
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@16
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@19
    .line 276
    .local v3, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "pq$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/security/cert/PolicyQualifierInfo;

    #@2b
    .line 277
    .local v0, "pq":Ljava/security/cert/PolicyQualifierInfo;
    invoke-virtual {v0}, Ljava/security/cert/PolicyQualifierInfo;->getEncoded()[B

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->write([B)V

    #@32
    goto :goto_0

    #@33
    .line 279
    .end local v0    # "pq":Ljava/security/cert/PolicyQualifierInfo;
    :cond_0
    invoke-virtual {v2, v5, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@36
    .line 281
    .end local v1    # "pq$iterator":Ljava/util/Iterator;
    .end local v3    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_1
    invoke-virtual {p1, v5, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@39
    .line 271
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 129
    instance-of v1, p1, Lsun/security/x509/PolicyInformation;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 130
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 131
    check-cast v0, Lsun/security/x509/PolicyInformation;

    #@9
    .line 133
    .local v0, "piOther":Lsun/security/x509/PolicyInformation;
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@b
    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Lsun/security/x509/CertificatePolicyId;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 134
    return v3

    #@16
    .line 136
    :cond_1
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@18
    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    const-string/jumbo v0, "id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 177
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@b
    return-object v0

    #@c
    .line 178
    :cond_0
    const-string/jumbo v0, "qualifiers"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 179
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@17
    return-object v0

    #@18
    .line 181
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Attribute name ["

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 182
    const-string/jumbo v2, "] not recognized by PolicyInformation."

    #@2d
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 243
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "id"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 244
    const-string/jumbo v1, "qualifiers"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 246
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 253
    const-string/jumbo v0, "PolicyInformation"

    #@3
    return-object v0
.end method

.method public getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@2
    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@2
    invoke-virtual {v1}, Lsun/security/x509/CertificatePolicyId;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, 0x25

    #@8
    .line 146
    .local v0, "myhash":I
    mul-int/lit8 v1, v0, 0x25

    #@a
    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@c
    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 147
    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    const-string/jumbo v2, "id"

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 191
    instance-of v2, p2, Lsun/security/x509/CertificatePolicyId;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 192
    check-cast p2, Lsun/security/x509/CertificatePolicyId;

    #@f
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@11
    .line 189
    :goto_0
    return-void

    #@12
    .line 194
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@14
    const-string/jumbo v3, "Attribute value must be instance of CertificatePolicyId."

    #@17
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 196
    :cond_1
    const-string/jumbo v2, "qualifiers"

    #@1e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_6

    #@24
    .line 197
    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@26
    if-nez v2, :cond_2

    #@28
    .line 198
    new-instance v2, Ljava/io/IOException;

    #@2a
    const-string/jumbo v3, "Attribute must have a CertificatePolicyIdentifier value before PolicyQualifierInfo can be set."

    #@2d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 202
    :cond_2
    instance-of v2, p2, Ljava/util/Set;

    #@33
    if-eqz v2, :cond_5

    #@35
    move-object v2, p2

    #@36
    .line 203
    check-cast v2, Ljava/util/Set;

    #@38
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v0

    #@3c
    .line 204
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_4

    #@42
    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .line 206
    .local v1, "obj1":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/cert/PolicyQualifierInfo;

    #@48
    if-nez v2, :cond_3

    #@4a
    .line 207
    new-instance v2, Ljava/io/IOException;

    #@4c
    const-string/jumbo v3, "Attribute value must be aSet of PolicyQualifierInfo objects."

    #@4f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 211
    .end local v1    # "obj1":Ljava/lang/Object;
    :cond_4
    check-cast p2, Ljava/util/Set;

    #@55
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@57
    goto :goto_0

    #@58
    .line 213
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v2, Ljava/io/IOException;

    #@5a
    const-string/jumbo v3, "Attribute value must be of type Set."

    #@5d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 216
    :cond_6
    new-instance v2, Ljava/io/IOException;

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "Attribute name ["

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    .line 217
    const-string/jumbo v4, "] not recognized by PolicyInformation"

    #@76
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@81
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "  ["

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    #@10
    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    .line 261
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "  ]\n"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method
