.class public abstract Landroid/test/ActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "ActivityTestCase.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method protected scrubClass(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "testCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 63
    invoke-virtual {p0}, Landroid/test/ActivityTestCase;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@8
    move-result-object v3

    #@9
    .line 64
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    #@a
    :goto_0
    if-ge v4, v5, :cond_2

    #@c
    aget-object v1, v3, v4

    #@e
    .line 65
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    .line 66
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_0

    #@18
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_1

    #@22
    .line 64
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@28
    move-result v6

    #@29
    and-int/lit8 v6, v6, 0x10

    #@2b
    if-nez v6, :cond_0

    #@2d
    .line 69
    const/4 v6, 0x1

    #@2e
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@31
    .line 70
    const/4 v6, 0x0

    #@32
    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 75
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    if-eqz v6, :cond_0

    #@3b
    .line 76
    const-string/jumbo v6, "TestCase"

    #@3e
    const-string/jumbo v7, "Error: Could not nullify field!"

    #@41
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    goto :goto_1

    #@45
    .line 71
    :catch_0
    move-exception v0

    #@46
    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TestCase"

    #@49
    const-string/jumbo v7, "Error: Could not nullify field!"

    #@4c
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    goto :goto_2

    #@50
    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method protected setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "testActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    #@2
    .line 47
    return-void
.end method
