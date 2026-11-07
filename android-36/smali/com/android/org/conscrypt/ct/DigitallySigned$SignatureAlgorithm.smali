.class public final enum Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/DigitallySigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum blacklist ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum blacklist DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum blacklist ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum blacklist RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field private static blacklist values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .registers 4

    .line 55
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    sget-object v2, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    sget-object v3, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string v1, "ANONYMOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 57
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string v1, "RSA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 58
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string v1, "DSA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 59
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string v1, "ECDSA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 55
    invoke-static {}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 61
    invoke-static {}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .registers 5
    .param p0, "ord"    # I

    .line 64
    :try_start_0
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    aget-object v0, v0, p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 65
    :catch_5
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid signature algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
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

    .line 55
    const-class v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method
