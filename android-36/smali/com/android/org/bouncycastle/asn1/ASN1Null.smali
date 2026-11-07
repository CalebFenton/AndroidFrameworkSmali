.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Null;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Null.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Null$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Null$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Null;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1Null;
    .registers 2

    .line 90
    array-length p0, p0

    if-nez p0, :cond_6

    .line 94
    sget-object p0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    return-object p0

    .line 92
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "malformed NULL encoding encountered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 2

    .line 75
    instance-of p0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 85
    const-string p0, "NULL"

    return-object p0
.end method
