.class public Landroid/test/AndroidTestCase;
.super Ljunit/framework/TestCase;
.source "AndroidTestCase.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mTestContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public assertActivityRequiresPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    .line 94
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@8
    .line 95
    const/high16 v2, 0x10000000

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@14
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "expected security exception for "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v2}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 92
    :goto_0
    return-void

    #@2c
    .line 100
    :catch_0
    move-exception v0

    #@2d
    .line 101
    .local v0, "expected":Ljava/lang/SecurityException;
    const-string/jumbo v2, "security exception\'s error message."

    #@30
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v2, v3}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "error message should contain "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, "."

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 103
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@59
    move-result v3

    #@5a
    .line 102
    invoke-static {v2, v3}, Landroid/test/AndroidTestCase;->assertTrue(Ljava/lang/String;Z)V

    #@5d
    goto :goto_0
.end method

.method public assertReadingContentUriRequiresPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    const/4 v5, 0x0

    #@c
    move-object v1, p1

    #@d
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@10
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "expected SecurityException requiring "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 115
    :goto_0
    return-void

    #@28
    .line 119
    :catch_0
    move-exception v6

    #@29
    .line 120
    .local v6, "expected":Ljava/lang/SecurityException;
    const-string/jumbo v0, "security exception\'s error message."

    #@2c
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@33
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v1, "error message should contain "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string/jumbo v1, "."

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 122
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@55
    move-result v1

    #@56
    .line 121
    invoke-static {v0, v1}, Landroid/test/AndroidTestCase;->assertTrue(Ljava/lang/String;Z)V

    #@59
    goto :goto_0
.end method

.method public assertWritingContentUriRequiresPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    new-instance v2, Landroid/content/ContentValues;

    #@a
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@d
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@10
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "expected SecurityException requiring "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 134
    :goto_0
    return-void

    #@28
    .line 138
    :catch_0
    move-exception v0

    #@29
    .line 139
    .local v0, "expected":Ljava/lang/SecurityException;
    const-string/jumbo v1, "security exception\'s error message."

    #@2c
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@33
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "error message should contain \""

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, "\". Got: \""

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 141
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 141
    const-string/jumbo v2, "\"."

    #@55
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    .line 142
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@64
    move-result v2

    #@65
    .line 140
    invoke-static {v1, v2}, Landroid/test/AndroidTestCase;->assertTrue(Ljava/lang/String;Z)V

    #@68
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getTestContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/test/AndroidTestCase;->mTestContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected scrubClass(Ljava/lang/Class;)V
    .locals 7
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
    .line 158
    .local p1, "testCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@7
    move-result-object v2

    #@8
    .line 159
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    #@9
    array-length v4, v2

    #@a
    :goto_0
    if-ge v3, v4, :cond_2

    #@c
    aget-object v1, v2, v3

    #@e
    .line 160
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_0

    #@18
    .line 161
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@1b
    move-result v5

    #@1c
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 159
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 163
    :cond_1
    const/4 v5, 0x1

    #@26
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@29
    .line 164
    const/4 v5, 0x0

    #@2a
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 169
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    if-eqz v5, :cond_0

    #@33
    .line 170
    const-string/jumbo v5, "TestCase"

    #@36
    const-string/jumbo v6, "Error: Could not nullify field!"

    #@39
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_1

    #@3d
    .line 165
    :catch_0
    move-exception v0

    #@3e
    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TestCase"

    #@41
    const-string/jumbo v6, "Error: Could not nullify field!"

    #@44
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_2

    #@48
    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    #@2
    .line 52
    return-void
.end method

.method public setTestContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 69
    iput-object p1, p0, Landroid/test/AndroidTestCase;->mTestContext:Landroid/content/Context;

    #@2
    .line 68
    return-void
.end method

.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    #@3
    .line 38
    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    #@3
    .line 43
    return-void
.end method

.method public testAndroidTestCaseSetupProperly()V
    .locals 2

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "Context is null. setContext should be called before tests are run"

    #@3
    .line 49
    iget-object v1, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    #@5
    .line 48
    invoke-static {v0, v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 47
    return-void
.end method
