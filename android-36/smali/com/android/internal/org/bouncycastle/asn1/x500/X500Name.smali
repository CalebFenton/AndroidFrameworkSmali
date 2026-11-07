.class public Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static blacklist defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeCalculated:Z

.field private blacklist rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

.field private blacklist rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

.field private blacklist style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 107
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 108
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .param p1, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 113
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 116
    .local v0, "count":I
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 117
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 119
    const/4 v1, 0x1

    .line 120
    .local v1, "inPlace":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_f
    if-ge v2, v0, :cond_26

    .line 122
    invoke-virtual {p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 123
    .local v3, "element":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    .line 124
    .local v4, "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    if-ne v4, v3, :cond_1d

    const/4 v5, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    and-int/2addr v1, v5

    .line 125
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aput-object v4, v5, v2

    .line 120
    .end local v3    # "element":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 128
    .end local v2    # "index":I
    :cond_26
    if-eqz v1, :cond_2f

    .line 130
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->convert(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    goto :goto_38

    .line 134
    :cond_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    .line 136
    :goto_38
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4
    .param p1, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 49
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 50
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .registers 4
    .param p1, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    .line 163
    invoke-interface {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    .line 165
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V
    .registers 5
    .param p1, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 147
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 149
    invoke-virtual {p2}, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 150
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    .line 151
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "dirName"    # Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V
    .registers 3
    .param p1, "rDNs"    # [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 141
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    .line 142
    return-void
.end method

.method public static blacklist getDefaultStyle()Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .registers 1

    .line 315
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 65
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 4
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_d

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    .line 91
    :cond_d
    if-eqz p1, :cond_19

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 96
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_8

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0

    .line 75
    :cond_8
    if-eqz p0, :cond_14

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 80
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setDefaultStyle(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .registers 3
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 300
    if-eqz p0, :cond_5

    .line 305
    sput-object p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 306
    return-void

    .line 302
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 261
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 263
    return v0

    .line 266
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_e

    .line 268
    return v2

    .line 271
    :cond_e
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 273
    .local v1, "derO":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 275
    return v0

    .line 280
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z

    move-result v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    return v0

    .line 282
    :catch_2b
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public blacklist getAttributeTypes()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 8

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 186
    .local v1, "totalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_13

    .line 188
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    .line 189
    .local v3, "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 186
    .end local v3    # "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 192
    .end local v2    # "i":I
    :cond_13
    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 193
    .local v2, "oids":[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x0

    .line 194
    .local v3, "oidsOff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v0, :cond_25

    .line 196
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v5, v4

    .line 197
    .local v5, "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->collectAttributeTypes([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;I)I

    move-result v6

    add-int/2addr v3, v6

    .line 194
    .end local v5    # "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 199
    .end local v4    # "i":I
    :cond_25
    return-object v2
.end method

.method public blacklist getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    return-object v0
.end method

.method public blacklist getRDNs(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 7
    .param p1, "attributeType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 210
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 211
    .local v0, "res":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .line 213
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v3, v3

    if-eq v2, v3, :cond_1e

    .line 215
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    .line 216
    .local v3, "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->containsAttributeType(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 218
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    aput-object v3, v0, v1

    move v1, v4

    .line 213
    .end local v3    # "rdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 222
    .end local v2    # "i":I
    :cond_1e
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 224
    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 225
    .local v2, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    move-object v0, v2

    .line 229
    .end local v2    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_29
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_7

    .line 246
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    .line 249
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 251
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 253
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
