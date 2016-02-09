.class Landroid/test/InstrumentationCoreTestRunner$1;
.super Ljava/lang/Object;
.source "InstrumentationCoreTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/InstrumentationCoreTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MINIMUM_TIME:I = 0x64


# instance fields
.field private lastClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private startTime:J

.field final synthetic this$0:Landroid/test/InstrumentationCoreTestRunner;


# direct methods
.method constructor <init>(Landroid/test/InstrumentationCoreTestRunner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/InstrumentationCoreTestRunner;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Landroid/test/InstrumentationCoreTestRunner$1;->this$0:Landroid/test/InstrumentationCoreTestRunner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private cleanup(Ljunit/framework/TestCase;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/TestCase;

    #@0
    .prologue
    .line 170
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 172
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v5, Ljunit/framework/TestCase;

    #@6
    if-eq v0, v5, :cond_3

    #@8
    .line 173
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@b
    move-result-object v2

    #@c
    .line 174
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_1
    array-length v5, v2

    #@e
    if-ge v3, v5, :cond_2

    #@10
    .line 175
    aget-object v1, v2, v3

    #@12
    .line 176
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_0

    #@1c
    .line 177
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@1f
    move-result v5

    #@20
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 174
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_1

    #@29
    .line 179
    :cond_1
    const/4 v5, 0x1

    #@2a
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@2d
    .line 180
    const/4 v5, 0x0

    #@2e
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    goto :goto_2

    #@32
    .line 181
    :catch_0
    move-exception v4

    #@33
    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_2

    #@34
    .line 187
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "ignored":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@37
    move-result-object v0

    #@38
    goto :goto_0

    #@39
    .line 169
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private printMemory(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v2

    #@4
    .line 152
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    #@7
    move-result-wide v4

    #@8
    .line 153
    .local v4, "total":J
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@b
    move-result-wide v0

    #@c
    .line 154
    .local v0, "free":J
    sub-long v6, v4, v0

    #@e
    .line 156
    .local v6, "used":J
    const-string/jumbo v3, "InstrumentationCoreTestRunner"

    #@11
    new-instance v8, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v9, "Total memory  : "

    #@19
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 157
    const-string/jumbo v3, "InstrumentationCoreTestRunner"

    #@2b
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v9, "Used memory   : "

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 158
    const-string/jumbo v3, "InstrumentationCoreTestRunner"

    #@45
    new-instance v8, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v9, "Free memory   : "

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 159
    const-string/jumbo v3, "InstrumentationCoreTestRunner"

    #@5f
    new-instance v8, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v9, "Now executing : "

    #@67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 149
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 138
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 10
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    const-wide/16 v8, 0x64

    #@2
    .line 117
    instance-of v1, p1, Ljunit/framework/TestCase;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 118
    check-cast p1, Ljunit/framework/TestCase;

    #@8
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-direct {p0, p1}, Landroid/test/InstrumentationCoreTestRunner$1;->cleanup(Ljunit/framework/TestCase;)V

    #@b
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v4

    #@f
    iget-wide v6, p0, Landroid/test/InstrumentationCoreTestRunner$1;->startTime:J

    #@11
    sub-long v2, v4, v6

    #@13
    .line 128
    .local v2, "timeTaken":J
    cmp-long v1, v2, v8

    #@15
    if-gez v1, :cond_0

    #@17
    .line 130
    sub-long v4, v8, v2

    #@19
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 116
    .end local v2    # "timeTaken":J
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 131
    .restart local v2    # "timeTaken":J
    :catch_0
    move-exception v0

    #@1e
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/test/InstrumentationCoreTestRunner$1;->lastClass:Ljava/lang/Class;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/test/InstrumentationCoreTestRunner$1;->lastClass:Ljava/lang/Class;

    #@e
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    invoke-direct {p0, v0}, Landroid/test/InstrumentationCoreTestRunner$1;->printMemory(Ljava/lang/Class;)V

    #@15
    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v0

    #@19
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@20
    move-result-object v1

    #@21
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@24
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@27
    move-result-wide v0

    #@28
    iput-wide v0, p0, Landroid/test/InstrumentationCoreTestRunner$1;->startTime:J

    #@2a
    .line 104
    return-void
.end method
