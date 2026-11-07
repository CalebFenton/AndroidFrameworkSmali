.class public Lsun/security/x509/PolicyInformation;
.super Ljava/lang/Object;
.source "PolicyInformation.java"


# static fields
.field public static final blacklist ID:Ljava/lang/String; = "id"

.field public static final blacklist NAME:Ljava/lang/String; = "PolicyInformation"

.field public static final blacklist QUALIFIERS:Ljava/lang/String; = "qualifiers"


# instance fields
.field private blacklist policyIdentifier:Lsun/security/x509/CertificatePolicyId;

.field private blacklist policyQualifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const-string v1, "Invalid encoding of PolicyInformation"

    const/16 v2, 0x30

    if-ne v0, v2, :cond_6c

    .line 106
    new-instance v0, Lsun/security/x509/CertificatePolicyId;

    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-direct {v0, v3}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    .line 107
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_65

    .line 108
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 109
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 110
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    if-ne v3, v2, :cond_5f

    .line 112
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_57

    .line 114
    :goto_39
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_56

    .line 115
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    new-instance v2, Ljava/security/cert/PolicyQualifierInfo;

    iget-object v3, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 116
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    .line 115
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 117
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_56
    goto :goto_6b

    .line 113
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    :cond_57
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No data available in policyQualifiers"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_5f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 120
    :goto_6b
    return-void

    .line 104
    :cond_6c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/CertificatePolicyId;Ljava/util/Set;)V
    .registers 5
    .param p1, "policyIdentifier"    # Lsun/security/x509/CertificatePolicyId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/CertificatePolicyId;",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    .local p2, "policyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p2, :cond_f

    .line 90
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 92
    iput-object p1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    .line 93
    return-void

    .line 88
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "policyQualifiers is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const-string v0, "qualifiers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 236
    return-void

    .line 228
    :cond_f
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 229
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute ID may not be deleted from PolicyInformation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by PolicyInformation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 273
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 274
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 275
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/16 v2, 0x30

    if-nez v1, :cond_36

    .line 276
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 277
    .local v1, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PolicyQualifierInfo;

    .line 278
    .local v4, "pq":Ljava/security/cert/PolicyQualifierInfo;
    invoke-virtual {v4}, Ljava/security/cert/PolicyQualifierInfo;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 279
    .end local v4    # "pq":Ljava/security/cert/PolicyQualifierInfo;
    goto :goto_1f

    .line 280
    :cond_33
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 282
    .end local v1    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_36
    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 283
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 129
    instance-of v0, p1, Lsun/security/x509/PolicyInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 130
    return v1

    .line 131
    :cond_6
    move-object v0, p1

    check-cast v0, Lsun/security/x509/PolicyInformation;

    .line 133
    .local v0, "piOther":Lsun/security/x509/PolicyInformation;
    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificatePolicyId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 134
    return v1

    .line 136
    :cond_16
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    return-object v0

    .line 178
    :cond_b
    const-string v0, "qualifiers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 179
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    return-object v0

    .line 181
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by PolicyInformation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 244
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 245
    const-string v1, "qualifiers"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 254
    const-string v0, "PolicyInformation"

    return-object v0
.end method

.method public blacklist getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;
    .registers 2

    .line 157
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    return-object v0
.end method

.method public blacklist getPolicyQualifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 145
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v0}, Lsun/security/x509/CertificatePolicyId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    .line 146
    .local v0, "myhash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    .end local v0    # "myhash":I
    .local v1, "myhash":I
    return v1
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 192
    instance-of v0, p2, Lsun/security/x509/CertificatePolicyId;

    if-eqz v0, :cond_12

    .line 193
    move-object v0, p2

    check-cast v0, Lsun/security/x509/CertificatePolicyId;

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    goto :goto_4e

    .line 195
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value must be instance of CertificatePolicyId."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1a
    const-string v0, "qualifiers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 198
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    if-eqz v0, :cond_57

    .line 203
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_4f

    .line 204
    move-object v0, p2

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, "obj1":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/cert/PolicyQualifierInfo;

    if-eqz v2, :cond_40

    .line 211
    .end local v1    # "obj1":Ljava/lang/Object;
    goto :goto_31

    .line 208
    .restart local v1    # "obj1":Ljava/lang/Object;
    :cond_40
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Attribute value must be aSet of PolicyQualifierInfo objects."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v1    # "obj1":Ljava/lang/Object;
    :cond_48
    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 213
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    nop

    .line 220
    :goto_4e
    return-void

    .line 214
    :cond_4f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value must be of type Set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must have a CertificatePolicyIdentifier value before PolicyQualifierInfo can be set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_5f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by PolicyInformation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "s":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
