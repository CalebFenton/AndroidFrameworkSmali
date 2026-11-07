.class public Lsun/security/provider/certpath/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist cert:Ljava/security/cert/X509Certificate;

.field private blacklist index:I

.field private blacklist throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/Vertex;->index:I

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist certToString()Ljava/lang/String;
    .registers 11

    .line 135
    const-string v0, "Vertex.certToString() unexpected exception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 139
    .local v2, "x509Cert":Lsun/security/x509/X509CertImpl;
    :try_start_8
    iget-object v3, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_e} :catch_da

    .line 146
    .end local v2    # "x509Cert":Lsun/security/x509/X509CertImpl;
    .local v3, "x509Cert":Lsun/security/x509/X509CertImpl;
    nop

    .line 148
    const-string v2, "Issuer:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, "Subject:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, "SerialNum:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, "Expires:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getIssuerUniqueID()[Z

    move-result-object v2

    .line 157
    .local v2, "iUID":[Z
    const/4 v5, 0x0

    if-eqz v2, :cond_7a

    .line 158
    const-string v6, "IssuerUID:  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    array-length v6, v2

    move v7, v5

    :goto_6d
    if-ge v7, v6, :cond_77

    aget-boolean v8, v2, v7

    .line 160
    .local v8, "b":Z
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .end local v8    # "b":Z
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 162
    :cond_77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_7a
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSubjectUniqueID()[Z

    move-result-object v6

    .line 165
    .local v6, "sUID":[Z
    if-eqz v6, :cond_93

    .line 166
    const-string v7, "SubjectUID: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    array-length v7, v6

    :goto_86
    if-ge v5, v7, :cond_90

    aget-boolean v8, v6, v5

    .line 168
    .restart local v8    # "b":Z
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .end local v8    # "b":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 170
    :cond_90
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_93
    nop

    .line 174
    :try_start_94
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    move-result-object v4
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_98} :catch_c8

    .line 175
    .local v4, "sKeyID":Lsun/security/x509/SubjectKeyIdentifierExtension;
    const-string v5, "key_id"

    if-eqz v4, :cond_ad

    .line 176
    :try_start_9c
    invoke-virtual {v4, v5}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;

    move-result-object v7

    .line 178
    .local v7, "keyID":Lsun/security/x509/KeyIdentifier;
    const-string v8, "SubjKeyID:  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .end local v7    # "keyID":Lsun/security/x509/KeyIdentifier;
    :cond_ad
    nop

    .line 181
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v7

    .line 182
    .local v7, "aKeyID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v7, :cond_c7

    .line 183
    invoke-virtual {v7, v5}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/KeyIdentifier;

    .line 185
    .local v5, "keyID":Lsun/security/x509/KeyIdentifier;
    const-string v8, "AuthKeyID:  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_c7} :catch_c8

    .line 192
    .end local v4    # "sKeyID":Lsun/security/x509/SubjectKeyIdentifierExtension;
    .end local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    .end local v7    # "aKeyID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    :cond_c7
    goto :goto_d5

    .line 187
    :catch_c8
    move-exception v4

    .line 188
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_d5

    .line 189
    sget-object v5, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    invoke-virtual {v5, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d5
    :goto_d5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    .end local v3    # "x509Cert":Lsun/security/x509/X509CertImpl;
    .end local v6    # "sUID":[Z
    .local v2, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_da
    move-exception v3

    .line 141
    .local v3, "ce":Ljava/security/cert/CertificateException;
    sget-object v4, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_e7

    .line 142
    sget-object v4, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    invoke-virtual {v4, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 145
    :cond_e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 73
    iget-object v0, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 84
    iget v0, p0, Lsun/security/provider/certpath/Vertex;->index:I

    return v0
.end method

.method public blacklist getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 105
    iget-object v0, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public blacklist indexToString()Ljava/lang/String;
    .registers 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist moreToString()Ljava/lang/String;
    .registers 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Last cert?  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const-string v1, "Yes"

    goto :goto_11

    :cond_f
    const-string v1, "No"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist setIndex(I)V
    .registers 2
    .param p1, "ndx"    # I

    .line 95
    iput p1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    .line 96
    return-void
.end method

.method blacklist setThrowable(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 115
    iput-object p1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    .line 116
    return-void
.end method

.method public blacklist throwableToString()Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    if-eqz v1, :cond_15

    .line 205
    iget-object v1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 207
    :cond_15
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_1a
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->indexToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
