.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/MD5$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "MD5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/MD5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/MD5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/MD5$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 93
    return-void
.end method
