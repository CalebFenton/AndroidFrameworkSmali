.class Landroid/test/suitebuilder/annotation/HasClassAnnotation;
.super Ljava/lang/Object;
.source "HasClassAnnotation.java"

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
.field private annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
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
    .line 34
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroid/test/suitebuilder/annotation/HasClassAnnotation;->annotationClass:Ljava/lang/Class;

    #@5
    .line 34
    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 2
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;

    #@0
    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/test/suitebuilder/annotation/HasClassAnnotation;->annotationClass:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "testMethod"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    #@2
    .end local p1    # "testMethod":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/annotation/HasClassAnnotation;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
