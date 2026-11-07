.class public final Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParams;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And192BitAESBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And128BitAESBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd256BitAESBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd192BitAESBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd128BitAESBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC192;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC192;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$Wrap;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$OFB;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$CFB;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$CBC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;
    }
.end annotation


# static fields
.field private static final blacklist generalAesAttributes:Ljava/util/Map;
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
.method static bridge synthetic blacklist -$$Nest$sfgetgeneralAesAttributes()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "javax.crypto.SecretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "RAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method
