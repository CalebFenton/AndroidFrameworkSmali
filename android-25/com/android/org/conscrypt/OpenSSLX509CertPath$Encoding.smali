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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 46
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@4
    const-string/jumbo v1, "PKI_PATH"

    #@7
    const-string/jumbo v2, "PkiPath"

    #@a
    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@d
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@f
    .line 47
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@11
    const-string/jumbo v1, "PKCS7"

    #@14
    const-string/jumbo v2, "PKCS7"

    #@17
    invoke-direct {v0, v1, v4, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1a
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@1c
    .line 45
    const/4 v0, 0x2

    #@1d
    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@1f
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@21
    aput-object v1, v0, v3

    #@23
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@25
    aput-object v1, v0, v4

    #@27
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "apiName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 52
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    #@5
    .line 51
    return-void
.end method

.method static findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 5
    .param p0, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 57
    .local v0, "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    #@c
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 58
    return-object v0

    #@13
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 62
    .end local v0    # "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_1
    const/4 v1, 0x0

    #@17
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    const-class v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    #@0
    .prologue
    .line 45
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@2
    return-object v0
.end method
