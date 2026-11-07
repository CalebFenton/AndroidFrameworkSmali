.class final Lcom/android/org/conscrypt/OidData;
.super Ljava/lang/Object;
.source "OidData.java"


# static fields
.field private static final blacklist OID_TO_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.2"

    const-string v2, "MD2withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.4"

    const-string v2, "MD5withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.5"

    const-string v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10040.4.3"

    const-string v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.1"

    const-string v2, "SHA1withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.14"

    const-string v2, "SHA224withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.11"

    const-string v2, "SHA256withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.12"

    const-string v2, "SHA384withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.13"

    const-string v2, "SHA512withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.3.1"

    const-string v2, "SHA224withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.3.2"

    const-string v2, "SHA256withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.1"

    const-string v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.2"

    const-string v2, "SHA256withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.3"

    const-string v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.4"

    const-string v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/android/org/conscrypt/OidData;->OID_TO_NAME_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
