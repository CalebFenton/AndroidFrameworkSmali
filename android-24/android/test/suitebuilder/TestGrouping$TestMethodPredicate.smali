.class Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestMethodPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 249
    check-cast p1, Ljava/lang/reflect/Method;

    #@2
    .end local p1    # "method":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;->apply(Ljava/lang/reflect/Method;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public apply(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 250
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    array-length v1, v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 251
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "test"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    .line 250
    if-eqz v1, :cond_0

    #@15
    .line 252
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "void"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 250
    :cond_0
    return v0
.end method
