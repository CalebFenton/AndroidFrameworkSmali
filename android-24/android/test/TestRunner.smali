.class public Landroid/test/TestRunner;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Landroid/test/PerformanceTestCase$Intermediates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TestRunner$IntermediateTime;,
        Landroid/test/TestRunner$JunitTestSuite;,
        Landroid/test/TestRunner$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CLEARSCREEN:I = 0x0

.field public static final PERFORMANCE:I = 0x1

.field public static final PROFILING:I = 0x2

.field public static final REGRESSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TestHarness"

.field private static mJUnitClass:Ljava/lang/Class;

.field private static mRunnableClass:Ljava/lang/Class;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndTime:J

.field private mFailed:I

.field mIntermediates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalIterations:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPassed:I

.field private mStartTime:J


# direct methods
.method static synthetic -wrap0(Landroid/test/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/test/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 74
    :try_start_0
    const-string/jumbo v1, "java.lang.Runnable"

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    sput-object v1, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    #@b
    .line 75
    const-string/jumbo v1, "junit.framework.TestCase"

    #@e
    const/4 v2, 0x0

    #@f
    const/4 v3, 0x0

    #@10
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    sput-object v1, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 46
    return-void

    #@17
    .line 76
    :catch_0
    move-exception v0

    #@18
    .line 77
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v2, "shouldn\'t happen"

    #@1d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/test/TestRunner;->mMode:I

    #@6
    .line 57
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@c
    .line 67
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    #@f
    .line 163
    iput-object p1, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@11
    .line 162
    return-void
.end method

.method public static countJunitTests(Ljava/lang/Class;)I
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 647
    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    .line 648
    .local v0, "allTestMethods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    #@5
    .line 650
    .local v1, "numberofMethods":I
    return v1
.end method

.method public static countTests(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 689
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v7

    #@6
    invoke-virtual {v7, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    .line 690
    .local v2, "clazz":Ljava/lang/Class;
    invoke-static {v2}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@d
    move-result-object v4

    #@e
    .line 691
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    #@10
    .line 693
    invoke-static {v4}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 694
    .local v1, "children":[Ljava/lang/String;
    const/4 v5, 0x0

    #@15
    .line 695
    .local v5, "rv":I
    array-length v7, v1

    #@16
    :goto_0
    if-ge v6, v7, :cond_0

    #@18
    aget-object v0, v1, v6

    #@1a
    .line 696
    .local v0, "child":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/test/TestRunner;->countTests(Landroid/content/Context;Ljava/lang/String;)I

    #@1d
    move-result v8

    #@1e
    add-int/2addr v5, v8

    #@1f
    .line 695
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_0

    #@22
    .line 698
    .end local v0    # "child":Ljava/lang/String;
    :cond_0
    return v5

    #@23
    .line 699
    .end local v1    # "children":[Ljava/lang/String;
    .end local v5    # "rv":I
    :cond_1
    sget-object v7, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    #@25
    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_2

    #@2b
    .line 700
    return v9

    #@2c
    .line 701
    :cond_2
    sget-object v7, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    #@2e
    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_3

    #@34
    .line 702
    invoke-static {v2}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result v6

    #@38
    return v6

    #@39
    .line 704
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    #@3a
    .line 705
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    return v9

    #@3b
    .line 708
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return v6
.end method

.method private finished(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    .line 191
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 192
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/test/TestRunner$Listener;

    #@11
    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->finished(Ljava/lang/String;)V

    #@14
    .line 191
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 189
    :cond_0
    return-void
.end method

.method public static getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 620
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@4
    move-result-object v0

    #@5
    .line 621
    .local v0, "allMethods":[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    #@6
    .line 622
    .local v4, "numOfMethods":I
    array-length v8, v0

    #@7
    move v7, v6

    #@8
    :goto_0
    if-ge v7, v8, :cond_1

    #@a
    aget-object v2, v0, v7

    #@c
    .line 623
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-static {v2}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    #@f
    move-result v3

    #@10
    .line 624
    .local v3, "mTrue":Z
    if-eqz v3, :cond_0

    #@12
    .line 625
    add-int/lit8 v4, v4, 0x1

    #@14
    .line 622
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@16
    goto :goto_0

    #@17
    .line 628
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "mTrue":Z
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 629
    .local v1, "index":I
    new-array v5, v4, [Ljava/lang/reflect/Method;

    #@1a
    .line 630
    .local v5, "testMethods":[Ljava/lang/reflect/Method;
    array-length v7, v0

    #@1b
    :goto_1
    if-ge v6, v7, :cond_3

    #@1d
    aget-object v2, v0, v6

    #@1f
    .line 631
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    invoke-static {v2}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    #@22
    move-result v3

    #@23
    .line 632
    .restart local v3    # "mTrue":Z
    if-eqz v3, :cond_2

    #@25
    .line 633
    aput-object v2, v5, v1

    #@27
    .line 634
    add-int/lit8 v1, v1, 0x1

    #@29
    .line 630
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 637
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "mTrue":Z
    :cond_3
    return-object v5
.end method

.method public static getChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 558
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@6
    move-result-object v2

    #@7
    .line 559
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 560
    .local v3, "testChildren":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@d
    move v6, v4

    #@e
    :goto_0
    if-nez v3, :cond_1

    #@10
    :goto_1
    and-int/2addr v4, v6

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 561
    new-instance v4, Ljava/lang/RuntimeException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "couldn\'t get children method for "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    :cond_0
    move v6, v5

    #@2e
    .line 560
    goto :goto_0

    #@2f
    :cond_1
    move v4, v5

    #@30
    goto :goto_1

    #@31
    .line 564
    :cond_2
    if-eqz v2, :cond_4

    #@33
    .line 565
    invoke-static {v2}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 566
    .local v1, "children":[Ljava/lang/String;
    if-eqz v3, :cond_3

    #@39
    .line 567
    array-length v4, v3

    #@3a
    array-length v6, v1

    #@3b
    add-int/2addr v4, v6

    #@3c
    new-array v0, v4, [Ljava/lang/String;

    #@3e
    .line 568
    .local v0, "allChildren":[Ljava/lang/String;
    array-length v4, v1

    #@3f
    invoke-static {v1, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@42
    .line 569
    array-length v4, v1

    #@43
    array-length v6, v3

    #@44
    invoke-static {v3, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    .line 570
    return-object v0

    #@48
    .line 572
    .end local v0    # "allChildren":[Ljava/lang/String;
    :cond_3
    return-object v1

    #@49
    .line 575
    .end local v1    # "children":[Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    #@4b
    .line 576
    return-object v3

    #@4c
    .line 579
    :cond_5
    return-object v7
.end method

.method public static getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@3
    move-result v2

    #@4
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 585
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v3, "children method is not static"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    .line 588
    :catch_0
    move-exception v0

    #@14
    .line 591
    :goto_0
    const/4 v2, 0x0

    #@15
    new-array v2, v2, [Ljava/lang/String;

    #@17
    return-object v2

    #@18
    .line 587
    :cond_0
    const/4 v2, 0x0

    #@19
    :try_start_1
    check-cast v2, [Ljava/lang/Object;

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    #@22
    return-object v2

    #@23
    .line 589
    :catch_1
    move-exception v1

    #@24
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0
.end method

.method public static getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 552
    :catch_0
    move-exception v0

    #@e
    .line 554
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public static getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 542
    :try_start_0
    const-string/jumbo v2, "children"

    #@4
    const/4 v1, 0x0

    #@5
    check-cast v1, [Ljava/lang/Class;

    #@7
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 543
    :catch_0
    move-exception v0

    #@d
    .line 546
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return-object v3
.end method

.method public static getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 596
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 598
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v2, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    #@a
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 599
    invoke-static {v0}, Landroid/test/TestRunner;->getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 601
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@16
    .line 602
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v2, "TestHarness"

    #@19
    const-string/jumbo v3, "No class found"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 604
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method public static getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 608
    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@3
    move-result-object v2

    #@4
    .line 610
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v4, v2

    #@5
    new-array v3, v4, [Ljava/lang/String;

    #@7
    .line 611
    .local v3, "onScreenTestNames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .line 612
    .local v0, "index":I
    const/4 v4, 0x0

    #@9
    array-length v5, v2

    #@a
    :goto_0
    if-ge v4, v5, :cond_0

    #@c
    aget-object v1, v2, v4

    #@e
    .line 613
    .local v1, "m":Ljava/lang/reflect/Method;
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    const-string/jumbo v7, "$"

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    aput-object v6, v3, v0

    #@30
    .line 614
    add-int/lit8 v0, v0, 0x1

    #@32
    .line 612
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 616
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-object v3
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 718
    const/16 v3, 0x2e

    #@2
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v2

    #@6
    .line 719
    .local v2, "indexDot":I
    const/16 v3, 0x24

    #@8
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v1

    #@c
    .line 720
    .local v1, "indexDollar":I
    if-le v2, v1, :cond_1

    #@e
    move v0, v2

    #@f
    .line 721
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    #@11
    .line 722
    add-int/lit8 v3, v0, 0x1

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    .line 724
    :cond_0
    return-object p0

    #@18
    .end local v0    # "index":I
    :cond_1
    move v0, v1

    #@19
    .line 720
    goto :goto_0
.end method

.method private static isTestMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 641
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string/jumbo v2, "test"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 642
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@11
    move-result-object v1

    #@12
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@14
    if-ne v1, v2, :cond_0

    #@16
    .line 643
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@19
    move-result-object v1

    #@1a
    array-length v1, v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 641
    :cond_0
    return v0
.end method

.method public static isTestSuite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 654
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@3
    move-result-object v4

    #@4
    if-eqz v4, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    .line 657
    .local v0, "childrenMethods":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    .line 658
    .local v1, "clazz":Ljava/lang/Class;
    sget-object v4, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    #@11
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 659
    invoke-static {v1}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v3

    #@1b
    .line 660
    .local v3, "numTests":I
    if-lez v3, :cond_0

    #@1d
    .line 661
    const/4 v0, 0x1

    #@1e
    .line 665
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "numTests":I
    :cond_0
    :goto_1
    return v0

    #@1f
    .line 654
    .end local v0    # "childrenMethods":Z
    :cond_1
    const/4 v0, 0x0

    #@20
    .restart local v0    # "childrenMethods":Z
    goto :goto_0

    #@21
    .line 663
    :catch_0
    move-exception v2

    #@22
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    #@3
    .line 273
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    #@6
    .line 274
    invoke-virtual {p0, p1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 271
    return-void
.end method

.method private performance(Ljava/lang/String;JILjava/util/List;)V
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "itemTimeNS"    # J
    .param p4, "iterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    .local p5, "intermediates":Ljava/util/List;, "Ljava/util/List<Landroid/test/TestRunner$IntermediateTime;>;"
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v6

    #@6
    .line 201
    .local v6, "count":I
    const/4 v7, 0x0

    #@7
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    #@9
    .line 202
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@b
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/test/TestRunner$Listener;

    #@11
    move-object v1, p1

    #@12
    move-wide v2, p2

    #@13
    move v4, p4

    #@14
    move-object v5, p5

    #@15
    invoke-interface/range {v0 .. v5}, Landroid/test/TestRunner$Listener;->performance(Ljava/lang/String;JILjava/util/List;)V

    #@18
    .line 201
    add-int/lit8 v7, v7, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 199
    :cond_0
    return-void
.end method

.method private started(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    .line 184
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 185
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/test/TestRunner$Listener;

    #@11
    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->started(Ljava/lang/String;)V

    #@14
    .line 184
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public addIntermediate(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/test/TestRunner;->mStartTime:J

    #@6
    sub-long/2addr v0, v2

    #@7
    const-wide/32 v2, 0xf4240

    #@a
    mul-long/2addr v0, v2

    #@b
    invoke-virtual {p0, p1, v0, v1}, Landroid/test/TestRunner;->addIntermediate(Ljava/lang/String;J)V

    #@e
    .line 251
    return-void
.end method

.method public addIntermediate(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeInNS"    # J

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    #@2
    new-instance v1, Landroid/test/TestRunner$IntermediateTime;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroid/test/TestRunner$IntermediateTime;-><init>(Ljava/lang/String;J)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 255
    return-void
.end method

.method public addListener(Landroid/test/TestRunner$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/test/TestRunner$Listener;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 166
    return-void
.end method

.method public failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 218
    iget v2, p0, Landroid/test/TestRunner;->mFailed:I

    #@2
    add-int/lit8 v2, v2, 0x1

    #@4
    iput v2, p0, Landroid/test/TestRunner;->mFailed:I

    #@6
    .line 219
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 220
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 221
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/test/TestRunner$Listener;

    #@17
    invoke-interface {v2, p1, p2}, Landroid/test/TestRunner$Listener;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    .line 220
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 217
    :cond_0
    return-void
.end method

.method public failedCount()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget v0, p0, Landroid/test/TestRunner;->mFailed:I

    #@2
    return v0
.end method

.method public finishProfiling()V
    .locals 0

    #@0
    .prologue
    .line 178
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@3
    .line 177
    return-void
.end method

.method public finishTiming(Z)V
    .locals 2
    .param p1, "realTime"    # Z

    #@0
    .prologue
    .line 260
    if-eqz p1, :cond_0

    #@2
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    #@8
    .line 259
    :goto_0
    return-void

    #@9
    .line 263
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    #@f
    goto :goto_0
.end method

.method public isJunitTest(Ljava/lang/String;)Z
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 670
    const/16 v3, 0x24

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v2

    #@7
    .line 671
    .local v2, "index":I
    if-ltz v2, :cond_0

    #@9
    .line 672
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    .line 675
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    .line 676
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v3, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    #@19
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 677
    const/4 v3, 0x1

    #@20
    return v3

    #@21
    .line 679
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@22
    .line 681
    :cond_1
    return v4
.end method

.method public passed(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    iget v2, p0, Landroid/test/TestRunner;->mPassed:I

    #@2
    add-int/lit8 v2, v2, 0x1

    #@4
    iput v2, p0, Landroid/test/TestRunner;->mPassed:I

    #@6
    .line 211
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 212
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 213
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    #@11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/test/TestRunner$Listener;

    #@17
    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->passed(Ljava/lang/String;)V

    #@1a
    .line 212
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 209
    :cond_0
    return-void
.end method

.method public passedCount()I
    .locals 1

    #@0
    .prologue
    .line 226
    iget v0, p0, Landroid/test/TestRunner;->mPassed:I

    #@2
    return v0
.end method

.method public run(Ljava/lang/String;)V
    .locals 29
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 283
    :try_start_0
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-object v0, v1, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    #@6
    .line 284
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@a
    move-object/from16 v25, v0

    #@c
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v25

    #@10
    move-object/from16 v0, v25

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@17
    move-result-object v6

    #@18
    .line 285
    .local v6, "clazz":Ljava/lang/Class;
    invoke-static {v6}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1b
    move-result-object v16

    #@1c
    .line 286
    .local v16, "method":Ljava/lang/reflect/Method;
    if-eqz v16, :cond_1

    #@1e
    .line 287
    invoke-static/range {v16 .. v16}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 288
    .local v5, "children":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v5}, Landroid/test/TestRunner;->run([Ljava/lang/String;)V

    #@27
    .line 281
    .end local v5    # "children":[Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v16    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    #@28
    .line 289
    .restart local v6    # "clazz":Ljava/lang/Class;
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    :cond_1
    sget-object v25, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    #@2a
    move-object/from16 v0, v25

    #@2c
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2f
    move-result v25

    #@30
    if-eqz v25, :cond_8

    #@32
    .line 290
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@35
    move-result-object v19

    #@36
    check-cast v19, Ljava/lang/Runnable;

    #@38
    .line 291
    .local v19, "test":Ljava/lang/Runnable;
    const/16 v24, 0x0

    #@3a
    .line 292
    .local v24, "testcase":Landroid/test/TestCase;
    move-object/from16 v0, v19

    #@3c
    instance-of v0, v0, Landroid/test/TestCase;

    #@3e
    move/from16 v25, v0

    #@40
    if-eqz v25, :cond_2

    #@42
    .line 293
    move-object/from16 v0, v19

    #@44
    check-cast v0, Landroid/test/TestCase;

    #@46
    move-object/from16 v24, v0

    #@48
    .line 295
    .end local v24    # "testcase":Landroid/test/TestCase;
    :cond_2
    const/4 v11, 0x0

    #@49
    .line 296
    .local v11, "e":Ljava/lang/Throwable;
    const/4 v7, 0x0

    #@4a
    .line 297
    .local v7, "didSetup":Z
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    #@4d
    .line 299
    if-eqz v24, :cond_3

    #@4f
    .line 300
    :try_start_1
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@53
    move-object/from16 v25, v0

    #@55
    invoke-interface/range {v24 .. v25}, Landroid/test/TestCase;->setUp(Landroid/content/Context;)V

    #@58
    .line 301
    const/4 v7, 0x1

    #@59
    .line 303
    :cond_3
    move-object/from16 v0, p0

    #@5b
    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    #@5d
    move/from16 v25, v0

    #@5f
    const/16 v26, 0x1

    #@61
    move/from16 v0, v25

    #@63
    move/from16 v1, v26

    #@65
    if-ne v0, v1, :cond_5

    #@67
    .line 304
    const/16 v25, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, v19

    #@6d
    move-object/from16 v2, p1

    #@6f
    move/from16 v3, v25

    #@71
    move-object/from16 v4, p1

    #@73
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    #@76
    .line 316
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v24, :cond_4

    #@78
    if-eqz v7, :cond_4

    #@7a
    .line 318
    :try_start_2
    invoke-interface/range {v24 .. v24}, Landroid/test/TestCase;->tearDown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    #@7d
    .line 323
    :cond_4
    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    #@80
    .line 324
    if-nez v11, :cond_7

    #@82
    .line 325
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    #@85
    goto :goto_0

    #@86
    .line 379
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "didSetup":Z
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "test":Ljava/lang/Runnable;
    :catch_0
    move-exception v8

    #@87
    .line 380
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    new-instance v25, Ljava/lang/StringBuilder;

    #@89
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v26, "ClassNotFoundException for "

    #@8f
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v25

    #@93
    move-object/from16 v0, v25

    #@95
    move-object/from16 v1, p1

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v25

    #@9b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v25

    #@9f
    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    #@a2
    move-result-object v26

    #@a3
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 381
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->isJunitTest(Ljava/lang/String;)Z

    #@a9
    move-result v25

    #@aa
    if-eqz v25, :cond_f

    #@ac
    .line 382
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->runSingleJunitTest(Ljava/lang/String;)V

    #@af
    goto/16 :goto_0

    #@b1
    .line 305
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "clazz":Ljava/lang/Class;
    .restart local v7    # "didSetup":Z
    .restart local v11    # "e":Ljava/lang/Throwable;
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    .restart local v19    # "test":Ljava/lang/Runnable;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@b3
    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    #@b5
    move/from16 v25, v0

    #@b7
    const/16 v26, 0x2

    #@b9
    move/from16 v0, v25

    #@bb
    move/from16 v1, v26

    #@bd
    if-ne v0, v1, :cond_6

    #@bf
    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    #@c2
    .line 308
    invoke-interface/range {v19 .. v19}, Ljava/lang/Runnable;->run()V

    #@c5
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    #@c8
    goto :goto_1

    #@c9
    .line 313
    :catch_1
    move-exception v13

    #@ca
    .line 314
    .local v13, "ex":Ljava/lang/Throwable;
    move-object v11, v13

    #@cb
    .local v11, "e":Ljava/lang/Throwable;
    goto :goto_1

    #@cc
    .line 311
    .end local v13    # "ex":Ljava/lang/Throwable;
    .local v11, "e":Ljava/lang/Throwable;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    #@cf
    goto :goto_1

    #@d0
    .line 386
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "didSetup":Z
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "test":Ljava/lang/Runnable;
    :catch_2
    move-exception v10

    #@d1
    .line 387
    .local v10, "e":Ljava/lang/InstantiationException;
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d3
    new-instance v26, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v27, "InstantiationException for "

    #@db
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v26

    #@df
    move-object/from16 v0, v26

    #@e1
    move-object/from16 v1, p1

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v26

    #@e7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v26

    #@eb
    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ee
    .line 388
    move-object/from16 v0, p0

    #@f0
    move-object/from16 v1, p1

    #@f2
    invoke-direct {v0, v1, v10}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f5
    goto/16 :goto_0

    #@f7
    .line 319
    .end local v10    # "e":Ljava/lang/InstantiationException;
    .restart local v6    # "clazz":Ljava/lang/Class;
    .restart local v7    # "didSetup":Z
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    .restart local v19    # "test":Ljava/lang/Runnable;
    :catch_3
    move-exception v13

    #@f8
    .line 320
    .restart local v13    # "ex":Ljava/lang/Throwable;
    move-object v11, v13

    #@f9
    .local v11, "e":Ljava/lang/Throwable;
    goto :goto_2

    #@fa
    .line 327
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, p1

    #@fe
    invoke-virtual {v0, v1, v11}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    #@101
    goto/16 :goto_0

    #@103
    .line 389
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "didSetup":Z
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "test":Ljava/lang/Runnable;
    :catch_4
    move-exception v9

    #@104
    .line 390
    .local v9, "e":Ljava/lang/IllegalAccessException;
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@106
    new-instance v26, Ljava/lang/StringBuilder;

    #@108
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v27, "IllegalAccessException for "

    #@10e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v26

    #@112
    move-object/from16 v0, v26

    #@114
    move-object/from16 v1, p1

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v26

    #@11a
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v26

    #@11e
    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@121
    .line 391
    move-object/from16 v0, p0

    #@123
    move-object/from16 v1, p1

    #@125
    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@128
    goto/16 :goto_0

    #@12a
    .line 329
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    .restart local v6    # "clazz":Ljava/lang/Class;
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    :cond_8
    :try_start_6
    sget-object v25, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    #@12c
    move-object/from16 v0, v25

    #@12e
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@131
    move-result v25

    #@132
    if-eqz v25, :cond_e

    #@134
    .line 330
    const/4 v11, 0x0

    #@135
    .line 332
    .local v11, "e":Ljava/lang/Throwable;
    new-instance v18, Landroid/test/TestRunner$JunitTestSuite;

    #@137
    move-object/from16 v0, v18

    #@139
    move-object/from16 v1, p0

    #@13b
    invoke-direct {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    #@13e
    .line 333
    .local v18, "suite":Landroid/test/TestRunner$JunitTestSuite;
    invoke-static {v6}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@141
    move-result-object v17

    #@142
    .line 334
    .local v17, "methods":[Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    #@144
    move-object/from16 v0, v17

    #@146
    array-length v0, v0

    #@147
    move/from16 v26, v0

    #@149
    :goto_3
    move/from16 v0, v25

    #@14b
    move/from16 v1, v26

    #@14d
    if-ge v0, v1, :cond_a

    #@14f
    aget-object v15, v17, v25

    #@151
    .line 335
    .local v15, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@154
    move-result-object v21

    #@155
    check-cast v21, Ljunit/framework/TestCase;

    #@157
    .line 336
    .local v21, "test":Ljunit/framework/TestCase;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@15a
    move-result-object v27

    #@15b
    move-object/from16 v0, v21

    #@15d
    move-object/from16 v1, v27

    #@15f
    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    #@162
    .line 338
    move-object/from16 v0, v21

    #@164
    instance-of v0, v0, Landroid/test/AndroidTestCase;

    #@166
    move/from16 v27, v0

    #@168
    if-eqz v27, :cond_9

    #@16a
    .line 339
    move-object/from16 v0, v21

    #@16c
    check-cast v0, Landroid/test/AndroidTestCase;

    #@16e
    move-object/from16 v23, v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    #@170
    .line 341
    .local v23, "testcase":Landroid/test/AndroidTestCase;
    :try_start_7
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@174
    move-object/from16 v27, v0

    #@176
    move-object/from16 v0, v23

    #@178
    move-object/from16 v1, v27

    #@17a
    invoke-virtual {v0, v1}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    #@17d
    .line 342
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@181
    move-object/from16 v27, v0

    #@183
    move-object/from16 v0, v23

    #@185
    move-object/from16 v1, v27

    #@187
    invoke-virtual {v0, v1}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4

    #@18a
    .line 347
    .end local v23    # "testcase":Landroid/test/AndroidTestCase;
    :cond_9
    :goto_4
    :try_start_8
    move-object/from16 v0, v18

    #@18c
    move-object/from16 v1, v21

    #@18e
    invoke-virtual {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    #@191
    .line 334
    add-int/lit8 v25, v25, 0x1

    #@193
    goto :goto_3

    #@194
    .line 343
    .restart local v23    # "testcase":Landroid/test/AndroidTestCase;
    :catch_5
    move-exception v12

    #@195
    .line 344
    .local v12, "ex":Ljava/lang/Exception;
    const-string/jumbo v27, "TestHarness"

    #@198
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@19b
    move-result-object v28

    #@19c
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19f
    goto :goto_4

    #@1a0
    .line 349
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v15    # "m":Ljava/lang/reflect/Method;
    .end local v21    # "test":Ljunit/framework/TestCase;
    .end local v23    # "testcase":Landroid/test/AndroidTestCase;
    :cond_a
    move-object/from16 v0, p0

    #@1a2
    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    #@1a4
    move/from16 v25, v0

    #@1a6
    const/16 v26, 0x1

    #@1a8
    move/from16 v0, v25

    #@1aa
    move/from16 v1, v26

    #@1ac
    if-ne v0, v1, :cond_c

    #@1ae
    .line 350
    invoke-virtual/range {v18 .. v18}, Landroid/test/TestRunner$JunitTestSuite;->testCount()I

    #@1b1
    move-result v22

    #@1b2
    .line 352
    .local v22, "testCount":I
    const/4 v14, 0x0

    #@1b3
    .end local v11    # "e":Ljava/lang/Throwable;
    .local v14, "j":I
    :goto_5
    move/from16 v0, v22

    #@1b5
    if-ge v14, v0, :cond_0

    #@1b7
    .line 353
    move-object/from16 v0, v18

    #@1b9
    invoke-virtual {v0, v14}, Landroid/test/TestRunner$JunitTestSuite;->testAt(I)Ljunit/framework/Test;

    #@1bc
    move-result-object v20

    #@1bd
    .line 354
    .local v20, "test":Ljunit/framework/Test;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c0
    move-result-object v25

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move-object/from16 v1, v25

    #@1c5
    invoke-direct {v0, v1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4

    #@1c8
    .line 356
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1cb
    move-result-object v25

    #@1cc
    const/16 v26, 0x1

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    move-object/from16 v1, v20

    #@1d2
    move-object/from16 v2, p1

    #@1d4
    move/from16 v3, v26

    #@1d6
    move-object/from16 v4, v25

    #@1d8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_4

    #@1db
    .line 360
    :goto_6
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1de
    move-result-object v25

    #@1df
    move-object/from16 v0, p0

    #@1e1
    move-object/from16 v1, v25

    #@1e3
    invoke-direct {v0, v1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    #@1e6
    .line 361
    if-nez v11, :cond_b

    #@1e8
    .line 362
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v25

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    move-object/from16 v1, v25

    #@1f0
    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V

    #@1f3
    .line 352
    :goto_7
    add-int/lit8 v14, v14, 0x1

    #@1f5
    goto :goto_5

    #@1f6
    .line 357
    :catch_6
    move-exception v13

    #@1f7
    .line 358
    .restart local v13    # "ex":Ljava/lang/Throwable;
    move-object v11, v13

    #@1f8
    .local v11, "e":Ljava/lang/Throwable;
    goto :goto_6

    #@1f9
    .line 364
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v25

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    move-object/from16 v1, v25

    #@201
    invoke-virtual {v0, v1, v11}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@204
    goto :goto_7

    #@205
    .line 367
    .end local v14    # "j":I
    .end local v20    # "test":Ljunit/framework/Test;
    .end local v22    # "testCount":I
    .local v11, "e":Ljava/lang/Throwable;
    :cond_c
    move-object/from16 v0, p0

    #@207
    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    #@209
    move/from16 v25, v0

    #@20b
    const/16 v26, 0x2

    #@20d
    move/from16 v0, v25

    #@20f
    move/from16 v1, v26

    #@211
    if-ne v0, v1, :cond_d

    #@213
    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    #@216
    .line 370
    invoke-static/range {v18 .. v18}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    #@219
    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    #@21c
    goto/16 :goto_0

    #@21e
    .line 373
    :cond_d
    invoke-static/range {v18 .. v18}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    #@221
    goto/16 :goto_0

    #@223
    .line 376
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "suite":Landroid/test/TestRunner$JunitTestSuite;
    :cond_e
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@225
    new-instance v26, Ljava/lang/StringBuilder;

    #@227
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@22a
    const-string/jumbo v27, "Test wasn\'t Runnable and didn\'t have a children method: "

    #@22d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v26

    #@231
    move-object/from16 v0, v26

    #@233
    move-object/from16 v1, p1

    #@235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v26

    #@239
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23c
    move-result-object v26

    #@23d
    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_4

    #@240
    goto/16 :goto_0

    #@242
    .line 384
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_f
    move-object/from16 v0, p0

    #@244
    move-object/from16 v1, p1

    #@246
    invoke-direct {v0, v1, v8}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@249
    goto/16 :goto_0
.end method

.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "classes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 234
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 235
    .local v0, "cl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/test/TestRunner;->run(Ljava/lang/String;)V

    #@9
    .line 234
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 233
    .end local v0    # "cl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 18
    .param p1, "testCase"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "junitTest"    # Z
    .param p4, "testNameInDb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    const/4 v14, 0x1

    #@1
    .line 398
    .local v14, "increaseIterations":Z
    const/4 v6, 0x1

    #@2
    .line 399
    .local v6, "iterations":I
    const-wide/16 v10, 0x0

    #@4
    .line 400
    .local v10, "duration":J
    const/4 v2, 0x0

    #@5
    move-object/from16 v0, p0

    #@7
    iput-object v2, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    #@9
    .line 402
    const/4 v2, 0x1

    #@a
    move-object/from16 v0, p0

    #@c
    iput v2, v0, Landroid/test/TestRunner;->mInternalIterations:I

    #@e
    .line 403
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v2

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1b
    move-result-object v8

    #@1c
    .line 404
    .local v8, "clazz":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1f
    move-result-object v15

    #@20
    .line 406
    .local v15, "perftest":Ljava/lang/Object;
    const/16 v16, 0x0

    #@22
    .line 407
    .local v16, "perftestcase":Landroid/test/PerformanceTestCase;
    instance-of v2, v15, Landroid/test/PerformanceTestCase;

    #@24
    if-eqz v2, :cond_0

    #@26
    move-object/from16 v16, v15

    #@28
    .line 408
    check-cast v16, Landroid/test/PerformanceTestCase;

    #@2a
    .line 410
    .local v16, "perftestcase":Landroid/test/PerformanceTestCase;
    move-object/from16 v0, p0

    #@2c
    iget v2, v0, Landroid/test/TestRunner;->mMode:I

    #@2e
    if-nez v2, :cond_0

    #@30
    invoke-interface/range {v16 .. v16}, Landroid/test/PerformanceTestCase;->isPerformanceOnly()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_0

    #@36
    return-void

    #@37
    .line 415
    .end local v16    # "perftestcase":Landroid/test/PerformanceTestCase;
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/Runtime;->runFinalization()V

    #@3e
    .line 416
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    #@45
    .line 418
    if-eqz v16, :cond_1

    #@47
    .line 419
    new-instance v2, Ljava/util/ArrayList;

    #@49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput-object v2, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    #@50
    .line 420
    move-object/from16 v0, v16

    #@52
    move-object/from16 v1, p0

    #@54
    invoke-interface {v0, v1}, Landroid/test/PerformanceTestCase;->startPerformance(Landroid/test/PerformanceTestCase$Intermediates;)I

    #@57
    move-result v6

    #@58
    .line 421
    if-lez v6, :cond_2

    #@5a
    .line 422
    const/4 v14, 0x0

    #@5b
    .line 429
    :cond_1
    :goto_0
    const-wide/16 v2, 0x3e8

    #@5d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    #@60
    .line 431
    :goto_1
    const-wide/16 v2, 0x0

    #@62
    move-object/from16 v0, p0

    #@64
    iput-wide v2, v0, Landroid/test/TestRunner;->mEndTime:J

    #@66
    .line 432
    if-eqz v14, :cond_3

    #@68
    .line 436
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@6b
    move-result-wide v2

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput-wide v2, v0, Landroid/test/TestRunner;->mStartTime:J

    #@70
    .line 443
    :goto_2
    if-eqz p3, :cond_4

    #@72
    .line 444
    const/4 v9, 0x0

    #@73
    .local v9, "i":I
    :goto_3
    if-ge v9, v6, :cond_5

    #@75
    move-object/from16 v2, p1

    #@77
    .line 445
    check-cast v2, Ljunit/framework/Test;

    #@79
    invoke-static {v2}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    #@7c
    .line 444
    add-int/lit8 v9, v9, 0x1

    #@7e
    goto :goto_3

    #@7f
    .line 424
    .end local v9    # "i":I
    :cond_2
    const/4 v6, 0x1

    #@80
    goto :goto_0

    #@81
    .line 440
    :cond_3
    const-wide/16 v2, 0x0

    #@83
    move-object/from16 v0, p0

    #@85
    iput-wide v2, v0, Landroid/test/TestRunner;->mStartTime:J

    #@87
    goto :goto_2

    #@88
    :cond_4
    move-object/from16 v17, p1

    #@8a
    .line 448
    check-cast v17, Ljava/lang/Runnable;

    #@8c
    .line 449
    .local v17, "test":Ljava/lang/Runnable;
    const/4 v9, 0x0

    #@8d
    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v6, :cond_5

    #@8f
    .line 450
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    #@92
    .line 449
    add-int/lit8 v9, v9, 0x1

    #@94
    goto :goto_4

    #@95
    .line 454
    .end local v17    # "test":Ljava/lang/Runnable;
    :cond_5
    move-object/from16 v0, p0

    #@97
    iget-wide v12, v0, Landroid/test/TestRunner;->mEndTime:J

    #@99
    .line 455
    .local v12, "endTime":J
    const-wide/16 v2, 0x0

    #@9b
    cmp-long v2, v12, v2

    #@9d
    if-nez v2, :cond_6

    #@9f
    .line 456
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@a2
    move-result-wide v12

    #@a3
    .line 459
    :cond_6
    move-object/from16 v0, p0

    #@a5
    iget-wide v2, v0, Landroid/test/TestRunner;->mStartTime:J

    #@a7
    sub-long v10, v12, v2

    #@a9
    .line 460
    if-nez v14, :cond_9

    #@ab
    .line 476
    :cond_7
    const-wide/16 v2, 0x0

    #@ad
    cmp-long v2, v10, v2

    #@af
    if-eqz v2, :cond_8

    #@b1
    .line 477
    move-object/from16 v0, p0

    #@b3
    iget v2, v0, Landroid/test/TestRunner;->mInternalIterations:I

    #@b5
    mul-int/2addr v6, v2

    #@b6
    .line 478
    const-wide/32 v2, 0xf4240

    #@b9
    mul-long/2addr v2, v10

    #@ba
    int-to-long v4, v6

    #@bb
    div-long v4, v2, v4

    #@bd
    .line 479
    move-object/from16 v0, p0

    #@bf
    iget-object v7, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    #@c1
    move-object/from16 v2, p0

    #@c3
    move-object/from16 v3, p4

    #@c5
    .line 478
    invoke-direct/range {v2 .. v7}, Landroid/test/TestRunner;->performance(Ljava/lang/String;JILjava/util/List;)V

    #@c8
    .line 396
    :cond_8
    return-void

    #@c9
    .line 463
    :cond_9
    const-wide/16 v2, 0x1

    #@cb
    cmp-long v2, v10, v2

    #@cd
    if-gtz v2, :cond_a

    #@cf
    .line 464
    mul-int/lit16 v6, v6, 0x3e8

    #@d1
    goto :goto_1

    #@d2
    .line 465
    :cond_a
    const-wide/16 v2, 0xa

    #@d4
    cmp-long v2, v10, v2

    #@d6
    if-gtz v2, :cond_b

    #@d8
    .line 466
    mul-int/lit8 v6, v6, 0x64

    #@da
    goto :goto_1

    #@db
    .line 467
    :cond_b
    const-wide/16 v2, 0x64

    #@dd
    cmp-long v2, v10, v2

    #@df
    if-gez v2, :cond_c

    #@e1
    .line 468
    mul-int/lit8 v6, v6, 0xa

    #@e3
    goto/16 :goto_1

    #@e5
    .line 469
    :cond_c
    const-wide/16 v2, 0x3e8

    #@e7
    cmp-long v2, v10, v2

    #@e9
    if-gez v2, :cond_7

    #@eb
    .line 470
    const-wide/16 v2, 0x3e8

    #@ed
    div-long/2addr v2, v10

    #@ee
    const-wide/16 v4, 0x2

    #@f0
    add-long/2addr v2, v4

    #@f1
    long-to-int v2, v2

    #@f2
    mul-int/2addr v6, v2

    #@f3
    goto/16 :goto_1
.end method

.method public runSingleJunitTest(Ljava/lang/String;)V
    .locals 19
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 484
    const/4 v10, 0x0

    #@1
    .line 485
    .local v10, "excep":Ljava/lang/Throwable;
    const/16 v17, 0x24

    #@3
    move-object/from16 v0, p1

    #@5
    move/from16 v1, v17

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@a
    move-result v11

    #@b
    .line 486
    .local v11, "index":I
    const-string/jumbo v15, ""

    #@e
    .line 487
    .local v15, "testName":Ljava/lang/String;
    move-object/from16 v13, p1

    #@10
    .line 488
    .local v13, "originalClassName":Ljava/lang/String;
    if-ltz v11, :cond_0

    #@12
    .line 489
    const/16 v17, 0x0

    #@14
    move-object/from16 v0, p1

    #@16
    move/from16 v1, v17

    #@18
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    .line 490
    add-int/lit8 v17, v11, 0x1

    #@1e
    move/from16 v0, v17

    #@20
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object v15

    #@24
    .line 493
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@28
    move-object/from16 v17, v0

    #@2a
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@2d
    move-result-object v17

    #@2e
    move-object/from16 v0, v17

    #@30
    move-object/from16 v1, p1

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@35
    move-result-object v4

    #@36
    .line 494
    .local v4, "clazz":Ljava/lang/Class;
    sget-object v17, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    #@38
    move-object/from16 v0, v17

    #@3a
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3d
    move-result v17

    #@3e
    if-eqz v17, :cond_2

    #@40
    .line 495
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@43
    move-result-object v14

    #@44
    check-cast v14, Ljunit/framework/TestCase;

    #@46
    .line 496
    .local v14, "test":Ljunit/framework/TestCase;
    new-instance v12, Landroid/test/TestRunner$JunitTestSuite;

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-direct {v12, v0}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    #@4d
    .line 497
    .local v12, "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    invoke-virtual {v14, v15}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    #@50
    .line 499
    instance-of v0, v14, Landroid/test/AndroidTestCase;

    #@52
    move/from16 v17, v0

    #@54
    if-eqz v17, :cond_1

    #@56
    .line 500
    move-object v0, v14

    #@57
    check-cast v0, Landroid/test/AndroidTestCase;

    #@59
    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    #@5b
    .line 502
    .local v16, "testcase":Landroid/test/AndroidTestCase;
    :try_start_1
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    #@5f
    move-object/from16 v17, v0

    #@61
    invoke-virtual/range {v16 .. v17}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    #@64
    .line 507
    .end local v16    # "testcase":Landroid/test/AndroidTestCase;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v12, v14}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    #@67
    .line 509
    move-object/from16 v0, p0

    #@69
    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    #@6b
    move/from16 v17, v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    #@6d
    const/16 v18, 0x1

    #@6f
    move/from16 v0, v17

    #@71
    move/from16 v1, v18

    #@73
    if-ne v0, v1, :cond_3

    #@75
    .line 511
    :try_start_3
    invoke-virtual {v14}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    #@78
    move-result-object v17

    #@79
    move-object/from16 v0, p0

    #@7b
    move-object/from16 v1, v17

    #@7d
    invoke-direct {v0, v1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    #@80
    .line 512
    invoke-virtual {v14}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    #@83
    move-result-object v17

    #@84
    const/16 v18, 0x1

    #@86
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, p1

    #@8a
    move/from16 v2, v18

    #@8c
    move-object/from16 v3, v17

    #@8e
    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V

    #@91
    .line 513
    invoke-virtual {v14}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    #@94
    move-result-object v17

    #@95
    move-object/from16 v0, p0

    #@97
    move-object/from16 v1, v17

    #@99
    invoke-direct {v0, v1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    #@9c
    .line 515
    invoke-virtual {v14}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    #@9f
    move-result-object v17

    #@a0
    move-object/from16 v0, p0

    #@a2
    move-object/from16 v1, v17

    #@a4
    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4

    #@a7
    .line 483
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v10    # "excep":Ljava/lang/Throwable;
    .end local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .end local v14    # "test":Ljunit/framework/TestCase;
    :cond_2
    :goto_1
    return-void

    #@a8
    .line 503
    .restart local v4    # "clazz":Ljava/lang/Class;
    .restart local v10    # "excep":Ljava/lang/Throwable;
    .restart local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .restart local v14    # "test":Ljunit/framework/TestCase;
    .restart local v16    # "testcase":Landroid/test/AndroidTestCase;
    :catch_0
    move-exception v8

    #@a9
    .line 504
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v17, "TestHarness"

    #@ac
    const-string/jumbo v18, "Exception encountered while trying to set the context."

    #@af
    move-object/from16 v0, v17

    #@b1
    move-object/from16 v1, v18

    #@b3
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    #@b6
    goto :goto_0

    #@b7
    .line 531
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .end local v14    # "test":Ljunit/framework/TestCase;
    .end local v16    # "testcase":Landroid/test/AndroidTestCase;
    :catch_1
    move-exception v5

    #@b8
    .line 532
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v17, "TestHarness"

    #@bb
    const-string/jumbo v18, "No test case to run"

    #@be
    move-object/from16 v0, v17

    #@c0
    move-object/from16 v1, v18

    #@c2
    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c5
    goto :goto_1

    #@c6
    .line 519
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "clazz":Ljava/lang/Class;
    .restart local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .restart local v14    # "test":Ljunit/framework/TestCase;
    :catch_2
    move-exception v9

    #@c7
    .line 520
    .local v9, "ex":Ljava/lang/Throwable;
    move-object v10, v9

    #@c8
    .local v10, "excep":Ljava/lang/Throwable;
    goto :goto_1

    #@c9
    .line 523
    .end local v9    # "ex":Ljava/lang/Throwable;
    .local v10, "excep":Ljava/lang/Throwable;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    #@cb
    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    #@cd
    move/from16 v17, v0

    #@cf
    const/16 v18, 0x2

    #@d1
    move/from16 v0, v17

    #@d3
    move/from16 v1, v18

    #@d5
    if-ne v0, v1, :cond_4

    #@d7
    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    #@da
    .line 525
    invoke-static {v12}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    #@dd
    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4

    #@e0
    goto :goto_1

    #@e1
    .line 533
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .end local v14    # "test":Ljunit/framework/TestCase;
    :catch_3
    move-exception v6

    #@e2
    .line 534
    .local v6, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v17, "TestHarness"

    #@e5
    const-string/jumbo v18, "Illegal Access Exception"

    #@e8
    move-object/from16 v0, v17

    #@ea
    move-object/from16 v1, v18

    #@ec
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ef
    goto :goto_1

    #@f0
    .line 528
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "clazz":Ljava/lang/Class;
    .restart local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .restart local v14    # "test":Ljunit/framework/TestCase;
    :cond_4
    :try_start_6
    invoke-static {v12}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_4

    #@f3
    goto :goto_1

    #@f4
    .line 535
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v12    # "newSuite":Landroid/test/TestRunner$JunitTestSuite;
    .end local v14    # "test":Ljunit/framework/TestCase;
    :catch_4
    move-exception v7

    #@f5
    .line 536
    .local v7, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v17, "TestHarness"

    #@f8
    const-string/jumbo v18, "Instantiation Exception"

    #@fb
    move-object/from16 v0, v17

    #@fd
    move-object/from16 v1, v18

    #@ff
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@102
    goto :goto_1
.end method

.method public setInternalIterations(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 240
    iput p1, p0, Landroid/test/TestRunner;->mInternalIterations:I

    #@2
    .line 239
    return-void
.end method

.method public setPerformanceMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 268
    iput p1, p0, Landroid/test/TestRunner;->mMode:I

    #@2
    .line 267
    return-void
.end method

.method public startProfiling()V
    .locals 4

    #@0
    .prologue
    .line 171
    new-instance v1, Ljava/io/File;

    #@2
    const-string/jumbo v2, "/tmp/trace"

    #@5
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 172
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    #@b
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "/tmp/trace/"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ".dmtrace"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 174
    .local v0, "base":Ljava/lang/String;
    const/high16 v2, 0x800000

    #@2a
    invoke-static {v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    #@2d
    .line 170
    return-void
.end method

.method public startTiming(Z)V
    .locals 2
    .param p1, "realTime"    # Z

    #@0
    .prologue
    .line 244
    if-eqz p1, :cond_0

    #@2
    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    #@8
    .line 243
    :goto_0
    return-void

    #@9
    .line 247
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    #@f
    goto :goto_0
.end method
