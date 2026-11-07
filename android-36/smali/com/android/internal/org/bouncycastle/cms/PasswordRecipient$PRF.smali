.class public final Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;
.super Ljava/lang/Object;
.source "PasswordRecipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PRF"
.end annotation


# static fields
.field public static final blacklist HMacSHA1:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final blacklist HMacSHA224:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final blacklist HMacSHA256:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final blacklist HMacSHA384:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final blacklist HMacSHA512:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;


# instance fields
.field private final blacklist hmac:Ljava/lang/String;

.field final blacklist prfAlgID:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 19
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA1"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA1:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    .line 20
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA224"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA224:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA256"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA256:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    .line 22
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA384"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA384:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    .line 23
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA512"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA512:Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 3
    .param p1, "hmac"    # Ljava/lang/String;
    .param p2, "prfAlgID"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->hmac:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->prfAlgID:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->prfAlgID:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;->hmac:Ljava/lang/String;

    return-object v0
.end method
