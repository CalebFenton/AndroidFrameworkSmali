.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
.super Ljava/lang/Object;
.source "CompositeAlgorithmSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    }
.end annotation


# instance fields
.field private final blacklist algorithmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist parameterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->-$$Nest$fgetalgorithmNames(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->algorithmNames:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->-$$Nest$fgetparameterSpecs(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->parameterSpecs:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->algorithmNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getParameterSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->parameterSpecs:Ljava/util/List;

    return-object v0
.end method
