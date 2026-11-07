.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC;
.super Ljava/lang/Object;
.source "EC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;
    }
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.ec."

.field private static final blacklist generalEcAttributes:Ljava/util/Map;
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

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "java.security.interfaces.ECPublicKey|java.security.interfaces.ECPrivateKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "PKCS#8|X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
