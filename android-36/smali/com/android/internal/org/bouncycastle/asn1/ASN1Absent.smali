.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Absent.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 45
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 3
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method
