.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final blacklist generalAesAttributes:Ljava/util/Map;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetgeneralAesAttributes()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    .line 75
    const-string v1, "SupportedKeyClasses"

    const-string v2, "javax.crypto.SecretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "SupportedKeyFormats"

    const-string v2, "RAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
