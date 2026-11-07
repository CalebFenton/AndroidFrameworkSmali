.class public final enum Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
.super Ljava/lang/Enum;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum blacklist EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum blacklist OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum blacklist TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .registers 3

    .line 69
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    sget-object v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    filled-new-array {v0, v1, v2}, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 69
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string v1, "TLS_EXTENSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string v1, "OCSP_RESPONSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
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

    .line 69
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object v0
.end method
