.class public Landroid/test/suitebuilder/annotation/HasAnnotation;
.super Ljava/lang/Object;
.source "HasAnnotation.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/test/suitebuilder/TestMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private hasMethodOrClassAnnotation:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    #@6
    .line 37
    new-instance v1, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;

    #@8
    invoke-direct {v1, p1}, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;-><init>(Ljava/lang/Class;)V

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 38
    new-instance v1, Landroid/test/suitebuilder/annotation/HasClassAnnotation;

    #@10
    invoke-direct {v1, p1}, Landroid/test/suitebuilder/annotation/HasClassAnnotation;-><init>(Ljava/lang/Class;)V

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 36
    invoke-static {v0}, Lcom/android/internal/util/Predicates;->or([Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/test/suitebuilder/annotation/HasAnnotation;->hasMethodOrClassAnnotation:Lcom/android/internal/util/Predicate;

    #@1c
    .line 35
    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 1
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/test/suitebuilder/annotation/HasAnnotation;->hasMethodOrClassAnnotation:Lcom/android/internal/util/Predicate;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "testMethod"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 41
    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    #@2
    .end local p1    # "testMethod":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/annotation/HasAnnotation;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
