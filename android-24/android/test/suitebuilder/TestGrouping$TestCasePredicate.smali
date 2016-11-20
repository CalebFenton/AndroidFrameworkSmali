.class Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;
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
    name = "TestCasePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>()V

    #@3
    return-void
.end method

.method private hasValidConstructor(Ljava/lang/Class;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 229
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    #@5
    move-result-object v1

    #@6
    .line 230
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    array-length v5, v1

    #@7
    move v3, v4

    #@8
    :goto_0
    if-ge v3, v5, :cond_2

    #@a
    aget-object v0, v1, v3

    #@c
    .line 231
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@f
    move-result v6

    #@10
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 232
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    .line 233
    .local v2, "parameterTypes":[Ljava/lang/Class;
    array-length v6, v2

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 234
    array-length v6, v2

    #@1e
    if-ne v6, v8, :cond_1

    #@20
    aget-object v6, v2, v4

    #@22
    const-class v7, Ljava/lang/String;

    #@24
    if-ne v6, v7, :cond_1

    #@26
    .line 235
    :cond_0
    return v8

    #@27
    .line 230
    .end local v2    # "parameterTypes":[Ljava/lang/Class;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 239
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    :cond_2
    const-string/jumbo v3, "TestGrouping"

    #@2d
    .line 240
    const-string/jumbo v5, "TestCase class %s is missing a public constructor with no parameters or a single String parameter - skipping"

    #@30
    .line 239
    new-array v6, v8, [Ljava/lang/Object;

    #@32
    .line 242
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    aput-object v7, v6, v4

    #@38
    .line 239
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 243
    return v4
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "aClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    #@3
    move-result v0

    #@4
    .line 217
    .local v0, "modifiers":I
    const-class v1, Ljunit/framework/TestCase;

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 218
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@f
    move-result v1

    #@10
    .line 217
    if-eqz v1, :cond_0

    #@12
    .line 219
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 217
    :cond_0
    const/4 v1, 0x0

    #@19
    :goto_0
    return v1

    #@1a
    .line 220
    :cond_1
    invoke-direct {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->hasValidConstructor(Ljava/lang/Class;)Z

    #@1d
    move-result v1

    #@1e
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "aClass"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 215
    check-cast p1, Ljava/lang/Class;

    #@2
    .end local p1    # "aClass":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->apply(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
