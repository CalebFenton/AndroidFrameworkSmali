.class public final Lorg/apache/harmony/security/x509/NameConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "NameConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/NameConstraints$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private excluded_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private permitted_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 260
    new-instance v0, Lorg/apache/harmony/security/x509/NameConstraints$1;

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 261
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@9
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@b
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@e
    aput-object v2, v1, v4

    #@10
    .line 262
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@12
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@14
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@17
    aput-object v2, v1, v5

    #@19
    .line 260
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1c
    sput-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1e
    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V
    .locals 4
    .param p1, "permittedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p2, "excludedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 72
    if-eqz p1, :cond_1

    #@5
    .line 73
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    .line 74
    .local v1, "ps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    if-eqz v1, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 75
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "permittedSubtrees are empty"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 78
    .end local v1    # "ps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    :cond_1
    if-eqz p2, :cond_3

    #@1c
    .line 79
    invoke-virtual {p2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    #@1f
    move-result-object v0

    #@20
    .line 80
    .local v0, "es":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    if-eqz v0, :cond_2

    #@22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 81
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v3, "excludedSubtrees are empty"

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 84
    .end local v0    # "es":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@33
    .line 85
    iput-object p2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@35
    .line 71
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V
    .locals 0
    .param p1, "permittedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p2, "excludedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V

    #@3
    .line 91
    iput-object p3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    #@5
    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[BLorg/apache/harmony/security/x509/NameConstraints;)V
    .locals 0
    .param p1, "permittedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p2, "excludedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V

    #@3
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/NameConstraints;
    .locals 1
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    #@8
    return-object v0
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "OID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 141
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    #@7
    .line 142
    return-object v3

    #@8
    .line 144
    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    return-object v2

    #@13
    .line 145
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    #@14
    .line 146
    .local v1, "e":Ljava/io/IOException;
    return-object v3
.end method

.method private prepareNames()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x9

    #@2
    .line 110
    new-array v4, v6, [Ljava/util/ArrayList;

    #@4
    iput-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@6
    .line 111
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 112
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@c
    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    #@f
    move-result-object v4

    #@10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "generalSubtree$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    #@20
    .line 113
    .local v0, "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    #@23
    move-result-object v2

    #@24
    .line 114
    .local v2, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    #@27
    move-result v3

    #@28
    .line 115
    .local v3, "tag":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@2a
    aget-object v4, v4, v3

    #@2c
    if-nez v4, :cond_0

    #@2e
    .line 116
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@30
    new-instance v5, Ljava/util/ArrayList;

    #@32
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@35
    aput-object v5, v4, v3

    #@37
    .line 118
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@39
    aget-object v4, v4, v3

    #@3b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 122
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    .end local v1    # "generalSubtree$iterator":Ljava/util/Iterator;
    .end local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v3    # "tag":I
    :cond_1
    new-array v4, v6, [Ljava/util/ArrayList;

    #@41
    iput-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@43
    .line 123
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@45
    if-eqz v4, :cond_3

    #@47
    .line 124
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@49
    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v1

    #@51
    .restart local v1    # "generalSubtree$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_3

    #@57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    #@5d
    .line 125
    .restart local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    #@60
    move-result-object v2

    #@61
    .line 126
    .restart local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    #@64
    move-result v3

    #@65
    .line 127
    .restart local v3    # "tag":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@67
    aget-object v4, v4, v3

    #@69
    if-nez v4, :cond_2

    #@6b
    .line 128
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@6d
    new-instance v5, Ljava/util/ArrayList;

    #@6f
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@72
    aput-object v5, v4, v3

    #@74
    .line 130
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@76
    aget-object v4, v4, v3

    #@78
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_1

    #@7c
    .line 108
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    .end local v1    # "generalSubtree$iterator":Ljava/util/Iterator;
    .end local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v3    # "tag":I
    :cond_3
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "Name Constraints: [\n"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 240
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "  Permitted: [\n"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 242
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@1a
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "generalSubtree$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    #@2e
    .line 243
    .local v0, "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, "    "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@45
    goto :goto_0

    #@46
    .line 245
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    const-string/jumbo v3, "  ]\n"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 247
    .end local v1    # "generalSubtree$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@52
    if-eqz v2, :cond_3

    #@54
    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    const-string/jumbo v3, "  Excluded: [\n"

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 249
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    #@60
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v1

    #@68
    .restart local v1    # "generalSubtree$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_2

    #@6e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    #@74
    .line 250
    .restart local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    new-instance v2, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    const-string/jumbo v3, "    "

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@8b
    goto :goto_1

    #@8c
    .line 252
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    const-string/jumbo v3, "  ]\n"

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 254
    .end local v1    # "generalSubtree$iterator":Ljava/util/Iterator;
    :cond_3
    const/16 v2, 0xa

    #@98
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    const-string/jumbo v3, "]\n"

    #@a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    .line 238
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    #@c
    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    #@e
    return-object v0
.end method

.method public isAcceptable(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 166
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 167
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    #@8
    .line 170
    :cond_0
    const-string/jumbo v3, "2.5.29.17"

    #@b
    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/x509/NameConstraints;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    .line 173
    .local v0, "bytes":[B
    if-nez v0, :cond_3

    #@11
    .line 174
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@13
    const/4 v3, 0x1

    #@14
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 181
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@19
    aget-object v3, v3, v4

    #@1b
    if-nez v3, :cond_1

    #@1d
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@1f
    aget-object v3, v3, v4

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 183
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralName;

    #@25
    .line 184
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 183
    const/4 v5, 0x4

    #@2e
    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@31
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@34
    .line 189
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    #@37
    move-result v3

    #@38
    return v3

    #@39
    .line 175
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :cond_3
    :try_start_2
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@3b
    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    #@41
    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@44
    move-result-object v2

    #@45
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    goto :goto_0

    #@46
    .line 176
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :catch_0
    move-exception v1

    #@47
    .line 178
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@4a
    .line 179
    const/4 v3, 0x0

    #@4b
    return v3

    #@4c
    .line 185
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :catch_1
    move-exception v1

    #@4d
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public isAcceptable(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    const/4 v9, 0x0

    #@1
    const/16 v8, 0x9

    #@3
    const/4 v7, 0x1

    #@4
    .line 197
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@6
    if-nez v6, :cond_0

    #@8
    .line 198
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    #@b
    .line 203
    :cond_0
    new-array v5, v8, [Z

    #@d
    .line 206
    .local v5, "types_presented":[Z
    new-array v3, v8, [Z

    #@f
    .line 207
    .local v3, "permitted_found":[Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "name$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_5

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    #@1f
    .line 208
    .local v1, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    #@22
    move-result v4

    #@23
    .line 210
    .local v4, "type":I
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@25
    aget-object v6, v6, v4

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 211
    const/4 v0, 0x0

    #@2a
    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@2c
    aget-object v6, v6, v4

    #@2e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v6

    #@32
    if-ge v0, v6, :cond_3

    #@34
    .line 212
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    #@36
    aget-object v6, v6, v4

    #@38
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    #@3e
    invoke-virtual {v6, v1}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_2

    #@44
    .line 213
    return v9

    #@45
    .line 211
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 220
    .end local v0    # "i":I
    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@4a
    aget-object v6, v6, v4

    #@4c
    if-eqz v6, :cond_1

    #@4e
    aget-boolean v6, v3, v4

    #@50
    if-nez v6, :cond_1

    #@52
    .line 221
    aput-boolean v7, v5, v4

    #@54
    .line 222
    const/4 v0, 0x0

    #@55
    .restart local v0    # "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@57
    aget-object v6, v6, v4

    #@59
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5c
    move-result v6

    #@5d
    if-ge v0, v6, :cond_1

    #@5f
    .line 223
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    #@61
    aget-object v6, v6, v4

    #@63
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v6

    #@67
    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    #@69
    invoke-virtual {v6, v1}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_4

    #@6f
    .line 225
    aput-boolean v7, v3, v4

    #@71
    .line 222
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_1

    #@74
    .line 230
    .end local v0    # "i":I
    .end local v1    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v4    # "type":I
    :cond_5
    const/4 v4, 0x0

    #@75
    .restart local v4    # "type":I
    :goto_2
    if-ge v4, v8, :cond_8

    #@77
    .line 231
    aget-boolean v6, v5, v4

    #@79
    if-eqz v6, :cond_6

    #@7b
    aget-boolean v6, v3, v4

    #@7d
    if-eqz v6, :cond_7

    #@7f
    .line 230
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@81
    goto :goto_2

    #@82
    .line 232
    :cond_7
    return v9

    #@83
    .line 235
    :cond_8
    return v7
.end method
