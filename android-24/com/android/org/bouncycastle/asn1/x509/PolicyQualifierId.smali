.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;
.super Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "PolicyQualifierId.java"


# static fields
.field private static final id_qt:Ljava/lang/String; = "1.3.6.1.5.5.7.2"

.field public static final id_qt_cps:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

.field public static final id_qt_unotice:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    #@2
    const-string/jumbo v1, "1.3.6.1.5.5.7.2.1"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    #@8
    .line 27
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    #@a
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    #@c
    const-string/jumbo v1, "1.3.6.1.5.5.7.2.2"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    #@12
    .line 29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_unotice:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    #@14
    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3
    .line 22
    return-void
.end method
