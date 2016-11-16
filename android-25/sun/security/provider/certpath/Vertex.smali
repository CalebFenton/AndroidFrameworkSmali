.class public Lsun/security/provider/certpath/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private cert:Ljava/security/cert/X509Certificate;

.field private index:I

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    #@9
    .line 49
    return-void
.end method

.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    #@5
    .line 64
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lsun/security/provider/certpath/Vertex;->index:I

    #@8
    .line 62
    return-void
.end method


# virtual methods
.method public certToString()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 137
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    #@8
    .line 139
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    :try_start_0
    iget-object v10, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    #@a
    invoke-static {v10}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v9

    #@e
    .line 148
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    const-string/jumbo v10, "Issuer:     "

    #@11
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v10

    #@15
    .line 149
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@18
    move-result-object v13

    #@19
    .line 148
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v10

    #@1d
    .line 149
    const-string/jumbo v13, "\n"

    #@20
    .line 148
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 150
    const-string/jumbo v10, "Subject:    "

    #@26
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v10

    #@2a
    .line 151
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@2d
    move-result-object v13

    #@2e
    .line 150
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v10

    #@32
    .line 151
    const-string/jumbo v13, "\n"

    #@35
    .line 150
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 152
    const-string/jumbo v10, "SerialNum:  "

    #@3b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v10

    #@3f
    .line 153
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    #@42
    move-result-object v13

    #@43
    const/16 v14, 0x10

    #@45
    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@48
    move-result-object v13

    #@49
    .line 152
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    .line 153
    const-string/jumbo v13, "\n"

    #@50
    .line 152
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 154
    const-string/jumbo v10, "Expires:    "

    #@56
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    .line 155
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    #@5d
    move-result-object v13

    #@5e
    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@61
    move-result-object v13

    #@62
    .line 154
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    .line 155
    const-string/jumbo v13, "\n"

    #@69
    .line 154
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 156
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getIssuerUniqueID()[Z

    #@6f
    move-result-object v4

    #@70
    .line 157
    .local v4, "iUID":[Z
    if-eqz v4, :cond_3

    #@72
    .line 158
    const-string/jumbo v10, "IssuerUID:  "

    #@75
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 159
    array-length v14, v4

    #@79
    move v13, v12

    #@7a
    :goto_0
    if-ge v13, v14, :cond_2

    #@7c
    aget-boolean v1, v4, v13

    #@7e
    .line 160
    .local v1, "b":Z
    if-eqz v1, :cond_1

    #@80
    move v10, v11

    #@81
    :goto_1
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    .line 159
    add-int/lit8 v10, v13, 0x1

    #@86
    move v13, v10

    #@87
    goto :goto_0

    #@88
    .line 140
    .end local v1    # "b":Z
    .end local v4    # "iUID":[Z
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v2

    #@89
    .line 141
    .local v2, "ce":Ljava/security/cert/CertificateException;
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    #@8b
    if-eqz v10, :cond_0

    #@8d
    .line 142
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    #@8f
    const-string/jumbo v11, "Vertex.certToString() unexpected exception"

    #@92
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@95
    .line 143
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@98
    .line 145
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v10

    #@9c
    return-object v10

    #@9d
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "b":Z
    .restart local v4    # "iUID":[Z
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    :cond_1
    move v10, v12

    #@9e
    .line 160
    goto :goto_1

    #@9f
    .line 162
    .end local v1    # "b":Z
    :cond_2
    const-string/jumbo v10, "\n"

    #@a2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 164
    :cond_3
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSubjectUniqueID()[Z

    #@a8
    move-result-object v7

    #@a9
    .line 165
    .local v7, "sUID":[Z
    if-eqz v7, :cond_6

    #@ab
    .line 166
    const-string/jumbo v10, "SubjectUID: "

    #@ae
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 167
    array-length v14, v7

    #@b2
    move v13, v12

    #@b3
    :goto_2
    if-ge v13, v14, :cond_5

    #@b5
    aget-boolean v1, v7, v13

    #@b7
    .line 168
    .restart local v1    # "b":Z
    if-eqz v1, :cond_4

    #@b9
    move v10, v11

    #@ba
    :goto_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    .line 167
    add-int/lit8 v10, v13, 0x1

    #@bf
    move v13, v10

    #@c0
    goto :goto_2

    #@c1
    :cond_4
    move v10, v12

    #@c2
    .line 168
    goto :goto_3

    #@c3
    .line 170
    .end local v1    # "b":Z
    :cond_5
    const-string/jumbo v10, "\n"

    #@c6
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 174
    :cond_6
    :try_start_1
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@cc
    move-result-object v6

    #@cd
    .line 175
    .local v6, "sKeyID":Lsun/security/x509/SubjectKeyIdentifierExtension;
    if-eqz v6, :cond_7

    #@cf
    .line 177
    const-string/jumbo v10, "key_id"

    #@d2
    .line 176
    invoke-virtual {v6, v10}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;

    #@d5
    move-result-object v5

    #@d6
    .line 178
    .local v5, "keyID":Lsun/security/x509/KeyIdentifier;
    const-string/jumbo v10, "SubjKeyID:  "

    #@d9
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v10

    #@dd
    invoke-virtual {v5}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    #@e0
    move-result-object v11

    #@e1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    .line 181
    .end local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    :cond_7
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@e7
    move-result-object v0

    #@e8
    .line 182
    .local v0, "aKeyID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_8

    #@ea
    .line 184
    const-string/jumbo v10, "key_id"

    #@ed
    .line 183
    invoke-virtual {v0, v10}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@f0
    move-result-object v5

    #@f1
    check-cast v5, Lsun/security/x509/KeyIdentifier;

    #@f3
    .line 185
    .restart local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    const-string/jumbo v10, "AuthKeyID:  "

    #@f6
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v10

    #@fa
    invoke-virtual {v5}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    #@fd
    move-result-object v11

    #@fe
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@101
    .line 193
    .end local v0    # "aKeyID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    .end local v6    # "sKeyID":Lsun/security/x509/SubjectKeyIdentifierExtension;
    :cond_8
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v10

    #@105
    return-object v10

    #@106
    .line 187
    :catch_1
    move-exception v3

    #@107
    .line 188
    .local v3, "e":Ljava/io/IOException;
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    #@109
    if-eqz v10, :cond_8

    #@10b
    .line 189
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    #@10d
    const-string/jumbo v11, "Vertex.certToString() unexpected exception"

    #@110
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@113
    .line 190
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    #@116
    goto :goto_4
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Lsun/security/provider/certpath/Vertex;->index:I

    #@2
    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public indexToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Index:      "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\n"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public moreToString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "Last cert?  "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const-string/jumbo v1, "Yes"

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 222
    const-string/jumbo v1, "\n"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 221
    :cond_0
    const-string/jumbo v1, "No"

    #@21
    goto :goto_0
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "ndx"    # I

    #@0
    .prologue
    .line 95
    iput p1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    #@2
    .line 94
    return-void
.end method

.method setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 115
    iput-object p1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    #@2
    .line 114
    return-void
.end method

.method public throwableToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "Exception:  "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 205
    iget-object v1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    #@e
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 208
    :goto_0
    const-string/jumbo v1, "\n"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 207
    :cond_0
    const-string/jumbo v1, "null"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->indexToString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
