.class Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;
.super Ljava/lang/Object;
.source "ForwardBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/ForwardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PKIXCertComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field static final METHOD_NME:Ljava/lang/String; = "PKIXCertComparator.compare()"


# instance fields
.field private final trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    .local p1, "trustedSubjectDNs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 434
    iput-object p1, p0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    #@5
    .line 433
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "oCert1"    # Ljava/lang/Object;
    .param p2, "oCert2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 453
    check-cast p1, Ljava/security/cert/X509Certificate;

    #@2
    .end local p1    # "oCert1":Ljava/lang/Object;
    check-cast p2, Ljava/security/cert/X509Certificate;

    #@4
    .end local p2    # "oCert2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 26
    .param p1, "oCert1"    # Ljava/security/cert/X509Certificate;
    .param p2, "oCert2"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 456
    invoke-virtual/range {p1 .. p2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v23

    #@4
    if-eqz v23, :cond_0

    #@6
    const/16 v23, 0x0

    #@8
    return v23

    #@9
    .line 458
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@c
    move-result-object v2

    #@d
    .line 459
    .local v2, "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@10
    move-result-object v4

    #@11
    .line 460
    .local v4, "cIssuer2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v2}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@14
    move-result-object v3

    #@15
    .line 461
    .local v3, "cIssuer1Name":Lsun/security/x509/X500Name;
    invoke-static {v4}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@18
    move-result-object v5

    #@19
    .line 463
    .local v5, "cIssuer2Name":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@1c
    move-result-object v23

    #@1d
    if-eqz v23, :cond_1

    #@1f
    .line 464
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@22
    move-result-object v23

    #@23
    new-instance v24, Ljava/lang/StringBuilder;

    #@25
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v25, "PKIXCertComparator.compare() o1 Issuer:  "

    #@2b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v24

    #@2f
    move-object/from16 v0, v24

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v24

    #@35
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v24

    #@39
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3c
    .line 465
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@3f
    move-result-object v23

    #@40
    new-instance v24, Ljava/lang/StringBuilder;

    #@42
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v25, "PKIXCertComparator.compare() o2 Issuer:  "

    #@48
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v24

    #@4c
    move-object/from16 v0, v24

    #@4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v24

    #@52
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v24

    #@56
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@59
    .line 471
    :cond_1
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@5c
    move-result-object v23

    #@5d
    if-eqz v23, :cond_2

    #@5f
    .line 472
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@62
    move-result-object v23

    #@63
    const-string/jumbo v24, "PKIXCertComparator.compare() MATCH TRUSTED SUBJECT TEST..."

    #@66
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@69
    .line 475
    :cond_2
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    #@6d
    move-object/from16 v23, v0

    #@6f
    move-object/from16 v0, v23

    #@71
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@74
    move-result v16

    #@75
    .line 476
    .local v16, "m1":Z
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    #@79
    move-object/from16 v23, v0

    #@7b
    move-object/from16 v0, v23

    #@7d
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@80
    move-result v17

    #@81
    .line 477
    .local v17, "m2":Z
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@84
    move-result-object v23

    #@85
    if-eqz v23, :cond_3

    #@87
    .line 478
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@8a
    move-result-object v23

    #@8b
    new-instance v24, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v25, "PKIXCertComparator.compare() m1: "

    #@93
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v24

    #@97
    move-object/from16 v0, v24

    #@99
    move/from16 v1, v16

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v24

    #@9f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v24

    #@a3
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a6
    .line 479
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@a9
    move-result-object v23

    #@aa
    new-instance v24, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v25, "PKIXCertComparator.compare() m2: "

    #@b2
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v24

    #@b6
    move-object/from16 v0, v24

    #@b8
    move/from16 v1, v17

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v24

    #@be
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v24

    #@c2
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c5
    .line 481
    :cond_3
    if-eqz v16, :cond_4

    #@c7
    if-eqz v17, :cond_4

    #@c9
    .line 482
    const/16 v23, -0x1

    #@cb
    return v23

    #@cc
    .line 483
    :cond_4
    if-eqz v16, :cond_5

    #@ce
    .line 484
    const/16 v23, -0x1

    #@d0
    return v23

    #@d1
    .line 485
    :cond_5
    if-eqz v17, :cond_6

    #@d3
    .line 486
    const/16 v23, 0x1

    #@d5
    return v23

    #@d6
    .line 492
    :cond_6
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@d9
    move-result-object v23

    #@da
    if-eqz v23, :cond_7

    #@dc
    .line 493
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@df
    move-result-object v23

    #@e0
    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING DESCENDANT TEST..."

    #@e3
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@e6
    .line 495
    :cond_7
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    #@ea
    move-object/from16 v23, v0

    #@ec
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ef
    move-result-object v21

    #@f0
    .local v21, "tSubject$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@f3
    move-result v23

    #@f4
    if-eqz v23, :cond_f

    #@f6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f9
    move-result-object v20

    #@fa
    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    #@fc
    .line 496
    .local v20, "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@ff
    move-result-object v22

    #@100
    .line 498
    .local v22, "tSubjectName":Lsun/security/x509/X500Name;
    const/16 v23, -0x1

    #@102
    move-object/from16 v0, v22

    #@104
    move/from16 v1, v23

    #@106
    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@109
    move-result v12

    #@10a
    .line 500
    .local v12, "distanceTto1":I
    const/16 v23, -0x1

    #@10c
    move-object/from16 v0, v22

    #@10e
    move/from16 v1, v23

    #@110
    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@113
    move-result v13

    #@114
    .line 501
    .local v13, "distanceTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@117
    move-result-object v23

    #@118
    if-eqz v23, :cond_9

    #@11a
    .line 502
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@11d
    move-result-object v23

    #@11e
    new-instance v24, Ljava/lang/StringBuilder;

    #@120
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto1: "

    #@126
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v24

    #@12a
    move-object/from16 v0, v24

    #@12c
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v24

    #@130
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v24

    #@134
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@137
    .line 503
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@13a
    move-result-object v23

    #@13b
    new-instance v24, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto2: "

    #@143
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v24

    #@147
    move-object/from16 v0, v24

    #@149
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v24

    #@14d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v24

    #@151
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@154
    .line 505
    :cond_9
    if-gtz v12, :cond_a

    #@156
    if-lez v13, :cond_8

    #@158
    .line 506
    :cond_a
    if-ne v12, v13, :cond_b

    #@15a
    .line 507
    const/16 v23, -0x1

    #@15c
    return v23

    #@15d
    .line 508
    :cond_b
    if-lez v12, :cond_c

    #@15f
    if-gtz v13, :cond_c

    #@161
    .line 509
    const/16 v23, -0x1

    #@163
    return v23

    #@164
    .line 510
    :cond_c
    if-gtz v12, :cond_d

    #@166
    if-lez v13, :cond_d

    #@168
    .line 511
    const/16 v23, 0x1

    #@16a
    return v23

    #@16b
    .line 512
    :cond_d
    if-ge v12, v13, :cond_e

    #@16d
    .line 513
    const/16 v23, -0x1

    #@16f
    return v23

    #@170
    .line 515
    :cond_e
    const/16 v23, 0x1

    #@172
    return v23

    #@173
    .line 523
    .end local v12    # "distanceTto1":I
    .end local v13    # "distanceTto2":I
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_f
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@176
    move-result-object v23

    #@177
    if-eqz v23, :cond_10

    #@179
    .line 524
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@17c
    move-result-object v23

    #@17d
    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING ANCESTOR TEST..."

    #@180
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@183
    .line 526
    :cond_10
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    #@187
    move-object/from16 v23, v0

    #@189
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18c
    move-result-object v21

    #@18d
    :cond_11
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@190
    move-result v23

    #@191
    if-eqz v23, :cond_18

    #@193
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@196
    move-result-object v20

    #@197
    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    #@199
    .line 527
    .restart local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@19c
    move-result-object v22

    #@19d
    .line 530
    .restart local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    const v23, 0x7fffffff

    #@1a0
    .line 529
    move-object/from16 v0, v22

    #@1a2
    move/from16 v1, v23

    #@1a4
    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@1a7
    move-result v12

    #@1a8
    .line 532
    .restart local v12    # "distanceTto1":I
    const v23, 0x7fffffff

    #@1ab
    .line 531
    move-object/from16 v0, v22

    #@1ad
    move/from16 v1, v23

    #@1af
    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@1b2
    move-result v13

    #@1b3
    .line 533
    .restart local v13    # "distanceTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@1b6
    move-result-object v23

    #@1b7
    if-eqz v23, :cond_12

    #@1b9
    .line 534
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@1bc
    move-result-object v23

    #@1bd
    new-instance v24, Ljava/lang/StringBuilder;

    #@1bf
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1c2
    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto1: "

    #@1c5
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v24

    #@1c9
    move-object/from16 v0, v24

    #@1cb
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v24

    #@1cf
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v24

    #@1d3
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1d6
    .line 535
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@1d9
    move-result-object v23

    #@1da
    new-instance v24, Ljava/lang/StringBuilder;

    #@1dc
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1df
    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto2: "

    #@1e2
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v24

    #@1e6
    move-object/from16 v0, v24

    #@1e8
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v24

    #@1ec
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v24

    #@1f0
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1f3
    .line 537
    :cond_12
    if-ltz v12, :cond_13

    #@1f5
    if-gez v13, :cond_11

    #@1f7
    .line 538
    :cond_13
    if-ne v12, v13, :cond_14

    #@1f9
    .line 539
    const/16 v23, -0x1

    #@1fb
    return v23

    #@1fc
    .line 540
    :cond_14
    if-gez v12, :cond_15

    #@1fe
    if-ltz v13, :cond_15

    #@200
    .line 541
    const/16 v23, -0x1

    #@202
    return v23

    #@203
    .line 542
    :cond_15
    if-ltz v12, :cond_16

    #@205
    if-gez v13, :cond_16

    #@207
    .line 543
    const/16 v23, 0x1

    #@209
    return v23

    #@20a
    .line 544
    :cond_16
    if-le v12, v13, :cond_17

    #@20c
    .line 545
    const/16 v23, -0x1

    #@20e
    return v23

    #@20f
    .line 547
    :cond_17
    const/16 v23, 0x1

    #@211
    return v23

    #@212
    .line 556
    .end local v12    # "distanceTto1":I
    .end local v13    # "distanceTto2":I
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_18
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@215
    move-result-object v23

    #@216
    if-eqz v23, :cond_19

    #@218
    .line 557
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@21b
    move-result-object v23

    #@21c
    const-string/jumbo v24, "PKIXCertComparator.compare() SAME NAMESPACE AS TRUSTED TEST..."

    #@21f
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@222
    .line 559
    :cond_19
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    #@226
    move-object/from16 v23, v0

    #@228
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22b
    move-result-object v21

    #@22c
    :cond_1a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@22f
    move-result v23

    #@230
    if-eqz v23, :cond_21

    #@232
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@235
    move-result-object v20

    #@236
    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    #@238
    .line 560
    .restart local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@23b
    move-result-object v22

    #@23c
    .line 561
    .restart local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    move-object/from16 v0, v22

    #@23e
    invoke-virtual {v0, v3}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    #@241
    move-result-object v18

    #@242
    .line 562
    .local v18, "tAo1":Lsun/security/x509/X500Name;
    move-object/from16 v0, v22

    #@244
    invoke-virtual {v0, v5}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    #@247
    move-result-object v19

    #@248
    .line 563
    .local v19, "tAo2":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@24b
    move-result-object v23

    #@24c
    if-eqz v23, :cond_1b

    #@24e
    .line 564
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@251
    move-result-object v23

    #@252
    new-instance v24, Ljava/lang/StringBuilder;

    #@254
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@257
    const-string/jumbo v25, "PKIXCertComparator.compare() tAo1: "

    #@25a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v24

    #@25e
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@261
    move-result-object v25

    #@262
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v24

    #@266
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v24

    #@26a
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@26d
    .line 565
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@270
    move-result-object v23

    #@271
    new-instance v24, Ljava/lang/StringBuilder;

    #@273
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@276
    const-string/jumbo v25, "PKIXCertComparator.compare() tAo2: "

    #@279
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v24

    #@27d
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@280
    move-result-object v25

    #@281
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v24

    #@285
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@288
    move-result-object v24

    #@289
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@28c
    .line 567
    :cond_1b
    if-nez v18, :cond_1c

    #@28e
    if-eqz v19, :cond_1a

    #@290
    .line 568
    :cond_1c
    if-eqz v18, :cond_1f

    #@292
    if-eqz v19, :cond_1f

    #@294
    .line 570
    const v23, 0x7fffffff

    #@297
    .line 569
    move-object/from16 v0, v22

    #@299
    move/from16 v1, v23

    #@29b
    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@29e
    move-result v14

    #@29f
    .line 572
    .local v14, "hopsTto1":I
    const v23, 0x7fffffff

    #@2a2
    .line 571
    move-object/from16 v0, v22

    #@2a4
    move/from16 v1, v23

    #@2a6
    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@2a9
    move-result v15

    #@2aa
    .line 573
    .local v15, "hopsTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@2ad
    move-result-object v23

    #@2ae
    if-eqz v23, :cond_1d

    #@2b0
    .line 574
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@2b3
    move-result-object v23

    #@2b4
    new-instance v24, Ljava/lang/StringBuilder;

    #@2b6
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@2b9
    const-string/jumbo v25, "PKIXCertComparator.compare() hopsTto1: "

    #@2bc
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v24

    #@2c0
    move-object/from16 v0, v24

    #@2c2
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c5
    move-result-object v24

    #@2c6
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c9
    move-result-object v24

    #@2ca
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2cd
    .line 575
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@2d0
    move-result-object v23

    #@2d1
    new-instance v24, Ljava/lang/StringBuilder;

    #@2d3
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@2d6
    const-string/jumbo v25, "PKIXCertComparator.compare() hopsTto2: "

    #@2d9
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v24

    #@2dd
    move-object/from16 v0, v24

    #@2df
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v24

    #@2e3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v24

    #@2e7
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2ea
    .line 577
    :cond_1d
    if-eq v14, v15, :cond_1a

    #@2ec
    .line 578
    if-le v14, v15, :cond_1e

    #@2ee
    .line 579
    const/16 v23, 0x1

    #@2f0
    return v23

    #@2f1
    .line 581
    :cond_1e
    const/16 v23, -0x1

    #@2f3
    return v23

    #@2f4
    .line 583
    .end local v14    # "hopsTto1":I
    .end local v15    # "hopsTto2":I
    :cond_1f
    if-nez v18, :cond_20

    #@2f6
    .line 584
    const/16 v23, 0x1

    #@2f8
    return v23

    #@2f9
    .line 586
    :cond_20
    const/16 v23, -0x1

    #@2fb
    return v23

    #@2fc
    .line 595
    .end local v18    # "tAo1":Lsun/security/x509/X500Name;
    .end local v19    # "tAo2":Lsun/security/x509/X500Name;
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_21
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@2ff
    move-result-object v23

    #@300
    if-eqz v23, :cond_22

    #@302
    .line 596
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@305
    move-result-object v23

    #@306
    const-string/jumbo v24, "PKIXCertComparator.compare() CERT ISSUER/SUBJECT COMPARISON TEST..."

    #@309
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@30c
    .line 598
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@30f
    move-result-object v6

    #@310
    .line 599
    .local v6, "cSubject1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@313
    move-result-object v8

    #@314
    .line 600
    .local v8, "cSubject2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@317
    move-result-object v7

    #@318
    .line 601
    .local v7, "cSubject1Name":Lsun/security/x509/X500Name;
    invoke-static {v8}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@31b
    move-result-object v9

    #@31c
    .line 603
    .local v9, "cSubject2Name":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@31f
    move-result-object v23

    #@320
    if-eqz v23, :cond_23

    #@322
    .line 604
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@325
    move-result-object v23

    #@326
    new-instance v24, Ljava/lang/StringBuilder;

    #@328
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@32b
    const-string/jumbo v25, "PKIXCertComparator.compare() o1 Subject: "

    #@32e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@331
    move-result-object v24

    #@332
    move-object/from16 v0, v24

    #@334
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@337
    move-result-object v24

    #@338
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33b
    move-result-object v24

    #@33c
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@33f
    .line 605
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@342
    move-result-object v23

    #@343
    new-instance v24, Ljava/lang/StringBuilder;

    #@345
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@348
    const-string/jumbo v25, "PKIXCertComparator.compare() o2 Subject: "

    #@34b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34e
    move-result-object v24

    #@34f
    move-object/from16 v0, v24

    #@351
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@354
    move-result-object v24

    #@355
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@358
    move-result-object v24

    #@359
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@35c
    .line 608
    :cond_23
    const v23, 0x7fffffff

    #@35f
    .line 607
    move/from16 v0, v23

    #@361
    invoke-static {v7, v3, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@364
    move-result v10

    #@365
    .line 610
    .local v10, "distanceStoI1":I
    const v23, 0x7fffffff

    #@368
    .line 609
    move/from16 v0, v23

    #@36a
    invoke-static {v9, v5, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    #@36d
    move-result v11

    #@36e
    .line 611
    .local v11, "distanceStoI2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@371
    move-result-object v23

    #@372
    if-eqz v23, :cond_24

    #@374
    .line 612
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@377
    move-result-object v23

    #@378
    new-instance v24, Ljava/lang/StringBuilder;

    #@37a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@37d
    const-string/jumbo v25, "PKIXCertComparator.compare() distanceStoI1: "

    #@380
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v24

    #@384
    move-object/from16 v0, v24

    #@386
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@389
    move-result-object v24

    #@38a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38d
    move-result-object v24

    #@38e
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@391
    .line 613
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@394
    move-result-object v23

    #@395
    new-instance v24, Ljava/lang/StringBuilder;

    #@397
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@39a
    const-string/jumbo v25, "PKIXCertComparator.compare() distanceStoI2: "

    #@39d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v24

    #@3a1
    move-object/from16 v0, v24

    #@3a3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a6
    move-result-object v24

    #@3a7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3aa
    move-result-object v24

    #@3ab
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3ae
    .line 615
    :cond_24
    if-le v11, v10, :cond_25

    #@3b0
    .line 616
    const/16 v23, -0x1

    #@3b2
    return v23

    #@3b3
    .line 617
    :cond_25
    if-ge v11, v10, :cond_26

    #@3b5
    .line 618
    const/16 v23, 0x1

    #@3b7
    return v23

    #@3b8
    .line 623
    :cond_26
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@3bb
    move-result-object v23

    #@3bc
    if-eqz v23, :cond_27

    #@3be
    .line 624
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    #@3c1
    move-result-object v23

    #@3c2
    const-string/jumbo v24, "PKIXCertComparator.compare() no tests matched; RETURN 0"

    #@3c5
    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3c8
    .line 626
    :cond_27
    const/16 v23, -0x1

    #@3ca
    return v23
.end method
