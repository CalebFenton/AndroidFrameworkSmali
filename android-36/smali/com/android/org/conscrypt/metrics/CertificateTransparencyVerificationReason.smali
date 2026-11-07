.class public final enum Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;
.super Ljava/lang/Enum;
.source "CertificateTransparencyVerificationReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

.field public static final enum blacklist APP_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

.field public static final enum blacklist DOMAIN_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

.field public static final enum blacklist UNKNOWN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;


# instance fields
.field final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .registers 3

    .line 30
    sget-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->UNKNOWN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    sget-object v1, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->APP_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    sget-object v2, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->DOMAIN_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    filled-new-array {v0, v1, v2}, [Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->UNKNOWN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    .line 33
    new-instance v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "APP_OPT_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->APP_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-string v3, "DOMAIN_OPT_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->DOMAIN_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    .line 30
    invoke-static {}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->$values()[Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->$VALUES:[Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->id:I

    .line 45
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    const-class v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->$VALUES:[Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->id:I

    return v0
.end method
