.class final enum Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
.super Ljava/lang/Enum;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum blacklist PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum blacklist PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;


# instance fields
.field private final blacklist apiName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .registers 2

    .line 52
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    filled-new-array {v0, v1}, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetapiName(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const/4 v1, 0x0

    const-string v2, "PkiPath"

    const-string v3, "PKI_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 54
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string v1, "PKCS7"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 52
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "apiName"    # Ljava/lang/String;
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static blacklist findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .registers 6
    .param p0, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 64
    .local v3, "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    iget-object v4, v3, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 65
    return-object v3

    .line 63
    .end local v3    # "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 69
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
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
    const-class v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method
