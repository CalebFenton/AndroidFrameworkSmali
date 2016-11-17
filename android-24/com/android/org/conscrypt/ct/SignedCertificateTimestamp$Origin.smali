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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 38
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@5
    const-string/jumbo v1, "EMBEDDED"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@d
    .line 39
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@f
    const-string/jumbo v1, "TLS_EXTENSION"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@17
    .line 40
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@19
    const-string/jumbo v1, "OCSP_RESPONSE"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@21
    .line 37
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@24
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1

    #@0
    .prologue
    .line 37
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2
    return-object v0
.end method
