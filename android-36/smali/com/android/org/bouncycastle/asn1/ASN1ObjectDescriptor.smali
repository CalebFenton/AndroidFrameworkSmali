.class public final Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectDescriptor.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_8

    .line 86
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    return-void

    .line 83
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'baseGraphicString\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 2

    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 126
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 133
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 v0, 0x7

    .line 106
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 107
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->encodedLength(Z)I

    move-result p0

    return p0
.end method

.method public blacklist getBaseGraphicString()Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    .line 114
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_d

    return-object p0

    :cond_d
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    .line 121
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_d

    return-object p0

    :cond_d
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method
