.class public abstract Lsun/security/provider/certpath/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# static fields
.field static final blacklist USE_AIA:Z

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field final blacklist buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

.field private blacklist matchingPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist targetCertConstraints:Ljava/security/cert/X509CertSelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 56
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    .line 66
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string v1, "com.sun.security.enableAIAcaIssuers"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    .line 66
    return-void
.end method

.method constructor blacklist <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .registers 3
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 76
    nop

    .line 77
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    iput-object v0, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    .line 78
    return-void
.end method

.method static blacklist distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I
    .registers 5
    .param p0, "base"    # Lsun/security/x509/GeneralNameInterface;
    .param p1, "test"    # Lsun/security/x509/GeneralNameInterface;
    .param p2, "incomparable"    # I

    .line 146
    invoke-interface {p0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 165
    return p2

    .line 153
    :pswitch_8
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_13

    .line 154
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string v1, "Builder.distance(): Names are same type but in different subtrees"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 157
    :cond_13
    return p2

    .line 161
    :pswitch_14
    goto :goto_16

    .line 163
    :pswitch_15
    nop

    .line 169
    :goto_16
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v0

    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 159
    :pswitch_20
    const/4 v0, 0x0

    return v0

    .line 148
    :pswitch_22
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2d

    .line 149
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string v1, "Builder.distance(): Names are different types"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 151
    :cond_2d
    return p2

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_22
        :pswitch_20
        :pswitch_15
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method

.method static blacklist hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I
    .registers 12
    .param p0, "base"    # Lsun/security/x509/GeneralNameInterface;
    .param p1, "test"    # Lsun/security/x509/GeneralNameInterface;
    .param p2, "incomparable"    # I

    .line 192
    invoke-interface {p0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v0

    .line 193
    .local v0, "baseRtest":I
    packed-switch v0, :pswitch_data_68

    .line 212
    return p2

    .line 201
    :pswitch_8
    nop

    .line 216
    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    .line 217
    sget-object v1, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1b

    .line 218
    sget-object v1, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string v2, "Builder.hops(): hopDistance not implemented for this name type"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 221
    :cond_1b
    return p2

    .line 223
    :cond_1c
    move-object v1, p0

    check-cast v1, Lsun/security/x509/X500Name;

    .line 224
    .local v1, "baseName":Lsun/security/x509/X500Name;
    move-object v2, p1

    check-cast v2, Lsun/security/x509/X500Name;

    .line 225
    .local v2, "testName":Lsun/security/x509/X500Name;
    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v3

    .line 226
    .local v3, "commonName":Lsun/security/x509/X500Name;
    if-nez v3, :cond_34

    .line 227
    sget-object v4, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_33

    .line 228
    sget-object v4, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string v5, "Builder.hops(): Names are in different namespaces"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 231
    :cond_33
    return p2

    .line 233
    :cond_34
    invoke-virtual {v3}, Lsun/security/x509/X500Name;->subtreeDepth()I

    move-result v4

    .line 234
    .local v4, "commonDistance":I
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->subtreeDepth()I

    move-result v5

    .line 235
    .local v5, "baseDistance":I
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->subtreeDepth()I

    move-result v6

    .line 236
    .local v6, "testDistance":I
    add-int v7, v5, v6

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    return v7

    .line 207
    .end local v1    # "baseName":Lsun/security/x509/X500Name;
    .end local v2    # "testName":Lsun/security/x509/X500Name;
    .end local v3    # "commonName":Lsun/security/x509/X500Name;
    .end local v4    # "commonDistance":I
    .end local v5    # "baseDistance":I
    .end local v6    # "testDistance":I
    :pswitch_46
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v1

    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 210
    :pswitch_50
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v1

    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 204
    :pswitch_5a
    const/4 v1, 0x0

    return v1

    .line 195
    :pswitch_5c
    sget-object v1, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_67

    .line 196
    sget-object v1, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string v2, "Builder.hops(): Names are different types"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 198
    :cond_67
    return p2

    :pswitch_data_68
    .packed-switch -0x1
        :pswitch_5c
        :pswitch_5a
        :pswitch_50
        :pswitch_46
        :pswitch_8
    .end packed-switch
.end method

.method static blacklist targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I
    .registers 14
    .param p0, "constraints"    # Lsun/security/x509/NameConstraintsExtension;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "target"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 286
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "certificate does not satisfy existing name constraints"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_11
    :goto_11
    :try_start_11
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_15} :catch_e3

    .line 295
    .local v0, "certImpl":Lsun/security/x509/X509CertImpl;
    nop

    .line 297
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v1

    .line 298
    .local v1, "subject":Lsun/security/x509/X500Name;
    invoke-virtual {v1, p2}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 300
    return v3

    .line 303
    :cond_26
    nop

    .line 304
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v2

    .line 305
    .local v2, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v2, :cond_4e

    .line 306
    const-string v4, "subject_name"

    invoke-virtual {v2, v4}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    .line 309
    .local v4, "altNames":Lsun/security/x509/GeneralNames;
    if-eqz v4, :cond_4e

    .line 310
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-virtual {v4}, Lsun/security/x509/GeneralNames;->size()I

    move-result v6

    .local v6, "n":I
    :goto_3a
    if-ge v5, v6, :cond_4e

    .line 311
    invoke-virtual {v4, v5}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v7

    .line 312
    .local v7, "altName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 313
    return v3

    .line 310
    .end local v7    # "altName":Lsun/security/x509/GeneralNameInterface;
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 323
    .end local v4    # "altNames":Lsun/security/x509/GeneralNames;
    .end local v5    # "j":I
    .end local v6    # "n":I
    :cond_4e
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v3

    .line 324
    .local v3, "ncExt":Lsun/security/x509/NameConstraintsExtension;
    const/4 v4, -0x1

    if-nez v3, :cond_56

    .line 325
    return v4

    .line 329
    :cond_56
    if-eqz p0, :cond_5c

    .line 330
    invoke-virtual {p0, v3}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V

    goto :goto_63

    .line 335
    :cond_5c
    invoke-virtual {v3}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object p0, v5

    check-cast p0, Lsun/security/x509/NameConstraintsExtension;

    .line 338
    :goto_63
    sget-object v5, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_83

    .line 339
    sget-object v5, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Builder.targetDistance() merged constraints: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 340
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 343
    :cond_83
    nop

    .line 344
    const-string v5, "permitted_subtrees"

    invoke-virtual {p0, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v5

    .line 345
    .local v5, "permitted":Lsun/security/x509/GeneralSubtrees;
    nop

    .line 346
    const-string v6, "excluded_subtrees"

    invoke-virtual {p0, v6}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v6

    .line 347
    .local v6, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v5, :cond_96

    .line 348
    invoke-virtual {v5, v6}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    .line 350
    :cond_96
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_b2

    .line 351
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Builder.targetDistance() reduced constraints: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 355
    :cond_b2
    invoke-virtual {p0, p2}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 360
    if-nez v5, :cond_bb

    .line 362
    return v4

    .line 364
    :cond_bb
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v5}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v8

    .local v8, "n":I
    :goto_c0
    if-ge v7, v8, :cond_da

    .line 365
    invoke-virtual {v5, v7}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v9

    .line 366
    .local v9, "perName":Lsun/security/x509/GeneralNameInterface;
    invoke-static {v9, p2, v4}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v10

    .line 367
    .local v10, "distance":I
    if-ltz v10, :cond_d7

    .line 368
    add-int/lit8 v4, v10, 0x1

    return v4

    .line 364
    .end local v9    # "perName":Lsun/security/x509/GeneralNameInterface;
    .end local v10    # "distance":I
    :cond_d7
    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    .line 372
    .end local v7    # "i":I
    .end local v8    # "n":I
    :cond_da
    return v4

    .line 356
    :cond_db
    new-instance v4, Ljava/io/IOException;

    const-string v7, "New certificate not allowed to sign certificate for target"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v0    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v1    # "subject":Lsun/security/x509/X500Name;
    .end local v2    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v3    # "ncExt":Lsun/security/x509/NameConstraintsExtension;
    .end local v5    # "permitted":Lsun/security/x509/GeneralSubtrees;
    .end local v6    # "excluded":Lsun/security/x509/GeneralSubtrees;
    :catch_e3
    move-exception v0

    .line 294
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid certificate"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method abstract blacklist addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation
.end method

.method blacklist addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z
    .registers 14
    .param p1, "selector"    # Ljava/security/cert/X509CertSelector;
    .param p4, "checkAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)Z"
        }
    .end annotation

    .line 432
    .local p2, "certStores":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CertStore;>;"
    .local p3, "resultCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 433
    .local v0, "targetCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_5f

    .line 435
    invoke-virtual {p1, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 436
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/security/x509/X509CertImpl;->isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 437
    sget-object v1, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_58

    .line 438
    sget-object v1, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Builder.addMatchingCerts: adding target cert\n  SN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 440
    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  Subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  Issuer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 445
    :cond_58
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 447
    :cond_5d
    const/4 v1, 0x0

    return v1

    .line 449
    :cond_5f
    const/4 v1, 0x0

    .line 450
    .local v1, "add":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    .line 452
    .local v3, "store":Ljava/security/cert/CertStore;
    nop

    .line 453
    :try_start_71
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v4

    .line 454
    .local v4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 455
    .local v6, "cert":Ljava/security/cert/Certificate;
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    iget-object v8, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 456
    invoke-virtual {v8}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lsun/security/x509/X509CertImpl;->isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 457
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {p3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v7
    :try_end_9b
    .catch Ljava/security/cert/CertStoreException; {:try_start_71 .. :try_end_9b} :catch_a6

    if-eqz v7, :cond_9e

    .line 458
    const/4 v1, 0x1

    .line 461
    .end local v6    # "cert":Ljava/security/cert/Certificate;
    :cond_9e
    goto :goto_79

    .line 462
    :cond_9f
    if-nez p4, :cond_a5

    if-eqz v1, :cond_a5

    .line 463
    const/4 v2, 0x1

    return v2

    .line 473
    .end local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :cond_a5
    goto :goto_c6

    .line 465
    :catch_a6
    move-exception v4

    .line 468
    .local v4, "cse":Ljava/security/cert/CertStoreException;
    sget-object v5, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_c6

    .line 469
    sget-object v5, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Builder.addMatchingCerts, non-fatal exception retrieving certs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v4}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    .line 474
    .end local v3    # "store":Ljava/security/cert/CertStore;
    .end local v4    # "cse":Ljava/security/cert/CertStoreException;
    :cond_c6
    :goto_c6
    goto :goto_64

    .line 475
    :cond_c7
    return v1
.end method

.method abstract blacklist getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection<",
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

.method blacklist getMatchingPolicies()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    if-eqz v0, :cond_33

    .line 397
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->initialPolicies()Ljava/util/Set;

    move-result-object v0

    .line 398
    .local v0, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 399
    const-string v1, "2.5.29.32.0"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 400
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->policyMappingInhibited()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 402
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    .line 403
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 407
    :cond_2d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    .line 410
    .end local v0    # "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_33
    :goto_33
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    return-object v0
.end method

.method abstract blacklist isPathCompleted(Ljava/security/cert/X509Certificate;)Z
.end method

.method abstract blacklist removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract blacklist verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List<",
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
