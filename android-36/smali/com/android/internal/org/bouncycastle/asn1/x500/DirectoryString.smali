.class public Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DirectoryString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private blacklist string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;)V
    .registers 2
    .param p1, "string"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    .line 100
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;)V
    .registers 2
    .param p1, "string"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;)V
    .registers 2
    .param p1, "string"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;

    .line 74
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;)V
    .registers 2
    .param p1, "string"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    .line 92
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    .line 94
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;)V
    .registers 2
    .param p1, "string"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    .line 86
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    .line 105
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
    .registers 4
    .param p0, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 64
    if-eqz p1, :cond_b

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    return-object v0

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 29
    if-eqz p0, :cond_69

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_7

    goto :goto_69

    .line 34
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;

    if-eqz v0, :cond_14

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;)V

    return-object v0

    .line 39
    :cond_14
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    if-eqz v0, :cond_21

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;)V

    return-object v0

    .line 44
    :cond_21
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v0, :cond_2e

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;)V

    return-object v0

    .line 49
    :cond_2e
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_3b

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;)V

    return-object v0

    .line 54
    :cond_3b
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_48

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;)V

    return-object v0

    .line 59
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_69
    :goto_69
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method


# virtual methods
.method public blacklist getString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
