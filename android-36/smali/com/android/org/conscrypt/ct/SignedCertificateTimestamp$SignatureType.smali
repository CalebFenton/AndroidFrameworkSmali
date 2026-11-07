.class public final enum Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
.super Ljava/lang/Enum;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum blacklist CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum blacklist TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .registers 2

    .line 52
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    filled-new-array {v0, v1}, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string v1, "CERTIFICATE_TIMESTAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    .line 54
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string v1, "TREE_HASH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    .line 52
    invoke-static {}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->value:I

    .line 59
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
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

    .line 52
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method


# virtual methods
.method blacklist value()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->value:I

    return v0
.end method
