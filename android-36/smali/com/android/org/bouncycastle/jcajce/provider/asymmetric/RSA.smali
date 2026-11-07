.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field private static final blacklist generalRsaAttributes:Ljava/util/Map;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetgeneralRsaAttributes()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA;->generalRsaAttributes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA;->generalRsaAttributes:Ljava/util/Map;

    .line 31
    const-string v1, "SupportedKeyClasses"

    const-string v2, "java.security.interfaces.RSAPublicKey|java.security.interfaces.RSAPrivateKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "SupportedKeyFormats"

    const-string v2, "PKCS#8|X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
