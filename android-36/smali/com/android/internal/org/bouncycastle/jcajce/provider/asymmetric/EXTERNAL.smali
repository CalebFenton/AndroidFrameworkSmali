.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;
.super Ljava/lang/Object;
.source "EXTERNAL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$Mappings;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$KeyFactory;
    }
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL"

.field private static blacklist baseConverter:Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

.field private static final blacklist externalAttributes:Ljava/util/Map;
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
.method static bridge synthetic blacklist -$$Nest$sfgetbaseConverter()Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->baseConverter:Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputbaseConverter(Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .registers 1

    sput-object p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->baseConverter:Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->externalAttributes:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->externalAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.ExternalPublicKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->externalAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
