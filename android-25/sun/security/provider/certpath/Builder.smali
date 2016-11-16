.class public abstract Lsun/security/provider/certpath/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# static fields
.field static final USE_AIA:Z

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field final buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

.field private matchingPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final targetCertConstraints:Ljava/security/cert/X509CertSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@9
    .line 67
    new-instance v0, Lsun/security/action/GetBooleanAction;

    #@b
    const-string/jumbo v1, "com.sun.security.enableAIAcaIssuers"

    #@e
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@11
    .line 66
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Boolean;

    #@17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1a
    move-result v0

    #@1b
    sput-boolean v0, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    #@1d
    .line 54
    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 1
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@5
    .line 77
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/security/cert/X509CertSelector;

    #@b
    .line 76
    iput-object v0, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@d
    .line 74
    return-void
.end method

.method static distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I
    .locals 2
    .param p0, "base"    # Lsun/security/x509/GeneralNameInterface;
    .param p1, "test"    # Lsun/security/x509/GeneralNameInterface;
    .param p2, "incomparable"    # I

    #@0
    .prologue
    .line 146
    invoke-interface {p0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 165
    return p2

    #@8
    .line 148
    :pswitch_0
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 149
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@e
    const-string/jumbo v1, "Builder.distance(): Names are different types"

    #@11
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@14
    .line 151
    :cond_0
    return p2

    #@15
    .line 153
    :pswitch_1
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 154
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@1b
    const-string/jumbo v1, "Builder.distance(): Names are same type but in different subtrees"

    #@1e
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@21
    .line 157
    :cond_1
    return p2

    #@22
    .line 159
    :pswitch_2
    const/4 v0, 0x0

    #@23
    return v0

    #@24
    .line 169
    :pswitch_3
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    #@27
    move-result v0

    #@28
    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    #@2b
    move-result v1

    #@2c
    sub-int/2addr v0, v1

    #@2d
    return v0

    #@2e
    .line 146
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method static hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I
    .locals 9
    .param p0, "base"    # Lsun/security/x509/GeneralNameInterface;
    .param p1, "test"    # Lsun/security/x509/GeneralNameInterface;
    .param p2, "incomparable"    # I

    #@0
    .prologue
    .line 192
    invoke-interface {p0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@3
    move-result v2

    #@4
    .line 193
    .local v2, "baseRtest":I
    packed-switch v2, :pswitch_data_0

    #@7
    .line 212
    return p2

    #@8
    .line 195
    :pswitch_0
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@a
    if-eqz v7, :cond_0

    #@c
    .line 196
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@e
    const-string/jumbo v8, "Builder.hops(): Names are different types"

    #@11
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@14
    .line 198
    :cond_0
    return p2

    #@15
    .line 204
    :pswitch_1
    const/4 v7, 0x0

    #@16
    return v7

    #@17
    .line 207
    :pswitch_2
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    #@1a
    move-result v7

    #@1b
    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    #@1e
    move-result v8

    #@1f
    sub-int/2addr v7, v8

    #@20
    return v7

    #@21
    .line 210
    :pswitch_3
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    #@24
    move-result v7

    #@25
    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    #@28
    move-result v8

    #@29
    sub-int/2addr v7, v8

    #@2a
    return v7

    #@2b
    .line 216
    :pswitch_4
    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@2e
    move-result v7

    #@2f
    const/4 v8, 0x4

    #@30
    if-eq v7, v8, :cond_2

    #@32
    .line 217
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@34
    if-eqz v7, :cond_1

    #@36
    .line 218
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@38
    const-string/jumbo v8, "Builder.hops(): hopDistance not implemented for this name type"

    #@3b
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3e
    .line 221
    :cond_1
    return p2

    #@3f
    :cond_2
    move-object v1, p0

    #@40
    .line 223
    check-cast v1, Lsun/security/x509/X500Name;

    #@42
    .local v1, "baseName":Lsun/security/x509/X500Name;
    move-object v6, p1

    #@43
    .line 224
    check-cast v6, Lsun/security/x509/X500Name;

    #@45
    .line 225
    .local v6, "testName":Lsun/security/x509/X500Name;
    invoke-virtual {v1, v6}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    #@48
    move-result-object v4

    #@49
    .line 226
    .local v4, "commonName":Lsun/security/x509/X500Name;
    if-nez v4, :cond_4

    #@4b
    .line 227
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@4d
    if-eqz v7, :cond_3

    #@4f
    .line 228
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@51
    const-string/jumbo v8, "Builder.hops(): Names are in different namespaces"

    #@54
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@57
    .line 231
    :cond_3
    return p2

    #@58
    .line 233
    :cond_4
    invoke-virtual {v4}, Lsun/security/x509/X500Name;->subtreeDepth()I

    #@5b
    move-result v3

    #@5c
    .line 234
    .local v3, "commonDistance":I
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->subtreeDepth()I

    #@5f
    move-result v0

    #@60
    .line 235
    .local v0, "baseDistance":I
    invoke-virtual {v6}, Lsun/security/x509/X500Name;->subtreeDepth()I

    #@63
    move-result v5

    #@64
    .line 236
    .local v5, "testDistance":I
    add-int v7, v0, v5

    #@66
    mul-int/lit8 v8, v3, 0x2

    #@68
    sub-int/2addr v7, v8

    #@69
    return v7

    #@6a
    .line 193
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I
    .locals 19
    .param p0, "constraints"    # Lsun/security/x509/NameConstraintsExtension;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "target"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    if-eqz p0, :cond_0

    #@2
    invoke-virtual/range {p0 .. p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    #@5
    move-result v16

    #@6
    if-eqz v16, :cond_1

    #@8
    .line 292
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v5

    #@c
    .line 297
    .local v5, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@f
    move-result-object v16

    #@10
    invoke-static/range {v16 .. v16}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@13
    move-result-object v15

    #@14
    .line 298
    .local v15, "subject":Lsun/security/x509/X500Name;
    move-object/from16 v0, p2

    #@16
    invoke-virtual {v15, v0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v16

    #@1a
    if-eqz v16, :cond_2

    #@1c
    .line 300
    const/16 v16, 0x0

    #@1e
    return v16

    #@1f
    .line 286
    .end local v5    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v15    # "subject":Lsun/security/x509/X500Name;
    :cond_1
    new-instance v16, Ljava/io/IOException;

    #@21
    const-string/jumbo v17, "certificate does not satisfy existing name constraints"

    #@24
    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v16

    #@28
    .line 293
    :catch_0
    move-exception v7

    #@29
    .line 294
    .local v7, "e":Ljava/security/cert/CertificateException;
    new-instance v16, Ljava/io/IOException;

    #@2b
    const-string/jumbo v17, "Invalid certificate"

    #@2e
    move-object/from16 v0, v16

    #@30
    move-object/from16 v1, v17

    #@32
    invoke-direct {v0, v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v16

    #@36
    .line 304
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .restart local v5    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "subject":Lsun/security/x509/X500Name;
    :cond_2
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    #@39
    move-result-object v3

    #@3a
    .line 305
    .local v3, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v3, :cond_4

    #@3c
    .line 307
    const-string/jumbo v16, "subject_name"

    #@3f
    .line 306
    move-object/from16 v0, v16

    #@41
    invoke-virtual {v3, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    #@44
    move-result-object v4

    #@45
    .line 309
    .local v4, "altNames":Lsun/security/x509/GeneralNames;
    if-eqz v4, :cond_4

    #@47
    .line 310
    const/4 v10, 0x0

    #@48
    .local v10, "j":I
    invoke-virtual {v4}, Lsun/security/x509/GeneralNames;->size()I

    #@4b
    move-result v11

    #@4c
    .local v11, "n":I
    :goto_0
    if-ge v10, v11, :cond_4

    #@4e
    .line 311
    invoke-virtual {v4, v10}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    #@51
    move-result-object v16

    #@52
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@55
    move-result-object v2

    #@56
    .line 312
    .local v2, "altName":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v16

    #@5c
    if-eqz v16, :cond_3

    #@5e
    .line 313
    const/16 v16, 0x0

    #@60
    return v16

    #@61
    .line 310
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@63
    goto :goto_0

    #@64
    .line 323
    .end local v2    # "altName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "altNames":Lsun/security/x509/GeneralNames;
    .end local v10    # "j":I
    .end local v11    # "n":I
    :cond_4
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    #@67
    move-result-object v12

    #@68
    .line 324
    .local v12, "ncExt":Lsun/security/x509/NameConstraintsExtension;
    if-nez v12, :cond_5

    #@6a
    .line 325
    const/16 v16, -0x1

    #@6c
    return v16

    #@6d
    .line 329
    :cond_5
    if-eqz p0, :cond_9

    #@6f
    .line 330
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v12}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V

    #@74
    .line 338
    :goto_1
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@76
    if-eqz v16, :cond_6

    #@78
    .line 339
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@7a
    new-instance v17, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v18, "Builder.targetDistance() merged constraints: "

    #@82
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v17

    #@86
    .line 340
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v18

    #@8a
    .line 339
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v17

    #@8e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v17

    #@92
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@95
    .line 344
    :cond_6
    const-string/jumbo v16, "permitted_subtrees"

    #@98
    move-object/from16 v0, p0

    #@9a
    move-object/from16 v1, v16

    #@9c
    invoke-virtual {v0, v1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@9f
    move-result-object v14

    #@a0
    .line 346
    .local v14, "permitted":Lsun/security/x509/GeneralSubtrees;
    const-string/jumbo v16, "excluded_subtrees"

    #@a3
    move-object/from16 v0, p0

    #@a5
    move-object/from16 v1, v16

    #@a7
    invoke-virtual {v0, v1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@aa
    move-result-object v8

    #@ab
    .line 347
    .local v8, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v14, :cond_7

    #@ad
    .line 348
    invoke-virtual {v14, v8}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    #@b0
    .line 350
    :cond_7
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@b2
    if-eqz v16, :cond_8

    #@b4
    .line 351
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@b6
    new-instance v17, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v18, "Builder.targetDistance() reduced constraints: "

    #@be
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v17

    #@c2
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v17

    #@c8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v17

    #@cc
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@cf
    .line 355
    :cond_8
    move-object/from16 v0, p0

    #@d1
    move-object/from16 v1, p2

    #@d3
    invoke-virtual {v0, v1}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    #@d6
    move-result v16

    #@d7
    if-nez v16, :cond_a

    #@d9
    .line 356
    new-instance v16, Ljava/io/IOException;

    #@db
    const-string/jumbo v17, "New certificate not allowed to sign certificate for target"

    #@de
    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e1
    throw v16

    #@e2
    .line 335
    .end local v8    # "excluded":Lsun/security/x509/GeneralSubtrees;
    .end local v14    # "permitted":Lsun/security/x509/GeneralSubtrees;
    :cond_9
    invoke-virtual {v12}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    #@e5
    move-result-object p0

    #@e6
    .end local p0    # "constraints":Lsun/security/x509/NameConstraintsExtension;
    check-cast p0, Lsun/security/x509/NameConstraintsExtension;

    #@e8
    .restart local p0    # "constraints":Lsun/security/x509/NameConstraintsExtension;
    goto :goto_1

    #@e9
    .line 360
    .restart local v8    # "excluded":Lsun/security/x509/GeneralSubtrees;
    .restart local v14    # "permitted":Lsun/security/x509/GeneralSubtrees;
    :cond_a
    if-nez v14, :cond_b

    #@eb
    .line 362
    const/16 v16, -0x1

    #@ed
    return v16

    #@ee
    .line 364
    :cond_b
    const/4 v9, 0x0

    #@ef
    .local v9, "i":I
    invoke-virtual {v14}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@f2
    move-result v11

    #@f3
    .restart local v11    # "n":I
    :goto_2
    if-ge v9, v11, :cond_d

    #@f5
    .line 365
    invoke-virtual {v14, v9}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@f8
    move-result-object v16

    #@f9
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    #@fc
    move-result-object v16

    #@fd
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@100
    move-result-object v13

    #@101
    .line 366
    .local v13, "perName":Lsun/security/x509/GeneralNameInterface;
    const/16 v16, -0x1

    #@103
    move-object/from16 v0, p2

    #@105
    move/from16 v1, v16

    #@107
    invoke-static {v13, v0, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@10a
    move-result v6

    #@10b
    .line 367
    .local v6, "distance":I
    if-ltz v6, :cond_c

    #@10d
    .line 368
    add-int/lit8 v16, v6, 0x1

    #@10f
    return v16

    #@110
    .line 364
    :cond_c
    add-int/lit8 v9, v9, 0x1

    #@112
    goto :goto_2

    #@113
    .line 372
    .end local v6    # "distance":I
    .end local v13    # "perName":Lsun/security/x509/GeneralNameInterface;
    :cond_d
    const/16 v16, -0x1

    #@115
    return v16
.end method


# virtual methods
.method abstract addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation
.end method

.method addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z
    .locals 12
    .param p1, "selector"    # Ljava/security/cert/X509CertSelector;
    .param p4, "checkAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 432
    .local p2, "certStores":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CertStore;>;"
    .local p3, "resultCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v8

    #@4
    .line 433
    .local v8, "targetCert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_3

    #@6
    .line 435
    invoke-virtual {p1, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@9
    move-result v9

    #@a
    if-eqz v9, :cond_0

    #@c
    .line 436
    iget-object v9, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@e
    invoke-virtual {v9}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@11
    move-result-object v9

    #@12
    .line 435
    invoke-static {v8, v9}, Lsun/security/x509/X509CertImpl;->isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@15
    move-result v9

    #@16
    if-eqz v9, :cond_1

    #@18
    .line 442
    :cond_0
    const/4 v9, 0x0

    #@19
    return v9

    #@1a
    .line 437
    :cond_1
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v9, :cond_2

    #@1e
    .line 438
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@20
    const-string/jumbo v10, "Builder.addMatchingCerts: adding target cert"

    #@23
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@26
    .line 440
    :cond_2
    invoke-interface {p3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@29
    move-result v9

    #@2a
    return v9

    #@2b
    .line 444
    :cond_3
    const/4 v1, 0x0

    #@2c
    .line 445
    .local v1, "add":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v7

    #@30
    .local v7, "store$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_7

    #@36
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Ljava/security/cert/CertStore;

    #@3c
    .line 448
    .local v6, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    #@3f
    move-result-object v4

    #@40
    .line 449
    .local v4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v3

    #@44
    .local v3, "cert$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v9

    #@48
    if-eqz v9, :cond_6

    #@4a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Ljava/security/cert/Certificate;

    #@50
    .line 451
    .local v2, "cert":Ljava/security/cert/Certificate;
    move-object v0, v2

    #@51
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@53
    move-object v9, v0

    #@54
    iget-object v10, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@56
    invoke-virtual {v10}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    .line 450
    invoke-static {v9, v10}, Lsun/security/x509/X509CertImpl;->isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@5d
    move-result v9

    #@5e
    if-nez v9, :cond_5

    #@60
    .line 452
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@62
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    move-result v9

    #@66
    if-eqz v9, :cond_5

    #@68
    .line 453
    const/4 v1, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 457
    :cond_6
    if-nez p4, :cond_4

    #@6c
    if-eqz v1, :cond_4

    #@6e
    .line 458
    const/4 v9, 0x1

    #@6f
    return v9

    #@70
    .line 460
    .end local v3    # "cert$iterator":Ljava/util/Iterator;
    .end local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v5

    #@71
    .line 463
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@73
    if-eqz v9, :cond_4

    #@75
    .line 464
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    #@77
    new-instance v10, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v11, "Builder.addMatchingCerts, non-fatal exception retrieving certs: "

    #@7f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8e
    .line 466
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    #@91
    goto :goto_0

    #@92
    .line 470
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    .end local v6    # "store":Ljava/security/cert/CertStore;
    :cond_7
    return v1
.end method

.method abstract getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method getMatchingPolicies()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 397
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@6
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    .line 398
    .local v0, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 399
    const-string/jumbo v1, "2.5.29.32.0"

    #@13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 407
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    #@1f
    .line 410
    .end local v0    # "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    #@21
    return-object v1

    #@22
    .line 400
    .restart local v0    # "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@24
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    #@27
    move-result v1

    #@28
    .line 398
    if-eqz v1, :cond_0

    #@2a
    .line 402
    new-instance v1, Ljava/util/HashSet;

    #@2c
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2f
    iput-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    #@31
    .line 403
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    #@33
    const-string/jumbo v2, "2.5.29.32.0"

    #@36
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0
.end method

.method abstract isPathCompleted(Ljava/security/cert/X509Certificate;)Z
.end method

.method abstract removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
