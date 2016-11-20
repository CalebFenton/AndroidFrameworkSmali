.class public Lsun/security/validator/ValidatorException;
.super Ljava/security/cert/CertificateException;
.source "ValidatorException.java"


# static fields
.field public static final T_ALGORITHM_DISABLED:Ljava/lang/Object;

.field public static final T_CA_EXTENSIONS:Ljava/lang/Object;

.field public static final T_CERT_EXPIRED:Ljava/lang/Object;

.field public static final T_EE_EXTENSIONS:Ljava/lang/Object;

.field public static final T_NAME_CHAINING:Ljava/lang/Object;

.field public static final T_NO_TRUST_ANCHOR:Ljava/lang/Object;

.field public static final T_SIGNATURE_ERROR:Ljava/lang/Object;

.field public static final T_UNTRUSTED_CERT:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x275e9f12c6b9ebbbL


# instance fields
.field private cert:Ljava/security/cert/X509Certificate;

.field private type:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "No trusted certificate found"

    #@3
    .line 40
    sput-object v0, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    #@5
    .line 44
    const-string/jumbo v0, "End entity certificate extension check failed"

    #@8
    .line 43
    sput-object v0, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@a
    .line 47
    const-string/jumbo v0, "CA certificate extension check failed"

    #@d
    .line 46
    sput-object v0, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@f
    .line 50
    const-string/jumbo v0, "Certificate expired"

    #@12
    .line 49
    sput-object v0, Lsun/security/validator/ValidatorException;->T_CERT_EXPIRED:Ljava/lang/Object;

    #@14
    .line 53
    const-string/jumbo v0, "Certificate signature validation failed"

    #@17
    .line 52
    sput-object v0, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    #@19
    .line 56
    const-string/jumbo v0, "Certificate chaining error"

    #@1c
    .line 55
    sput-object v0, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    #@1e
    .line 59
    const-string/jumbo v0, "Certificate signature algorithm disabled"

    #@21
    .line 58
    sput-object v0, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    #@23
    .line 62
    const-string/jumbo v0, "Untrusted certificate"

    #@26
    .line 61
    sput-object v0, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    #@28
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@4
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 81
    check-cast v0, Ljava/lang/String;

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@6
    .line 82
    iput-object p1, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    #@8
    .line 83
    iput-object p2, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    #@a
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@3
    .line 89
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Object;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 94
    iput-object p2, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    #@5
    .line 95
    iput-object p3, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    #@7
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Object;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@3
    .line 101
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6
    .line 71
    return-void
.end method


# virtual methods
.method public getErrorCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getErrorType()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    #@2
    return-object v0
.end method
