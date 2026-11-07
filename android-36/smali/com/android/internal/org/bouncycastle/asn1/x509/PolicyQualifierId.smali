.class public Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "PolicyQualifierId.java"


# static fields
.field private static final blacklist id_qt:Ljava/lang/String; = "1.3.6.1.5.5.7.2"

.field public static final blacklist id_qt_cps:Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;

.field public static final blacklist id_qt_unotice:Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_unotice:Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierId;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
