.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
.super Ljava/lang/Object;
.source "CompositeAlgorithmSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist algorithmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parameterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetalgorithmNames(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetparameterSpecs(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    .registers 4
    .param p1, "algorithmName"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    .registers 4
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "parameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)V

    return-object v0

    .line 47
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build with no algorithm names added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
