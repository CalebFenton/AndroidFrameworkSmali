.class Lcom/android/internal/util/WithFramework;
.super Ljava/lang/Object;
.source "WithFramework.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 31
    array-length v3, p0

    #@3
    if-nez v3, :cond_0

    #@5
    .line 32
    invoke-static {}, Lcom/android/internal/util/WithFramework;->printUsage()V

    #@8
    .line 33
    return-void

    #@9
    .line 36
    :cond_0
    aget-object v3, p0, v6

    #@b
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    .line 38
    .local v0, "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "android_runtime"

    #@12
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@15
    .line 39
    invoke-static {}, Lcom/android/internal/util/WithFramework;->registerNatives()I

    #@18
    move-result v3

    #@19
    if-gez v3, :cond_1

    #@1b
    .line 40
    new-instance v3, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v4, "Error registering natives."

    #@20
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v3

    #@24
    .line 43
    :cond_1
    array-length v3, p0

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    new-array v2, v3, [Ljava/lang/String;

    #@29
    .line 44
    .local v2, "newArgs":[Ljava/lang/String;
    array-length v3, v2

    #@2a
    invoke-static {p0, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    .line 45
    const-string/jumbo v3, "main"

    #@30
    new-array v4, v7, [Ljava/lang/Class;

    #@32
    const-class v5, [Ljava/lang/String;

    #@34
    aput-object v5, v4, v6

    #@36
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@39
    move-result-object v1

    #@3a
    .line 46
    .local v1, "mainMethod":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Object;

    #@3c
    aput-object v2, v3, v6

    #@3e
    const/4 v4, 0x0

    #@3f
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 30
    return-void
.end method

.method private static printUsage()V
    .locals 3

    #@0
    .prologue
    .line 50
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Usage: dalvikvm "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-class v2, Lcom/android/internal/util/WithFramework;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 51
    const-string/jumbo v2, " [main class] [args]"

    #@1b
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 49
    return-void
.end method

.method static native registerNatives()I
.end method
