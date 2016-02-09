.class public final Lorg/apache/harmony/security/x509/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/Extensions$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static SUPPORTED_CRITICAL:Ljava/util/List;


# instance fields
.field private volatile critical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasUnsupported:Ljava/lang/Boolean;

.field private volatile noncritical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile oidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 54
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 55
    const-string/jumbo v1, "2.5.29.15"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "2.5.29.19"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "2.5.29.32"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "2.5.29.17"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 56
    const-string/jumbo v1, "2.5.29.30"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "2.5.29.36"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "2.5.29.37"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "2.5.29.54"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@37
    move-result-object v0

    #@38
    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    #@3a
    .line 390
    new-instance v0, Lorg/apache/harmony/security/x509/Extensions$1;

    #@3c
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@3e
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extensions$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@41
    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@43
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@6
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Extension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@5
    .line 85
    return-void
.end method

.method private static decodeGeneralNames(Lorg/apache/harmony/security/x509/Extension;)Ljava/util/Collection;
    .locals 4
    .param p0, "extension"    # Lorg/apache/harmony/security/x509/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/security/x509/Extension;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 309
    if-nez p0, :cond_0

    #@3
    .line 310
    return-object v3

    #@4
    .line 313
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getValue()[B

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    #@10
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/Collection;

    #@13
    move-result-object v0

    #@14
    .line 320
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 321
    return-object v3

    #@1b
    .line 324
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method private makeOidsLists()V
    .locals 8

    #@0
    .prologue
    .line 131
    iget-object v7, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@2
    if-nez v7, :cond_0

    #@4
    .line 132
    return-void

    #@5
    .line 134
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@7
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@a
    move-result v6

    #@b
    .line 135
    .local v6, "size":I
    new-instance v2, Ljava/util/HashSet;

    #@d
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    #@10
    .line 136
    .local v2, "localCritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    #@12
    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    #@15
    .line 137
    .local v4, "localNoncritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@17
    .line 138
    .local v3, "localHasUnsupported":Ljava/lang/Boolean;
    iget-object v7, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@19
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "extension$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_3

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    #@29
    .line 139
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getId()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 140
    .local v5, "oid":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->isCritical()Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_2

    #@33
    .line 141
    sget-object v7, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    #@35
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-nez v7, :cond_1

    #@3b
    .line 142
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3d
    .line 144
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 146
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_0

    #@45
    .line 149
    .end local v0    # "extension":Lorg/apache/harmony/security/x509/Extension;
    .end local v5    # "oid":Ljava/lang/String;
    :cond_3
    iput-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    #@47
    .line 150
    iput-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    #@49
    .line 151
    iput-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Ljava/lang/Boolean;

    #@4b
    .line 130
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 377
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 378
    return-void

    #@5
    .line 380
    :cond_0
    const/4 v2, 0x1

    #@6
    .line 381
    .local v2, "num":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "extension$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    #@18
    .line 382
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    const/16 v4, 0xa

    #@1a
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const/16 v5, 0x5b

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    add-int/lit8 v3, v2, 0x1

    #@2a
    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    const-string/jumbo v5, "]: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 383
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/Extension;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@37
    move v2, v3

    #@38
    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0

    #@39
    .line 376
    .end local v0    # "extension":Lorg/apache/harmony/security/x509/Extension;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 359
    instance-of v1, p1, Lorg/apache/harmony/security/x509/Extensions;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 360
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 362
    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    #@9
    .line 363
    .local v0, "that":Lorg/apache/harmony/security/x509/Extensions;
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@b
    if-eqz v1, :cond_1

    #@d
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 364
    :cond_1
    iget-object v1, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@17
    if-eqz v1, :cond_2

    #@19
    iget-object v1, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@1b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@1e
    move-result v1

    #@1f
    .line 363
    :goto_0
    return v1

    #@20
    .line 364
    :cond_2
    const/4 v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 365
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@24
    iget-object v2, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@26
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    goto :goto_0
.end method

.method public getCriticalExtensions()Ljava/util/Set;
    .locals 1
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
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    #@2
    .line 98
    .local v0, "resultCritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@4
    .line 99
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    #@7
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    #@9
    .line 102
    :cond_0
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 353
    sget-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    #@c
    .line 355
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    #@e
    return-object v0
.end method

.method public getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;
    .locals 5
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 158
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 159
    return-object v4

    #@6
    .line 161
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    #@8
    .line 162
    .local v2, "localOidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/security/x509/Extension;>;"
    if-nez v2, :cond_2

    #@a
    .line 163
    new-instance v2, Ljava/util/HashMap;

    #@c
    .end local v2    # "localOidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/security/x509/Extension;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 164
    .restart local v2    # "localOidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/security/x509/Extension;>;"
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "extension$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    #@21
    .line 165
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getId()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    goto :goto_0

    #@29
    .line 167
    .end local v0    # "extension":Lorg/apache/harmony/security/x509/Extension;
    :cond_1
    iput-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    #@2b
    .line 169
    .end local v1    # "extension$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Lorg/apache/harmony/security/x509/Extension;

    #@31
    return-object v3
.end method

.method public getNonCriticalExtensions()Ljava/util/Set;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    #@2
    .line 110
    .local v0, "resultNoncritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@4
    .line 111
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    #@7
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    #@9
    .line 114
    :cond_0
    return-object v0
.end method

.method public hasUnsupportedCritical()Z
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Ljava/lang/Boolean;

    #@2
    .line 119
    .local v0, "resultHasUnsupported":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    #@4
    .line 120
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    #@7
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Ljava/lang/Boolean;

    #@9
    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 369
    const/4 v0, 0x0

    #@1
    .line 370
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 371
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@a
    move-result v0

    #@b
    .line 373
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public valueOfBasicConstraints()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 254
    const-string/jumbo v2, "2.5.29.19"

    #@4
    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    #@7
    move-result-object v1

    #@8
    .line 255
    .local v1, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-nez v1, :cond_0

    #@a
    .line 256
    return v3

    #@b
    .line 258
    :cond_0
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extension;->getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;

    #@e
    move-result-object v0

    #@f
    .line 259
    .local v0, "bc":Lorg/apache/harmony/security/x509/BasicConstraints;
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/BasicConstraints;->getCa()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 262
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/BasicConstraints;->getPathLenConstraint()I

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 260
    :cond_1
    return v3
.end method

.method public valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 341
    const-string/jumbo v1, "2.5.29.29"

    #@4
    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    #@7
    move-result-object v0

    #@8
    .line 342
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    #@a
    .line 343
    return-object v2

    #@b
    .line 345
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/apache/harmony/security/x509/CertificateIssuer;

    #@11
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public valueOfExtendedKeyUsage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 226
    const-string/jumbo v1, "2.5.29.37"

    #@4
    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    #@7
    move-result-object v0

    #@8
    .line 227
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    #@a
    .line 228
    return-object v2

    #@b
    .line 230
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    #@11
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public valueOfIssuerAlternativeName()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    const-string/jumbo v0, "2.5.29.18"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->decodeGeneralNames(Lorg/apache/harmony/security/x509/Extension;)Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public valueOfKeyUsage()[Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 200
    const-string/jumbo v2, "2.5.29.15"

    #@4
    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    #@7
    move-result-object v0

    #@8
    .line 202
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;

    #@d
    move-result-object v1

    #@e
    .local v1, "kUsage":Lorg/apache/harmony/security/x509/KeyUsage;
    if-nez v1, :cond_1

    #@10
    .line 203
    .end local v1    # "kUsage":Lorg/apache/harmony/security/x509/KeyUsage;
    :cond_0
    return-object v3

    #@11
    .line 205
    .restart local v1    # "kUsage":Lorg/apache/harmony/security/x509/KeyUsage;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/KeyUsage;->getKeyUsage()[Z

    #@14
    move-result-object v2

    #@15
    return-object v2
.end method

.method public valueOfSubjectAlternativeName()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    const-string/jumbo v0, "2.5.29.17"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->decodeGeneralNames(Lorg/apache/harmony/security/x509/Extension;)Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method
