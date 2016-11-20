.class public final enum Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
.super Ljava/lang/Enum;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/DigitallySigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum MD5:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum NONE:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA1:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA224:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA256:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA384:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA512:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private static values:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 27
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@7
    const-string/jumbo v1, "NONE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->NONE:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@f
    .line 28
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@11
    const-string/jumbo v1, "MD5"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->MD5:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@19
    .line 29
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@1b
    const-string/jumbo v1, "SHA1"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA1:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@23
    .line 30
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@25
    const-string/jumbo v1, "SHA224"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA224:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@2d
    .line 31
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@2f
    const-string/jumbo v1, "SHA256"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA256:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@37
    .line 32
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@39
    const-string/jumbo v1, "SHA384"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA384:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@42
    .line 33
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@44
    const-string/jumbo v1, "SHA512"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA512:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@4d
    .line 26
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@50
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->NONE:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->MD5:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA1:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA224:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA256:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA384:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA512:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@70
    .line 35
    invoke-static {}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->values()[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@73
    move-result-object v0

    #@74
    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@76
    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 4
    .param p0, "ord"    # I

    #@0
    .prologue
    .line 38
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@2
    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    return-object v1

    #@5
    .line 39
    :catch_0
    move-exception v0

    #@6
    .line 40
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid hash algorithm "

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    const-class v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 26
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@2
    return-object v0
.end method
