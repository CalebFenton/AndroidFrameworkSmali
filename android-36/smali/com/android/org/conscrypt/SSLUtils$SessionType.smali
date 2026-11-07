.class final enum Lcom/android/org/conscrypt/SSLUtils$SessionType;
.super Ljava/lang/Enum;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/SSLUtils$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/SSLUtils$SessionType;

.field public static final enum blacklist OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

.field public static final enum blacklist OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

.field public static final enum blacklist OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;


# instance fields
.field final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/SSLUtils$SessionType;
    .registers 3

    .line 71
    sget-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    sget-object v2, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    filled-new-array {v0, v1, v2}, [Lcom/android/org/conscrypt/SSLUtils$SessionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 75
    new-instance v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    const-string v1, "OPEN_SSL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    .line 80
    new-instance v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    const-string v1, "OPEN_SSL_WITH_OCSP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    .line 85
    new-instance v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    const-string v1, "OPEN_SSL_WITH_TLS_SCT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    .line 71
    invoke-static {}, Lcom/android/org/conscrypt/SSLUtils$SessionType;->$values()[Lcom/android/org/conscrypt/SSLUtils$SessionType;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->$VALUES:[Lcom/android/org/conscrypt/SSLUtils$SessionType;

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

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    .line 89
    return-void
.end method

.method static blacklist isSupportedType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 92
    sget-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v0, v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v0, v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v0, v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/SSLUtils$SessionType;
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

    .line 71
    const-class v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/SSLUtils$SessionType;
    .registers 1

    .line 71
    sget-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->$VALUES:[Lcom/android/org/conscrypt/SSLUtils$SessionType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/SSLUtils$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/SSLUtils$SessionType;

    return-object v0
.end method
