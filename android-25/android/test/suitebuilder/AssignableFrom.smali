.class Landroid/test/suitebuilder/AssignableFrom;
.super Ljava/lang/Object;
.source "AssignableFrom.java"

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
.field private final root:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "root"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Landroid/test/suitebuilder/AssignableFrom;->root:Ljava/lang/Class;

    #@5
    .line 25
    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 2
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Landroid/test/suitebuilder/AssignableFrom;->root:Ljava/lang/Class;

    #@2
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "testMethod"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 29
    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    #@2
    .end local p1    # "testMethod":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/AssignableFrom;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
