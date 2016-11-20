.class public Lcom/android/commands/uiautomator/RunTestCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "RunTestCommand.java"


# static fields
.field private static final ARG_FAIL_INCOMPLETE_C:I = -0x2

.field private static final ARG_FAIL_INCOMPLETE_E:I = -0x1

.field private static final ARG_FAIL_NO_CLASS:I = -0x3

.field private static final ARG_FAIL_RUNNER:I = -0x4

.field private static final ARG_FAIL_UNSUPPORTED:I = -0x63

.field private static final ARG_OK:I = 0x0

.field private static final CLASS_PARAM:Ljava/lang/String; = "class"

.field private static final CLASS_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final JARS_PARAM:Ljava/lang/String; = "jars"

.field private static final JARS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final OUTPUT_FORMAT_KEY:Ljava/lang/String; = "outputFormat"

.field private static final OUTPUT_SIMPLE:Ljava/lang/String; = "simple"

.field private static final RUNNER_PARAM:Ljava/lang/String; = "runner"


# instance fields
.field private mDebug:Z

.field private mMonkey:Z

.field private final mParams:Landroid/os/Bundle;

.field private mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

.field private mRunnerClassName:Ljava/lang/String;

.field private final mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const-class v0, Lcom/android/commands/uiautomator/RunTestCommand;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/commands/uiautomator/RunTestCommand;->LOGTAG:Ljava/lang/String;

    #@8
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "runtest"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 54
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    #@d
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    #@14
    .line 57
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    #@17
    .line 61
    return-void
.end method

.method private addTestClasses(Ljava/lang/String;)V
    .locals 5
    .param p1, "classes"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    const-string/jumbo v2, ","

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 182
    .local v0, "classArray":[Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    array-length v3, v0

    #@9
    :goto_0
    if-ge v2, v3, :cond_0

    #@b
    aget-object v1, v0, v2

    #@d
    .line 183
    .local v1, "clazz":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    #@f
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    .line 182
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 180
    .end local v1    # "clazz":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addTestClassesFromJars()V
    .locals 15

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 192
    iget-object v7, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    #@3
    const-string/jumbo v9, "jars"

    #@6
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 193
    .local v6, "jars":Ljava/lang/String;
    if-nez v6, :cond_0

    #@c
    return-void

    #@d
    .line 195
    :cond_0
    const-string/jumbo v7, ":"

    #@10
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 196
    .local v5, "jarFileNames":[Ljava/lang/String;
    array-length v9, v5

    #@15
    move v7, v8

    #@16
    :goto_0
    if-ge v7, v9, :cond_4

    #@18
    aget-object v4, v5, v7

    #@1a
    .line 197
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@21
    move-result v10

    #@22
    if-eqz v10, :cond_1

    #@24
    .line 196
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@26
    goto :goto_0

    #@27
    .line 200
    :cond_1
    :try_start_0
    new-instance v1, Ldalvik/system/DexFile;

    #@29
    invoke-direct {v1, v4}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    #@2c
    .line 201
    .local v1, "dexFile":Ldalvik/system/DexFile;
    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    #@2f
    move-result-object v3

    #@30
    .local v3, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_3

    #@36
    .line 202
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/lang/String;

    #@3c
    .line 203
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/RunTestCommand;->isTestClass(Ljava/lang/String;)Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_2

    #@42
    .line 204
    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    #@44
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_2

    #@48
    .line 208
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "dexFile":Ldalvik/system/DexFile;
    .end local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    #@49
    .line 209
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/commands/uiautomator/RunTestCommand;->LOGTAG:Ljava/lang/String;

    #@4b
    const-string/jumbo v11, "Could not read %s: %s"

    #@4e
    const/4 v12, 0x2

    #@4f
    new-array v12, v12, [Ljava/lang/Object;

    #@51
    aput-object v4, v12, v8

    #@53
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@56
    move-result-object v13

    #@57
    const/4 v14, 0x1

    #@58
    aput-object v13, v12, v14

    #@5a
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5d
    move-result-object v11

    #@5e
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    goto :goto_1

    #@62
    .line 207
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dexFile":Ldalvik/system/DexFile;
    .restart local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ldalvik/system/DexFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@65
    goto :goto_1

    #@66
    .line 191
    .end local v1    # "dexFile":Ldalvik/system/DexFile;
    .end local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private isTestClass(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    .line 223
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_0

    #@13
    return v3

    #@14
    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;->accept(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 225
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@22
    .line 226
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return v3
.end method

.method private parseArgs([Ljava/lang/String;)I
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 105
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    array-length v3, p1

    #@3
    if-ge v0, v3, :cond_a

    #@5
    .line 106
    aget-object v3, p1, v0

    #@7
    const-string/jumbo v5, "-e"

    #@a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_5

    #@10
    .line 107
    add-int/lit8 v3, v0, 0x2

    #@12
    array-length v5, p1

    #@13
    if-ge v3, v5, :cond_4

    #@15
    .line 108
    add-int/lit8 v0, v0, 0x1

    #@17
    aget-object v1, p1, v0

    #@19
    .line 109
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    #@1b
    aget-object v2, p1, v0

    #@1d
    .line 110
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "class"

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 111
    invoke-direct {p0, v2}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    #@29
    .line 105
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 112
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "debug"

    #@2f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 113
    const-string/jumbo v3, "true"

    #@38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_1

    #@3e
    const-string/jumbo v3, "1"

    #@41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v3

    #@45
    :goto_2
    iput-boolean v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    #@47
    goto :goto_1

    #@48
    :cond_1
    move v3, v4

    #@49
    goto :goto_2

    #@4a
    .line 114
    :cond_2
    const-string/jumbo v3, "runner"

    #@4d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_3

    #@53
    .line 115
    iput-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    #@55
    goto :goto_1

    #@56
    .line 117
    :cond_3
    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    #@58
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    goto :goto_1

    #@5c
    .line 120
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    const/4 v3, -0x1

    #@5d
    return v3

    #@5e
    .line 122
    :cond_5
    aget-object v3, p1, v0

    #@60
    const-string/jumbo v5, "-c"

    #@63
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v3

    #@67
    if-eqz v3, :cond_7

    #@69
    .line 123
    add-int/lit8 v3, v0, 0x1

    #@6b
    array-length v5, p1

    #@6c
    if-ge v3, v5, :cond_6

    #@6e
    .line 124
    add-int/lit8 v0, v0, 0x1

    #@70
    aget-object v3, p1, v0

    #@72
    invoke-direct {p0, v3}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    #@75
    goto :goto_1

    #@76
    .line 126
    :cond_6
    const/4 v3, -0x2

    #@77
    return v3

    #@78
    .line 128
    :cond_7
    aget-object v3, p1, v0

    #@7a
    const-string/jumbo v5, "--monkey"

    #@7d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_8

    #@83
    .line 129
    iput-boolean v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    #@85
    goto :goto_1

    #@86
    .line 130
    :cond_8
    aget-object v3, p1, v0

    #@88
    const-string/jumbo v5, "-s"

    #@8b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v3

    #@8f
    if-eqz v3, :cond_9

    #@91
    .line 131
    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    #@93
    const-string/jumbo v5, "outputFormat"

    #@96
    const-string/jumbo v6, "simple"

    #@99
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9c
    goto :goto_1

    #@9d
    .line 133
    :cond_9
    const/16 v3, -0x63

    #@9f
    return v3

    #@a0
    .line 136
    :cond_a
    const/4 v3, 0x0

    #@a1
    return v3
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 232
    const-string/jumbo v0, "    runtest <class spec> [options]\n    <class spec>: <JARS> < -c <CLASSES> | -e class <CLASSES> >\n      <JARS>: a list of jar files containing test classes and dependencies. If\n        the path is relative, it\'s assumed to be under /data/local/tmp. Use\n        absolute path if the file is elsewhere. Multiple files can be\n        specified, separated by space.\n      <CLASSES>: a list of test class names to run, separated by comma. To\n        a single method, use TestClass#testMethod format. The -e or -c option\n        may be repeated. This option is not required and if not provided then\n        all the tests in provided jars will be run automatically.\n    options:\n      --nohup: trap SIG_HUP, so test won\'t terminate even if parent process\n               is terminated, e.g. USB is disconnected.\n      -e debug [true|false]: wait for debugger to connect before starting.\n      -e runner [CLASS]: use specified test runner class instead. If\n        unspecified, framework default runner will be used.\n      -e <NAME> <VALUE>: other name-value pairs to be passed to test classes.\n        May be repeated.\n      -e outputFormat simple | -s: enabled less verbose JUnit style output.\n"

    #@3
    return-object v0
.end method

.method protected getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, -0x4

    #@2
    .line 140
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 141
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@8
    return-object v8

    #@9
    .line 144
    :cond_0
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    #@b
    if-nez v8, :cond_1

    #@d
    .line 145
    new-instance v8, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@f
    invoke-direct {v8}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;-><init>()V

    #@12
    iput-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@14
    .line 146
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@16
    return-object v8

    #@17
    .line 149
    :cond_1
    const/4 v6, 0x0

    #@18
    .line 151
    .local v6, "o":Ljava/lang/Object;
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    #@1a
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    .line 152
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v6

    #@22
    .line 164
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    :goto_0
    :try_start_1
    move-object v0, v6

    #@23
    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@25
    move-object v7, v0

    #@26
    .line 165
    .local v7, "runner":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    iput-object v7, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    #@28
    .line 166
    return-object v7

    #@29
    .line 159
    .end local v7    # "runner":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .restart local v6    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v4

    #@2a
    .line 160
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v10, "Constructor of runner "

    #@34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    #@3a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    const-string/jumbo v10, " is not accessibile"

    #@41
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 161
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    #@4f
    goto :goto_0

    #@50
    .line 156
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    #@51
    .line 157
    .local v5, "ie":Ljava/lang/InstantiationException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@53
    new-instance v9, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v10, "Cannot instantiate runner: "

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6c
    .line 158
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    #@6f
    goto :goto_0

    #@70
    .line 153
    .end local v5    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    #@71
    .line 154
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@73
    new-instance v9, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v10, "Cannot find runner: "

    #@7b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    #@81
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8c
    .line 155
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    #@8f
    goto :goto_0

    #@90
    .line 167
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    .end local v6    # "o":Ljava/lang/Object;
    :catch_3
    move-exception v1

    #@91
    .line 168
    .local v1, "cce":Ljava/lang/ClassCastException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@93
    new-instance v9, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v10, "Specified runner is not subclass of "

    #@9b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    .line 169
    const-class v10, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@a1
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a4
    move-result-object v10

    #@a5
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 170
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    #@b3
    .line 173
    return-object v12
.end method

.method public run([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/RunTestCommand;->parseArgs([Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 68
    .local v0, "ret":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    #@9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 85
    invoke-direct {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClassesFromJars()V

    #@12
    .line 86
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    #@14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 87
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v2, "No test classes found."

    #@1f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 88
    const/4 v1, -0x3

    #@23
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@26
    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    #@2c
    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    #@2e
    iget-boolean v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    #@30
    iget-boolean v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    #@32
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->run(Ljava/util/List;Landroid/os/Bundle;ZZ)V

    #@35
    .line 66
    return-void

    #@36
    .line 70
    :sswitch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@38
    const-string/jumbo v2, "Incomplete \'-c\' parameter."

    #@3b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 71
    const/4 v1, -0x2

    #@3f
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@42
    goto :goto_0

    #@43
    .line 74
    :sswitch_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@45
    const-string/jumbo v2, "Incomplete \'-e\' parameter."

    #@48
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    .line 75
    const/4 v1, -0x1

    #@4c
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@4f
    goto :goto_0

    #@50
    .line 78
    :sswitch_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v2, "Unsupported standalone parameter."

    #@55
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 79
    const/16 v1, -0x63

    #@5a
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@5d
    goto :goto_0

    #@5e
    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_2
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 255
    const-string/jumbo v0, "executes UI automation tests"

    #@3
    return-object v0
.end method
