.class public Lcom/android/org/bouncycastle/asn1/x500/X500Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

.field private style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@4
    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@5
    .line 103
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 112
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@5
    .line 113
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v3

    #@9
    new-array v3, v3, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@b
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@d
    .line 115
    const/4 v1, 0x0

    #@e
    .line 117
    .local v1, "index":I
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@11
    move-result-object v0

    #@12
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 119
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v1

    #@26
    move v1, v2

    #@27
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@28
    .line 110
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 47
    iget-object v0, p2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@7
    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@9
    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    invoke-interface {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    #@7
    .line 149
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@9
    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .locals 0
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 133
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@5
    .line 134
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@7
    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    #@5
    .line 138
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .locals 1
    .param p1, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@0
    .prologue
    .line 126
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    #@5
    .line 124
    return-void
.end method

.method public static getDefaultStyle()Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .locals 1

    #@0
    .prologue
    .line 328
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 63
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    nop

    #@8
    nop

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@c
    return-object v0

    #@d
    .line 89
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@11
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@18
    return-object v0

    #@19
    .line 94
    :cond_1
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 71
    nop

    #@6
    nop

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 73
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 78
    :cond_1
    return-object v1
.end method

.method public static setDefaultStyle(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 2
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@0
    .prologue
    .line 313
    if-nez p0, :cond_0

    #@2
    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "cannot set style to null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 318
    :cond_0
    sput-object p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@d
    .line 311
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 274
    if-ne p1, p0, :cond_0

    #@4
    .line 276
    return v3

    #@5
    .line 279
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    if-nez v2, :cond_1

    #@9
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    :goto_0
    if-nez v2, :cond_2

    #@d
    .line 281
    return v5

    #@e
    :cond_1
    move v2, v3

    #@f
    .line 279
    goto :goto_0

    #@10
    :cond_2
    move-object v2, p1

    #@11
    .line 284
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@16
    move-result-object v0

    #@17
    .line 286
    .local v0, "derO":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 288
    return v3

    #@22
    .line 293
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@24
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@26
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@28
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@33
    invoke-interface {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result v2

    #@37
    return v2

    #@38
    .line 296
    :catch_0
    move-exception v1

    #@39
    .line 297
    .local v1, "e":Ljava/lang/Exception;
    return v5
.end method

.method public getAttributeTypes()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 8

    #@0
    .prologue
    .line 173
    const/4 v1, 0x0

    #@1
    .line 175
    .local v1, "count":I
    const/4 v3, 0x0

    #@2
    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    array-length v7, v7

    #@5
    if-eq v3, v7, :cond_0

    #@7
    .line 177
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@9
    aget-object v5, v7, v3

    #@b
    .line 179
    .local v5, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    #@e
    move-result v7

    #@f
    add-int/2addr v1, v7

    #@10
    .line 175
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 182
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_0
    new-array v6, v1, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    .line 184
    .local v6, "res":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    #@16
    .line 186
    const/4 v3, 0x0

    #@17
    :goto_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@19
    array-length v7, v7

    #@1a
    if-eq v3, v7, :cond_3

    #@1c
    .line 188
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@1e
    aget-object v5, v7, v3

    #@20
    .line 190
    .restart local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_1

    #@26
    .line 192
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@29
    move-result-object v0

    #@2a
    .line 193
    .local v0, "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    #@2b
    .local v4, "j":I
    :goto_2
    array-length v7, v0

    #@2c
    if-eq v4, v7, :cond_2

    #@2e
    .line 195
    add-int/lit8 v2, v1, 0x1

    #@30
    .end local v1    # "count":I
    .local v2, "count":I
    aget-object v7, v0, v4

    #@32
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    move-result-object v7

    #@36
    aput-object v7, v6, v1

    #@38
    .line 193
    add-int/lit8 v4, v4, 0x1

    #@3a
    move v1, v2

    #@3b
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    #@3c
    .line 198
    .end local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_2

    #@42
    .line 200
    add-int/lit8 v2, v1, 0x1

    #@44
    .end local v1    # "count":I
    .restart local v2    # "count":I
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b
    move-result-object v7

    #@4c
    aput-object v7, v6, v1

    #@4e
    move v1, v2

    #@4f
    .line 186
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_1

    #@52
    .line 204
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_3
    return-object v6
.end method

.method public getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 159
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@6
    .line 161
    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@8
    array-length v2, v0

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 163
    return-object v0
.end method

.method public getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 10
    .param p1, "attributeType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 215
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@3
    array-length v8, v8

    #@4
    new-array v6, v8, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@6
    .line 216
    .local v6, "res":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    #@7
    .line 218
    .local v1, "count":I
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@a
    array-length v8, v8

    #@b
    if-eq v3, v8, :cond_3

    #@d
    .line 220
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@f
    aget-object v5, v8, v3

    #@11
    .line 222
    .local v5, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_2

    #@17
    .line 224
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@1a
    move-result-object v0

    #@1b
    .line 225
    .local v0, "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    #@1c
    .local v4, "j":I
    :goto_1
    array-length v8, v0

    #@1d
    if-eq v4, v8, :cond_0

    #@1f
    .line 227
    aget-object v8, v0, v4

    #@21
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    move-result-object v8

    #@25
    invoke-virtual {v8, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 229
    add-int/lit8 v2, v1, 0x1

    #@2d
    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v5, v6, v1

    #@2f
    move v1, v2

    #@30
    .line 218
    .end local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "count":I
    .end local v4    # "j":I
    .restart local v1    # "count":I
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 225
    .restart local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v4    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_1

    #@36
    .line 236
    .end local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_0

    #@44
    .line 238
    add-int/lit8 v2, v1, 0x1

    #@46
    .end local v1    # "count":I
    .restart local v2    # "count":I
    aput-object v5, v6, v1

    #@48
    move v1, v2

    #@49
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    #@4a
    .line 243
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_3
    new-array v7, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4c
    .line 245
    .local v7, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v8, v7

    #@4d
    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@50
    .line 247
    return-object v7
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 259
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    #@6
    return v0

    #@7
    .line 262
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    #@a
    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@c
    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    #@12
    .line 266
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    #@14
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 252
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
