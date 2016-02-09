.class public Ljunit/framework/TestSuite;
.super Ljava/lang/Object;
.source "TestSuite.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field private fName:Ljava/lang/String;

.field private fTests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/util/Vector;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@a
    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@c
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/util/Vector;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@a
    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@c
    .line 129
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->addTestsFromTestCase(Ljava/lang/Class;)V

    #@f
    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@3
    .line 163
    invoke-virtual {p0, p2}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    #@6
    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/util/Vector;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@a
    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@c
    .line 170
    invoke-virtual {p0, p1}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    #@f
    .line 169
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    new-instance v1, Ljava/util/Vector;

    #@5
    const/16 v2, 0xa

    #@7
    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    #@a
    iput-object v1, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@c
    .line 178
    const/4 v1, 0x0

    #@d
    array-length v2, p1

    #@e
    :goto_0
    if-ge v1, v2, :cond_0

    #@10
    aget-object v0, p1, v1

    #@12
    .line 179
    .local v0, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Ljunit/framework/TestSuite;->testCaseForClass(Ljava/lang/Class;)Ljunit/framework/Test;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p0, v3}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@19
    .line 178
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 177
    .end local v0    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>([Ljava/lang/Class;)V

    #@3
    .line 195
    invoke-virtual {p0, p2}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    #@6
    .line 193
    return-void
.end method

.method private addTestMethod(Ljava/lang/reflect/Method;Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 285
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 287
    return-void

    #@b
    .line 288
    :cond_0
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->isPublicTestMethod(Ljava/lang/reflect/Method;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_2

    #@11
    .line 289
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->isTestMethod(Ljava/lang/reflect/Method;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Test method isn\'t public: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "("

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, ")"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v1}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {p0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@4c
    .line 291
    :cond_1
    return-void

    #@4d
    .line 293
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@50
    .line 294
    invoke-static {p3, v0}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@57
    .line 284
    return-void
.end method

.method private addTestsFromTestCase(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 133
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    iput-object v4, p0, Ljunit/framework/TestSuite;->fName:Ljava/lang/String;

    #@7
    .line 135
    :try_start_0
    invoke-static {p1}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    #@d
    move-result v4

    #@e
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Class "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, " is not public"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v4}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {p0, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@3a
    .line 143
    return-void

    #@3b
    .line 136
    :catch_0
    move-exception v0

    #@3c
    .line 137
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Class "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, " has no public constructor TestCase(String name) or TestCase()"

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-static {v4}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {p0, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@62
    .line 138
    return-void

    #@63
    .line 146
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    move-object v3, p1

    #@64
    .line 147
    .local v3, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/ArrayList;

    #@66
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@69
    .line 148
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const-class v4, Ljunit/framework/Test;

    #@6b
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_2

    #@71
    .line 149
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@74
    move-result-object v6

    #@75
    array-length v7, v6

    #@76
    move v4, v5

    #@77
    :goto_1
    if-ge v4, v7, :cond_1

    #@79
    aget-object v1, v6, v4

    #@7b
    .line 150
    .local v1, "each":Ljava/lang/reflect/Method;
    invoke-direct {p0, v1, v2, p1}, Ljunit/framework/TestSuite;->addTestMethod(Ljava/lang/reflect/Method;Ljava/util/List;Ljava/lang/Class;)V

    #@7e
    .line 149
    add-int/lit8 v4, v4, 0x1

    #@80
    goto :goto_1

    #@81
    .line 151
    .end local v1    # "each":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@84
    move-result-object v3

    #@85
    goto :goto_0

    #@86
    .line 153
    :cond_2
    iget-object v4, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@88
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@8b
    move-result v4

    #@8c
    if-nez v4, :cond_3

    #@8e
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v5, "No tests found in "

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    invoke-static {v4}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {p0, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@ad
    .line 132
    :cond_3
    return-void
.end method

.method public static createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljunit/framework/Test;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 60
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@7
    move-result-object v7

    #@8
    array-length v7, v7

    #@9
    if-nez v7, :cond_1

    #@b
    .line 61
    const/4 v7, 0x0

    #@c
    new-array v7, v7, [Ljava/lang/Object;

    #@e
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    .line 62
    .local v6, "test":Ljava/lang/Object;
    instance-of v7, v6, Ljunit/framework/TestCase;

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 63
    move-object v0, v6

    #@17
    check-cast v0, Ljunit/framework/TestCase;

    #@19
    move-object v7, v0

    #@1a
    invoke-virtual {v7, p1}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d
    .line 74
    :cond_0
    :goto_0
    check-cast v6, Ljunit/framework/Test;

    #@1f
    .end local v6    # "test":Ljava/lang/Object;
    return-object v6

    #@20
    .line 55
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v4

    #@21
    .line 56
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v8, "Class "

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    const-string/jumbo v8, " has no public constructor TestCase(String name) or TestCase()"

    #@38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-static {v7}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@43
    move-result-object v7

    #@44
    return-object v7

    #@45
    .line 65
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    const/4 v7, 0x1

    #@46
    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    #@48
    const/4 v8, 0x0

    #@49
    aput-object p1, v7, v8

    #@4b
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    #@4e
    move-result-object v6

    #@4f
    .restart local v6    # "test":Ljava/lang/Object;
    goto :goto_0

    #@50
    .line 71
    .end local v6    # "test":Ljava/lang/Object;
    :catch_1
    move-exception v2

    #@51
    .line 72
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "Cannot access test case: "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    const-string/jumbo v8, " ("

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-static {v2}, Ljunit/framework/TestSuite;->exceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    const-string/jumbo v8, ")"

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-static {v7}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@7e
    move-result-object v7

    #@7f
    return-object v7

    #@80
    .line 69
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    #@81
    .line 70
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v8, "Exception in constructor: "

    #@89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    const-string/jumbo v8, " ("

    #@94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@9b
    move-result-object v8

    #@9c
    invoke-static {v8}, Ljunit/framework/TestSuite;->exceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    const-string/jumbo v8, ")"

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v7

    #@ab
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v7

    #@af
    invoke-static {v7}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@b2
    move-result-object v7

    #@b3
    return-object v7

    #@b4
    .line 67
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    #@b5
    .line 68
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v8, "Cannot instantiate test case: "

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    const-string/jumbo v8, " ("

    #@c8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v7

    #@cc
    invoke-static {v3}, Ljunit/framework/TestSuite;->exceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@cf
    move-result-object v8

    #@d0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    const-string/jumbo v8, ")"

    #@d7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v7

    #@db
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v7

    #@df
    invoke-static {v7}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@e2
    move-result-object v7

    #@e3
    return-object v7
.end method

.method private static exceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/io/StringWriter;

    #@2
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 107
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@a
    .line 108
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@d
    .line 109
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method public static getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 83
    const/4 v1, 0x1

    #@2
    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    #@4
    const-class v2, Ljava/lang/String;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object v2, v1, v3

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 84
    :catch_0
    move-exception v0

    #@f
    .line 87
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-array v1, v4, [Ljava/lang/Class;

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method private isPublicTestMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 298
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->isTestMethod(Ljava/lang/reflect/Method;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private isTestMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    array-length v1, v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 304
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
    .line 303
    if-eqz v1, :cond_0

    #@15
    .line 305
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    .line 302
    :cond_0
    return v0
.end method

.method private testCaseForClass(Ljava/lang/Class;)Ljunit/framework/Test;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    #@0
    .prologue
    .line 183
    .local p1, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljunit/framework/TestCase;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 184
    new-instance v0, Ljunit/framework/TestSuite;

    #@a
    const-class v1, Ljunit/framework/TestCase;

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@13
    return-object v0

    #@14
    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, " does not extend TestCase"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public static warning(Ljava/lang/String;)Ljunit/framework/Test;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    new-instance v0, Ljunit/framework/TestSuite$1;

    #@2
    const-string/jumbo v1, "warning"

    #@5
    invoke-direct {v0, v1, p0}, Ljunit/framework/TestSuite$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    return-object v0
.end method


# virtual methods
.method public addTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@5
    .line 201
    return-void
.end method

.method public addTestSuite(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    new-instance v0, Ljunit/framework/TestSuite;

    #@2
    invoke-direct {v0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@5
    invoke-virtual {p0, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@8
    .line 208
    return-void
.end method

.method public countTestCases()I
    .locals 4

    #@0
    .prologue
    .line 216
    const/4 v0, 0x0

    #@1
    .line 217
    .local v0, "count":I
    iget-object v3, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "each$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljunit/framework/Test;

    #@13
    .line 218
    .local v1, "each":Ljunit/framework/Test;
    invoke-interface {v1}, Ljunit/framework/Test;->countTestCases()I

    #@16
    move-result v3

    #@17
    add-int/2addr v0, v3

    #@18
    goto :goto_0

    #@19
    .line 219
    .end local v1    # "each":Ljunit/framework/Test;
    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ljunit/framework/TestSuite;->fName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 3
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 235
    iget-object v2, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "each$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljunit/framework/Test;

    #@12
    .line 236
    .local v0, "each":Ljunit/framework/Test;
    invoke-virtual {p1}, Ljunit/framework/TestResult;->shouldStop()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 234
    .end local v0    # "each":Ljunit/framework/Test;
    :cond_0
    return-void

    #@19
    .line 238
    .restart local v0    # "each":Ljunit/framework/Test;
    :cond_1
    invoke-virtual {p0, v0, p1}, Ljunit/framework/TestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    #@1c
    goto :goto_0
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 243
    invoke-interface {p1, p2}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    #@3
    .line 242
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 251
    iput-object p1, p0, Ljunit/framework/TestSuite;->fName:Ljava/lang/String;

    #@2
    .line 250
    return-void
.end method

.method public testAt(I)Ljunit/framework/Test;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljunit/framework/Test;

    #@8
    return-object v0
.end method

.method public testCount()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tests()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 280
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 281
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
