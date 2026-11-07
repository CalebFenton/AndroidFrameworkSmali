.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "EC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 314
    return-void
.end method
