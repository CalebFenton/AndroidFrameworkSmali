.class public Lcom/android/internal/org/bouncycastle/cert/DeltaCertificateTool;
.super Ljava/lang/Object;
.source "DeltaCertificateTool.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist extractDeltaCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 18
    .param p0, "originCert"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 54
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    .local v0, "deltaExtOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    .line 57
    .local v2, "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 68
    .local v3, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 69
    .local v4, "originTbs":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .line 70
    .local v5, "idx":I
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 72
    .local v6, "extracted":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    aput-object v8, v6, v7

    .line 73
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "idx":I
    .local v8, "idx":I
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v6, v9

    .line 75
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "idx":I
    .restart local v5    # "idx":I
    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 76
    .local v8, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_3f
    instance-of v10, v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-eqz v10, :cond_7a

    .line 78
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v10

    .line 79
    .local v10, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v15

    packed-switch v15, :pswitch_data_154

    goto :goto_72

    .line 91
    :pswitch_53
    move-object v12, v8

    check-cast v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v12, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v12

    aput-object v12, v6, v11

    goto :goto_72

    .line 88
    :pswitch_5d
    invoke-static {v10, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    aput-object v11, v6, v12

    .line 89
    goto :goto_72

    .line 85
    :pswitch_64
    invoke-static {v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    aput-object v11, v6, v14

    .line 86
    goto :goto_72

    .line 82
    :pswitch_6b
    invoke-static {v10, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    aput-object v11, v6, v13

    .line 83
    nop

    .line 94
    :goto_72
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "idx":I
    .local v11, "idx":I
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 95
    .end local v10    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    move v5, v11

    goto :goto_3f

    .line 97
    .end local v11    # "idx":I
    .restart local v5    # "idx":I
    :cond_7a
    const/4 v10, 0x6

    aput-object v8, v6, v10

    .line 99
    aget-object v10, v6, v13

    if-nez v10, :cond_87

    .line 101
    invoke-virtual {v4, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v13

    .line 104
    :cond_87
    aget-object v10, v6, v14

    if-nez v10, :cond_91

    .line 106
    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v14

    .line 109
    :cond_91
    aget-object v10, v6, v12

    if-nez v10, :cond_9b

    .line 111
    invoke-virtual {v4, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v12

    .line 114
    :cond_9b
    aget-object v10, v6, v11

    if-nez v10, :cond_a5

    .line 116
    invoke-virtual {v4, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v11

    .line 119
    :cond_a5
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/cert/DeltaCertificateTool;->extractExtensions(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v10

    .line 121
    .local v10, "extGen":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    sub-int/2addr v11, v9

    const/4 v15, 0x7

    if-ge v5, v11, :cond_f1

    .line 123
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "idx":I
    .restart local v11    # "idx":I
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 124
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 125
    .local v5, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    move/from16 v16, v9

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    if-ne v9, v12, :cond_e9

    .line 130
    invoke-static {v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 132
    .local v7, "deltaExts":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c8
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-eq v9, v12, :cond_dc

    .line 134
    invoke-virtual {v7, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v12

    .line 136
    .local v12, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v10, v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 132
    .end local v12    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    add-int/lit8 v9, v9, 0x1

    goto :goto_c8

    .line 139
    .end local v9    # "i":I
    :cond_dc
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v12

    invoke-direct {v9, v14, v12}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v9, v6, v15

    .line 140
    .end local v5    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v7    # "deltaExts":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    move v5, v11

    goto :goto_108

    .line 127
    .restart local v5    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_e9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "malformed delta extension"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 143
    .end local v11    # "idx":I
    .local v5, "idx":I
    :cond_f1
    move/from16 v16, v9

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_105

    .line 145
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v9

    invoke-direct {v7, v14, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v7, v6, v15

    goto :goto_108

    .line 149
    :cond_105
    const/4 v7, 0x0

    aput-object v7, v6, v15

    .line 153
    :goto_108
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 154
    .local v7, "tbsDeltaCertV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_10e
    array-length v11, v6

    if-eq v9, v11, :cond_11d

    .line 156
    aget-object v11, v6, v9

    if-eqz v11, :cond_11a

    .line 158
    aget-object v11, v6, v9

    invoke-virtual {v7, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    :cond_11a
    add-int/lit8 v9, v9, 0x1

    goto :goto_10e

    .line 162
    .end local v9    # "i":I
    :cond_11d
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 163
    .local v9, "certV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v7}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    aget-object v11, v6, v13

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    new-instance v11, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v11

    nop

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_64
        :pswitch_5d
        :pswitch_53
    .end packed-switch
.end method

.method private static blacklist extractExtensions(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .registers 7
    .param p0, "originTbs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 172
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 173
    .local v0, "deltaExtOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 174
    .local v1, "originExt":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 176
    .local v2, "extGen":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_38

    .line 178
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 179
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 181
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 176
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 185
    .end local v3    # "i":I
    :cond_38
    return-object v2
.end method

.method public static blacklist makeDeltaCertificateExtension(ZLcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 8
    .param p0, "isCritical"    # Z
    .param p1, "deltaCert"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 32
    .local v0, "deltaV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 33
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 36
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 37
    .local v1, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 40
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v3, v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 41
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 43
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 45
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    :cond_7b
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 49
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object v2
.end method
