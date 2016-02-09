.class abstract Landroid/preference/GenericInflater;
.super Ljava/lang/Object;
.source "GenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/GenericInflater$Parent;,
        Landroid/preference/GenericInflater$Factory;,
        Landroid/preference/GenericInflater$FactoryMerger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Landroid/preference/GenericInflater$Parent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static final sConstructorMap:Ljava/util/HashMap;


# instance fields
.field private final DEBUG:Z

.field private final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mDefaultPackage:Ljava/lang/String;

.field private mFactory:Landroid/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFactorySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 56
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    .line 57
    const-class v1, Landroid/content/Context;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    const-class v1, Landroid/util/AttributeSet;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    .line 56
    sput-object v0, Landroid/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    #@f
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    sput-object v0, Landroid/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    #@16
    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 109
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/preference/GenericInflater;->DEBUG:Z

    #@6
    .line 54
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@b
    .line 110
    iput-object p1, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    #@d
    .line 109
    return-void
.end method

.method protected constructor <init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V
    .locals 1
    .param p2, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater",
            "<TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p1, "original":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/preference/GenericInflater;->DEBUG:Z

    #@6
    .line 54
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@b
    .line 122
    iput-object p2, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    #@d
    .line 123
    iget-object v0, p1, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@f
    iput-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@11
    .line 121
    return-void
.end method

.method private final createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 426
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    :try_start_0
    iget-object v5, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@2
    if-nez v5, :cond_1

    #@4
    const/4 v4, 0x0

    #@5
    .line 428
    :goto_0
    if-nez v4, :cond_0

    #@7
    .line 429
    const/16 v5, 0x2e

    #@9
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v5

    #@d
    const/4 v6, -0x1

    #@e
    if-ne v6, v5, :cond_2

    #@10
    .line 430
    invoke-virtual {p0, p2, p3}, Landroid/preference/GenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    .line 437
    :cond_0
    :goto_1
    return-object v4

    #@15
    .line 426
    :cond_1
    iget-object v5, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@17
    iget-object v6, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    #@19
    invoke-interface {v5, p2, v6, p3}, Landroid/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    .local v4, "item":Ljava/lang/Object;, "TT;"
    goto :goto_0

    #@1e
    .line 432
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v5, 0x0

    #@1f
    invoke-virtual {p0, p2, v5, p3}, Landroid/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v4

    #@23
    .restart local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_1

    #@24
    .line 449
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    #@25
    .line 450
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/view/InflateException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    .line 452
    const-string/jumbo v6, ": Error inflating class "

    #@37
    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@46
    .line 453
    .local v3, "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@49
    .line 454
    throw v3

    #@4a
    .line 442
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v1

    #@4b
    .line 443
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/view/InflateException;

    #@4d
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    .line 445
    const-string/jumbo v6, ": Error inflating class "

    #@5d
    .line 443
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@6c
    .line 446
    .restart local v3    # "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6f
    .line 447
    throw v3

    #@70
    .line 439
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    #@71
    .line 440
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 464
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 467
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v3

    #@8
    .local v3, "type":I
    const/4 v4, 0x3

    #@9
    if-ne v3, v4, :cond_1

    #@b
    .line 468
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e
    move-result v4

    #@f
    if-le v4, v0, :cond_2

    #@11
    :cond_1
    const/4 v4, 0x1

    #@12
    if-eq v3, v4, :cond_2

    #@14
    .line 470
    const/4 v4, 0x2

    #@15
    if-ne v3, v4, :cond_0

    #@17
    .line 474
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/GenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 483
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Landroid/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v4, p2

    #@26
    .line 490
    check-cast v4, Landroid/preference/GenericInflater$Parent;

    #@28
    invoke-interface {v4, v1}, Landroid/preference/GenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    #@2b
    .line 495
    invoke-direct {p0, p1, v1, p3}, Landroid/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    #@2e
    goto :goto_0

    #@2f
    .line 463
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    #@0
    .prologue
    .line 370
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    sget-object v7, Landroid/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/lang/reflect/Constructor;

    #@8
    .line 373
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_0

    #@a
    .line 376
    :try_start_0
    iget-object v7, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v8

    #@10
    .line 377
    if-eqz p2, :cond_1

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 376
    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@26
    move-result-object v1

    #@27
    .line 378
    .local v1, "clazz":Ljava/lang/Class;
    sget-object v7, Landroid/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    #@29
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@2c
    move-result-object v2

    #@2d
    .line 379
    const/4 v7, 0x1

    #@2e
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@31
    .line 380
    sget-object v7, Landroid/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    #@33
    invoke-virtual {v7, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 383
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@38
    .line 384
    .local v0, "args":[Ljava/lang/Object;
    const/4 v7, 0x1

    #@39
    aput-object p3, v0, v7

    #@3b
    .line 385
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result-object v7

    #@3f
    return-object v7

    #@40
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_1
    move-object v7, p1

    #@41
    .line 377
    goto :goto_0

    #@42
    .line 398
    :catch_0
    move-exception v4

    #@43
    .line 399
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/view/InflateException;

    #@45
    new-instance v7, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 401
    const-string/jumbo v8, ": Error inflating class "

    #@55
    .line 399
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    .line 402
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getClass()Ljava/lang/Class;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    .line 399
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@6c
    .line 403
    .local v6, "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v4}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6f
    .line 404
    throw v6

    #@70
    .line 395
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v3

    #@71
    .line 397
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    throw v3

    #@72
    .line 387
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    #@73
    .line 388
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Landroid/view/InflateException;

    #@75
    new-instance v7, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    .line 390
    const-string/jumbo v8, ": Error inflating class "

    #@85
    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    .line 391
    if-eqz p2, :cond_2

    #@8b
    new-instance v8, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object p1

    #@9c
    .line 388
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v7

    #@a4
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@a7
    .line 392
    .restart local v6    # "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@aa
    .line 393
    throw v6
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 166
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Landroid/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getFactory()Landroid/preference/GenericInflater$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 175
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@2
    return-object v0
.end method

.method public inflate(ILandroid/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Landroid/preference/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/preference/GenericInflater;->inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "resource"    # I
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Landroid/preference/GenericInflater$Parent;, "TP;"
    invoke-virtual {p0}, Landroid/preference/GenericInflater;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@b
    move-result-object v0

    #@c
    .line 264
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v1

    #@10
    .line 266
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    #@13
    .line 264
    return-object v1

    #@14
    .line 265
    :catchall_0
    move-exception v1

    #@15
    .line 266
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    #@18
    .line 265
    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 241
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Landroid/preference/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Landroid/preference/GenericInflater$Parent;, "TP;"
    iget-object v9, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 294
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@6
    move-result-object v0

    #@7
    .line 295
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v8, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@9
    iget-object v10, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    #@b
    const/4 v11, 0x0

    #@c
    aput-object v10, v8, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 296
    move-object v5, p2

    #@f
    .line 301
    .local v5, "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@12
    move-result v6

    #@13
    .local v6, "type":I
    const/4 v8, 0x2

    #@14
    if-eq v6, v8, :cond_1

    #@16
    .line 302
    const/4 v8, 0x1

    #@17
    if-ne v6, v8, :cond_0

    #@19
    .line 306
    :cond_1
    const/4 v8, 0x2

    #@1a
    if-eq v6, v8, :cond_2

    #@1c
    .line 307
    new-instance v8, Landroid/view/InflateException;

    #@1e
    new-instance v10, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@26
    move-result-object v11

    #@27
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v10

    #@2b
    .line 308
    const-string/jumbo v11, ": No start tag found!"

    #@2e
    .line 307
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v10

    #@32
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v10

    #@36
    invoke-direct {v8, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v8
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 332
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    #@3b
    .line 333
    .local v1, "e":Landroid/view/InflateException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    .line 293
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "e":Landroid/view/InflateException;
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v8

    #@3d
    monitor-exit v9

    #@3e
    throw v8

    #@3f
    .line 318
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    .restart local v6    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    invoke-direct {p0, p1, v8, v0}, Landroid/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    .line 321
    .local v7, "xmlRoot":Ljava/lang/Object;, "TT;"
    check-cast v7, Landroid/preference/GenericInflater$Parent;

    #@49
    .end local v7    # "xmlRoot":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p3, v7}, Landroid/preference/GenericInflater;->onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;

    #@4c
    move-result-object v5

    #@4d
    .line 327
    invoke-direct {p0, p1, v5, v0}, Landroid/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    monitor-exit v9

    #@51
    .line 347
    return-object v5

    #@52
    .line 339
    .end local v6    # "type":I
    :catch_1
    move-exception v2

    #@53
    .line 340
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Landroid/view/InflateException;

    #@55
    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    .line 342
    const-string/jumbo v10, ": "

    #@65
    .line 341
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    .line 342
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    .line 341
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    .line 340
    invoke-direct {v4, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@78
    .line 343
    .local v4, "ex":Landroid/view/InflateException;
    invoke-virtual {v4, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@7b
    .line 344
    throw v4

    #@7c
    .line 335
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v3

    #@7d
    .line 336
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Landroid/view/InflateException;

    #@7f
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-direct {v4, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@86
    .line 337
    .restart local v4    # "ex":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@89
    .line 338
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Landroid/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroid/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .locals 0
    .param p2, "attachToGivenRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    #@0
    .prologue
    .line 520
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p1, "givenRoot":Landroid/preference/GenericInflater$Parent;, "TP;"
    .local p3, "xmlRoot":Landroid/preference/GenericInflater$Parent;, "TP;"
    return-object p3
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    iput-object p1, p0, Landroid/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    #@2
    .line 147
    return-void
.end method

.method public setFactory(Landroid/preference/GenericInflater$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p0, "this":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<TT;TP;>;"
    .local p1, "factory":Landroid/preference/GenericInflater$Factory;, "Landroid/preference/GenericInflater$Factory<TT;>;"
    iget-boolean v0, p0, Landroid/preference/GenericInflater;->mFactorySet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "A factory has already been set on this inflater"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 197
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "Given factory can not be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 200
    :cond_1
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Landroid/preference/GenericInflater;->mFactorySet:Z

    #@1b
    .line 201
    iget-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 202
    iput-object p1, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@21
    .line 192
    :goto_0
    return-void

    #@22
    .line 204
    :cond_2
    new-instance v0, Landroid/preference/GenericInflater$FactoryMerger;

    #@24
    iget-object v1, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@26
    invoke-direct {v0, p1, v1}, Landroid/preference/GenericInflater$FactoryMerger;-><init>(Landroid/preference/GenericInflater$Factory;Landroid/preference/GenericInflater$Factory;)V

    #@29
    iput-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    #@2b
    goto :goto_0
.end method
