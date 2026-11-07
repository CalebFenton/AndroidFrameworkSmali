.class public Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "GeneralNames.java"


# instance fields
.field private final blacklist names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    .line 80
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 82
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 62
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3
    .param p1, "names"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->copy([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 71
    return-void
.end method

.method private static blacklist copy([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 4
    .param p0, "names"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 22
    array-length v0, p0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 23
    .local v0, "result":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    return-object v0
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 3
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .param p1, "extOID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 4
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_8

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0

    .line 35
    :cond_8
    if-eqz p0, :cond_14

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 40
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->copy([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 97
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "sep":Ljava/lang/String;
    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-eq v2, v3, :cond_29

    .line 110
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 114
    .end local v2    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
