.class public Landroid/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    .line 50
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
    .line 49
    sput-object v0, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    #@f
    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    #@11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@14
    .line 51
    sput-object v0, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    #@16
    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@5
    .line 56
    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "expectedType"    # Ljava/lang/Class;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 200
    const-string/jumbo v8, "class"

    #@4
    invoke-interface {p1, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 202
    .local v1, "className":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 203
    new-instance v8, Landroid/view/InflateException;

    #@c
    new-instance v9, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    const-string/jumbo v10, " tag must have a \'class\' attribute"

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v9

    #@20
    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v8

    #@24
    .line 207
    :cond_0
    :try_start_0
    sget-object v9, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    #@26
    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@27
    .line 208
    :try_start_1
    sget-object v8, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Ljava/lang/reflect/Constructor;

    #@2f
    .line 209
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_1

    #@31
    .line 210
    iget-object v8, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@33
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@3e
    move-result-object v0

    #@3f
    .line 212
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_1

    #@41
    .line 213
    sget-object v8, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    #@43
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@46
    move-result-object v2

    #@47
    .line 214
    const/4 v8, 0x1

    #@48
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@4b
    .line 215
    sget-object v8, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    #@4d
    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 218
    .end local v0    # "c":Ljava/lang/Class;
    :cond_1
    const/4 v8, 0x2

    #@51
    new-array v8, v8, [Ljava/lang/Object;

    #@53
    iget-object v10, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@55
    const/4 v11, 0x0

    #@56
    aput-object v10, v8, v11

    #@58
    const/4 v10, 0x1

    #@59
    aput-object p1, v8, v10

    #@5b
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    move-result-object v8

    #@5f
    :try_start_2
    monitor-exit v9

    #@60
    return-object v8

    #@61
    .line 207
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catchall_0
    move-exception v8

    #@62
    monitor-exit v9

    #@63
    throw v8
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    #@64
    .line 220
    :catch_0
    move-exception v5

    #@65
    .line 221
    .local v5, "e":Ljava/lang/InstantiationException;
    new-instance v8, Landroid/view/InflateException;

    #@67
    new-instance v9, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v10, "Could not instantiate "

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    const-string/jumbo v10, " class "

    #@7a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-direct {v8, v9, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@89
    throw v8

    #@8a
    .line 232
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    #@8b
    .line 233
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Landroid/view/InflateException;

    #@8d
    new-instance v9, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v10, "Could not instantiate "

    #@95
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    const-string/jumbo v10, " class "

    #@a0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v9

    #@ac
    invoke-direct {v8, v9, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@af
    throw v8

    #@b0
    .line 229
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v6

    #@b1
    .line 230
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v8, Landroid/view/InflateException;

    #@b3
    new-instance v9, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v10, "Could not instantiate "

    #@bb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v9

    #@bf
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v9

    #@c3
    const-string/jumbo v10, " class "

    #@c6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v9

    #@ca
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v9

    #@d2
    invoke-direct {v8, v9, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d5
    throw v8

    #@d6
    .line 226
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v7

    #@d7
    .line 227
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v8, Landroid/view/InflateException;

    #@d9
    new-instance v9, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v10, "Could not instantiate "

    #@e1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v9

    #@e5
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v9

    #@e9
    const-string/jumbo v10, " class "

    #@ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v9

    #@f4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v9

    #@f8
    invoke-direct {v8, v9, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fb
    throw v8

    #@fc
    .line 223
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    #@fd
    .line 224
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v8, Landroid/view/InflateException;

    #@ff
    new-instance v9, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v10, "Could not instantiate "

    #@107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v9

    #@10b
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v9

    #@10f
    const-string/jumbo v10, " class "

    #@112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v9

    #@116
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v9

    #@11a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v9

    #@11e
    invoke-direct {v8, v9, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@121
    throw v8
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/4 v2, 0x0

    #@1
    .line 135
    .local v2, "transition":Landroid/transition/Transition;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 137
    .local v0, "depth":I
    instance-of v5, p3, Landroid/transition/TransitionSet;

    #@7
    if-eqz v5, :cond_3

    #@9
    move-object v3, p3

    #@a
    .line 138
    check-cast v3, Landroid/transition/TransitionSet;

    #@c
    .line 140
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f
    move-result v4

    #@10
    .local v4, "type":I
    const/4 v5, 0x3

    #@11
    if-ne v4, v5, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v5

    #@17
    if-le v5, v0, :cond_15

    #@19
    .line 141
    :cond_1
    const/4 v5, 0x1

    #@1a
    if-eq v4, v5, :cond_15

    #@1c
    .line 143
    const/4 v5, 0x2

    #@1d
    if-ne v4, v5, :cond_0

    #@1f
    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 148
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "fade"

    #@26
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_4

    #@2c
    .line 149
    new-instance v2, Landroid/transition/Fade;

    #@2e
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@30
    invoke-direct {v2, v5, p2}, Landroid/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@33
    .line 183
    :goto_1
    if-eqz v2, :cond_0

    #@35
    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    #@38
    move-result v5

    #@39
    if-nez v5, :cond_2

    #@3b
    .line 185
    invoke-direct {p0, p1, p2, v2}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@3e
    .line 187
    :cond_2
    if-eqz v3, :cond_14

    #@40
    .line 188
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@43
    .line 189
    const/4 v2, 0x0

    #@44
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto :goto_0

    #@45
    .line 138
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_3
    const/4 v3, 0x0

    #@46
    .local v3, "transitionSet":Landroid/transition/TransitionSet;
    goto :goto_0

    #@47
    .line 150
    .end local v2    # "transition":Landroid/transition/Transition;
    .end local v3    # "transitionSet":Landroid/transition/TransitionSet;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_4
    const-string/jumbo v5, "changeBounds"

    #@4a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_5

    #@50
    .line 151
    new-instance v2, Landroid/transition/ChangeBounds;

    #@52
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@54
    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@57
    .local v2, "transition":Landroid/transition/Transition;
    goto :goto_1

    #@58
    .line 152
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_5
    const-string/jumbo v5, "slide"

    #@5b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_6

    #@61
    .line 153
    new-instance v2, Landroid/transition/Slide;

    #@63
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@65
    invoke-direct {v2, v5, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@68
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@69
    .line 154
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_6
    const-string/jumbo v5, "explode"

    #@6c
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_7

    #@72
    .line 155
    new-instance v2, Landroid/transition/Explode;

    #@74
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@76
    invoke-direct {v2, v5, p2}, Landroid/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@79
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@7a
    .line 156
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_7
    const-string/jumbo v5, "changeImageTransform"

    #@7d
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v5

    #@81
    if-eqz v5, :cond_8

    #@83
    .line 157
    new-instance v2, Landroid/transition/ChangeImageTransform;

    #@85
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@87
    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@8a
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@8b
    .line 158
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_8
    const-string/jumbo v5, "changeTransform"

    #@8e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_9

    #@94
    .line 159
    new-instance v2, Landroid/transition/ChangeTransform;

    #@96
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@98
    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9b
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@9c
    .line 160
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_9
    const-string/jumbo v5, "changeClipBounds"

    #@9f
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v5

    #@a3
    if-eqz v5, :cond_a

    #@a5
    .line 161
    new-instance v2, Landroid/transition/ChangeClipBounds;

    #@a7
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@a9
    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@ac
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@ad
    .line 162
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_a
    const-string/jumbo v5, "autoTransition"

    #@b0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v5

    #@b4
    if-eqz v5, :cond_b

    #@b6
    .line 163
    new-instance v2, Landroid/transition/AutoTransition;

    #@b8
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@ba
    invoke-direct {v2, v5, p2}, Landroid/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@bd
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto/16 :goto_1

    #@bf
    .line 164
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_b
    const-string/jumbo v5, "recolor"

    #@c2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v5

    #@c6
    if-eqz v5, :cond_c

    #@c8
    .line 165
    new-instance v2, Landroid/transition/Recolor;

    #@ca
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@cc
    invoke-direct {v2, v5, p2}, Landroid/transition/Recolor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@cf
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto/16 :goto_1

    #@d1
    .line 166
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_c
    const-string/jumbo v5, "changeScroll"

    #@d4
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v5

    #@d8
    if-eqz v5, :cond_d

    #@da
    .line 167
    new-instance v2, Landroid/transition/ChangeScroll;

    #@dc
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@de
    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@e1
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto/16 :goto_1

    #@e3
    .line 168
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_d
    const-string/jumbo v5, "transitionSet"

    #@e6
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v5

    #@ea
    if-eqz v5, :cond_e

    #@ec
    .line 169
    new-instance v2, Landroid/transition/TransitionSet;

    #@ee
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@f0
    invoke-direct {v2, v5, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@f3
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto/16 :goto_1

    #@f5
    .line 170
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_e
    const-string/jumbo v5, "transition"

    #@f8
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v5

    #@fc
    if-eqz v5, :cond_f

    #@fe
    .line 171
    const-class v5, Landroid/transition/Transition;

    #@100
    const-string/jumbo v6, "transition"

    #@103
    invoke-direct {p0, p2, v5, v6}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    #@106
    move-result-object v2

    #@107
    check-cast v2, Landroid/transition/Transition;

    #@109
    .restart local v2    # "transition":Landroid/transition/Transition;
    goto/16 :goto_1

    #@10b
    .line 172
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_f
    const-string/jumbo v5, "targets"

    #@10e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v5

    #@112
    if-eqz v5, :cond_10

    #@114
    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V

    #@117
    goto/16 :goto_1

    #@119
    .line 174
    :cond_10
    const-string/jumbo v5, "arcMotion"

    #@11c
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v5

    #@120
    if-eqz v5, :cond_11

    #@122
    .line 175
    new-instance v5, Landroid/transition/ArcMotion;

    #@124
    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@126
    invoke-direct {v5, v6, p2}, Landroid/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@129
    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    #@12c
    goto/16 :goto_1

    #@12e
    .line 176
    :cond_11
    const-string/jumbo v5, "pathMotion"

    #@131
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@134
    move-result v5

    #@135
    if-eqz v5, :cond_12

    #@137
    .line 177
    const-class v5, Landroid/transition/PathMotion;

    #@139
    const-string/jumbo v6, "pathMotion"

    #@13c
    invoke-direct {p0, p2, v5, v6}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    #@13f
    move-result-object v5

    #@140
    check-cast v5, Landroid/transition/PathMotion;

    #@142
    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    #@145
    goto/16 :goto_1

    #@147
    .line 178
    :cond_12
    const-string/jumbo v5, "patternPathMotion"

    #@14a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v5

    #@14e
    if-eqz v5, :cond_13

    #@150
    .line 179
    new-instance v5, Landroid/transition/PatternPathMotion;

    #@152
    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@154
    invoke-direct {v5, v6, p2}, Landroid/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@157
    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    #@15a
    goto/16 :goto_1

    #@15c
    .line 181
    :cond_13
    new-instance v5, Ljava/lang/RuntimeException;

    #@15e
    new-instance v6, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v7, "Unknown scene name: "

    #@166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v6

    #@16a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@16d
    move-result-object v7

    #@16e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v6

    #@172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v6

    #@176
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@179
    throw v5

    #@17a
    .line 190
    :cond_14
    if-eqz p3, :cond_0

    #@17c
    .line 191
    new-instance v5, Landroid/view/InflateException;

    #@17e
    const-string/jumbo v6, "Could not add transition to another transition."

    #@181
    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@184
    throw v5

    #@185
    .line 196
    .end local v1    # "name":Ljava/lang/String;
    :cond_15
    return-object v2
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 298
    .local v0, "depth":I
    const/4 v2, 0x0

    #@5
    .line 300
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v3

    #@9
    .local v3, "type":I
    const/4 v4, 0x3

    #@a
    if-ne v3, v4, :cond_1

    #@c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v4

    #@10
    if-le v4, v0, :cond_4

    #@12
    .line 301
    :cond_1
    const/4 v4, 0x1

    #@13
    if-eq v3, v4, :cond_4

    #@15
    .line 303
    const/4 v4, 0x2

    #@16
    if-ne v3, v4, :cond_0

    #@18
    .line 307
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 308
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "transitionManager"

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 309
    new-instance v2, Landroid/transition/TransitionManager;

    #@27
    invoke-direct {v2}, Landroid/transition/TransitionManager;-><init>()V

    #@2a
    .local v2, "transitionManager":Landroid/transition/TransitionManager;
    goto :goto_0

    #@2b
    .line 310
    .end local v2    # "transitionManager":Landroid/transition/TransitionManager;
    :cond_2
    const-string/jumbo v4, "transition"

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_3

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 311
    invoke-direct {p0, p2, p3, v2}, Landroid/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V

    #@39
    goto :goto_0

    #@3a
    .line 313
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "Unknown scene name: "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v4

    #@58
    .line 316
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public static from(Landroid/content/Context;)Landroid/transition/TransitionInflater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/transition/TransitionInflater;

    #@2
    invoke-direct {v0, p0}, Landroid/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v3

    #@4
    .line 245
    .local v3, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v8

    #@8
    .local v8, "type":I
    const/4 v9, 0x3

    #@9
    if-ne v8, v9, :cond_1

    #@b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e
    move-result v9

    #@f
    if-le v9, v3, :cond_8

    #@11
    .line 246
    :cond_1
    const/4 v9, 0x1

    #@12
    if-eq v8, v9, :cond_8

    #@14
    .line 248
    const/4 v9, 0x2

    #@15
    if-ne v8, v9, :cond_0

    #@17
    .line 252
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 253
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v9, "target"

    #@1e
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_7

    #@24
    .line 254
    iget-object v9, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@26
    sget-object v10, Lcom/android/internal/R$styleable;->TransitionTarget:[I

    #@28
    invoke-virtual {v9, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2b
    move-result-object v0

    #@2c
    .line 255
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    #@2d
    const/4 v10, 0x0

    #@2e
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@31
    move-result v5

    #@32
    .line 257
    .local v5, "id":I
    if-eqz v5, :cond_2

    #@34
    .line 258
    invoke-virtual {p3, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    #@37
    goto :goto_0

    #@38
    .line 259
    :cond_2
    const/4 v9, 0x2

    #@39
    const/4 v10, 0x0

    #@3a
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_3

    #@40
    .line 260
    const/4 v9, 0x1

    #@41
    invoke-virtual {p3, v5, v9}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    #@44
    goto :goto_0

    #@45
    .line 261
    :cond_3
    const/4 v9, 0x4

    #@46
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .local v7, "transitionName":Ljava/lang/String;
    if-eqz v7, :cond_4

    #@4c
    .line 263
    invoke-virtual {p3, v7}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    #@4f
    goto :goto_0

    #@50
    .line 264
    :cond_4
    const/4 v9, 0x5

    #@51
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    if-eqz v7, :cond_5

    #@57
    .line 266
    const/4 v9, 0x1

    #@58
    invoke-virtual {p3, v7, v9}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    #@5b
    goto :goto_0

    #@5c
    .line 268
    :cond_5
    const/4 v9, 0x3

    #@5d
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 270
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_6

    #@63
    .line 271
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@66
    move-result-object v2

    #@67
    .line 272
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v9, 0x1

    #@68
    invoke-virtual {p3, v2, v9}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_0

    #@6c
    .line 278
    .end local v2    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@6d
    .line 279
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    #@6f
    new-instance v10, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v11, "Could not create "

    #@77
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v10

    #@7b
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v10

    #@83
    invoke-direct {v9, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@86
    throw v9

    #@87
    .line 274
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    const/4 v9, 0x0

    #@88
    :try_start_1
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    .line 273
    if-eqz v1, :cond_0

    #@8e
    .line 275
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@91
    move-result-object v2

    #@92
    .line 276
    .restart local v2    # "clazz":Ljava/lang/Class;
    invoke-virtual {p3, v2}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@95
    goto/16 :goto_0

    #@97
    .line 283
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v5    # "id":I
    .end local v7    # "transitionName":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/RuntimeException;

    #@99
    new-instance v10, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v11, "Unknown scene name: "

    #@a1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v10

    #@a5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v10

    #@b1
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v9

    #@b5
    .line 239
    .end local v6    # "name":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "transitionManager"    # Landroid/transition/TransitionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 322
    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@4
    sget-object v8, Lcom/android/internal/R$styleable;->TransitionManager:[I

    #@6
    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 323
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    #@b
    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e
    move-result v6

    #@f
    .line 324
    .local v6, "transitionId":I
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12
    move-result v1

    #@13
    .line 325
    .local v1, "fromId":I
    if-gez v1, :cond_0

    #@15
    const/4 v2, 0x0

    #@16
    .line 326
    :goto_0
    const/4 v7, 0x1

    #@17
    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result v3

    #@1b
    .line 327
    .local v3, "toId":I
    if-gez v3, :cond_1

    #@1d
    const/4 v4, 0x0

    #@1e
    .line 329
    :goto_1
    if-ltz v6, :cond_3

    #@20
    .line 330
    invoke-virtual {p0, v6}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@23
    move-result-object v5

    #@24
    .line 331
    .local v5, "transition":Landroid/transition/Transition;
    if-eqz v5, :cond_3

    #@26
    .line 332
    if-nez v4, :cond_2

    #@28
    .line 333
    new-instance v7, Ljava/lang/RuntimeException;

    #@2a
    new-instance v8, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v9, "No toScene for transition ID "

    #@32
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v7

    #@42
    .line 325
    .end local v3    # "toId":I
    .end local v5    # "transition":Landroid/transition/Transition;
    :cond_0
    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@44
    invoke-static {p2, v1, v7}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    #@47
    move-result-object v2

    #@48
    .local v2, "fromScene":Landroid/transition/Scene;
    goto :goto_0

    #@49
    .line 327
    .end local v2    # "fromScene":Landroid/transition/Scene;
    .restart local v3    # "toId":I
    :cond_1
    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@4b
    invoke-static {p2, v3, v7}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    #@4e
    move-result-object v4

    #@4f
    .local v4, "toScene":Landroid/transition/Scene;
    goto :goto_1

    #@50
    .line 335
    .end local v4    # "toScene":Landroid/transition/Scene;
    .restart local v5    # "transition":Landroid/transition/Transition;
    :cond_2
    if-nez v2, :cond_4

    #@52
    .line 336
    invoke-virtual {p3, v4, v5}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    #@55
    .line 342
    .end local v5    # "transition":Landroid/transition/Transition;
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@58
    .line 320
    return-void

    #@59
    .line 338
    .restart local v5    # "transition":Landroid/transition/Transition;
    :cond_4
    invoke-virtual {p3, v2, v4, v5}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    #@5c
    goto :goto_2
.end method


# virtual methods
.method public inflateTransition(I)Landroid/transition/Transition;
    .locals 6
    .param p1, "resource"    # I

    #@0
    .prologue
    .line 77
    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object v3

    #@a
    .line 79
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@d
    move-result-object v4

    #@e
    const/4 v5, 0x0

    #@f
    invoke-direct {p0, v3, v4, v5}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v4

    #@13
    .line 91
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@16
    .line 79
    return-object v4

    #@17
    .line 84
    :catch_0
    move-exception v0

    #@18
    .line 85
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    #@1a
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 87
    const-string/jumbo v5, ": "

    #@2a
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 87
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 85
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@3d
    .line 88
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@40
    .line 89
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v4

    #@42
    .line 91
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@45
    .line 90
    throw v4

    #@46
    .line 80
    :catch_1
    move-exception v1

    #@47
    .line 81
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    #@49
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@50
    .line 82
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@53
    .line 83
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .locals 6
    .param p1, "resource"    # I
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 106
    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object v3

    #@a
    .line 108
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@d
    move-result-object v4

    #@e
    invoke-direct {p0, v3, v4, p2}, Landroid/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v4

    #@12
    .line 120
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@15
    .line 108
    return-object v4

    #@16
    .line 113
    :catch_0
    move-exception v0

    #@17
    .line 114
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    #@19
    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 116
    const-string/jumbo v5, ": "

    #@29
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 114
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@3c
    .line 117
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3f
    .line 118
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v4

    #@41
    .line 120
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@44
    .line 119
    throw v4

    #@45
    .line 109
    :catch_1
    move-exception v1

    #@46
    .line 110
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    #@48
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@4f
    .line 111
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@52
    .line 112
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
