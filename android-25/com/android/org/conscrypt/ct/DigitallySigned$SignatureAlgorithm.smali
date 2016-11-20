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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field private static values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 46
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@6
    const-string/jumbo v1, "ANONYMOUS"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@e
    .line 47
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@10
    const-string/jumbo v1, "RSA"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@18
    .line 48
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@1a
    const-string/jumbo v1, "DSA"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@22
    .line 49
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@24
    const-string/jumbo v1, "ECDSA"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@2c
    .line 45
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@2f
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@41
    .line 51
    invoke-static {}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@44
    move-result-object v0

    #@45
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@47
    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 4
    .param p0, "ord"    # I

    #@0
    .prologue
    .line 54
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@2
    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    return-object v1

    #@5
    .line 55
    :catch_0
    move-exception v0

    #@6
    .line 56
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid signature algorithm "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    const-class v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 45
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@2
    return-object v0
.end method
