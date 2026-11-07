.class public Landroid/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final greylist-max-o sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sConstructors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private greylist-max-o createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "expectedType"    # Ljava/lang/Class;
    .param p3, "tag"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_f9

    .line 207
    :try_start_9
    sget-object v1, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_c} :catch_d5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_c} :catch_b1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_c} :catch_8d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_c} :catch_69
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_c} :catch_45

    .line 208
    :try_start_c
    sget-object v2, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 209
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_36

    .line 210
    iget-object v3, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 211
    invoke-virtual {v3, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 212
    .local v3, "c":Ljava/lang/Class;
    if-eqz v3, :cond_36

    .line 213
    sget-object v4, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v2, v4

    .line 214
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 215
    sget-object v4, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v3    # "c":Ljava/lang/Class;
    :cond_36
    iget-object v3, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 219
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_42

    .end local v0    # "className":Ljava/lang/String;
    .end local p0    # "this":Landroid/transition/TransitionInflater;
    .end local p1    # "attrs":Landroid/util/AttributeSet;
    .end local p2    # "expectedType":Ljava/lang/Class;
    .end local p3    # "tag":Ljava/lang/String;
    :try_start_44
    throw v2
    :try_end_45
    .catch Ljava/lang/InstantiationException; {:try_start_44 .. :try_end_45} :catch_d5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_44 .. :try_end_45} :catch_b1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_44 .. :try_end_45} :catch_8d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_45} :catch_69
    .catch Ljava/lang/IllegalAccessException; {:try_start_44 .. :try_end_45} :catch_45

    .line 232
    .restart local v0    # "className":Ljava/lang/String;
    .restart local p0    # "this":Landroid/transition/TransitionInflater;
    .restart local p1    # "attrs":Landroid/util/AttributeSet;
    .restart local p2    # "expectedType":Ljava/lang/Class;
    .restart local p3    # "tag":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 229
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_69
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 226
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_8d
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 223
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_b1
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 220
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_d5
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 203
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :cond_f9
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag must have a \'class\' attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    .line 135
    .local v0, "transition":Landroid/transition/Transition;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 137
    .local v1, "depth":I
    instance-of v2, p3, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_d

    .line 138
    move-object v2, p3

    check-cast v2, Landroid/transition/TransitionSet;

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 140
    .local v2, "transitionSet":Landroid/transition/TransitionSet;
    :goto_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_183

    :cond_1c
    const/4 v3, 0x1

    if-eq v4, v3, :cond_183

    .line 143
    const/4 v3, 0x2

    if-eq v4, v3, :cond_23

    .line 144
    goto :goto_e

    .line 147
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "name":Ljava/lang/String;
    const-string v5, "fade"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 149
    new-instance v5, Landroid/transition/Fade;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 150
    :cond_39
    const-string v5, "changeBounds"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 151
    new-instance v5, Landroid/transition/ChangeBounds;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 152
    :cond_4b
    const-string/jumbo v5, "slide"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 153
    new-instance v5, Landroid/transition/Slide;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 154
    :cond_5e
    const-string v5, "explode"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 155
    new-instance v5, Landroid/transition/Explode;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 156
    :cond_70
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 157
    new-instance v5, Landroid/transition/ChangeImageTransform;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 158
    :cond_82
    const-string v5, "changeTransform"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 159
    new-instance v5, Landroid/transition/ChangeTransform;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 160
    :cond_94
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 161
    new-instance v5, Landroid/transition/ChangeClipBounds;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 162
    :cond_a6
    const-string v5, "autoTransition"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 163
    new-instance v5, Landroid/transition/AutoTransition;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 164
    :cond_b8
    const-string/jumbo v5, "recolor"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 165
    new-instance v5, Landroid/transition/Recolor;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/Recolor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_147

    .line 166
    :cond_cb
    const-string v5, "changeScroll"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 167
    new-instance v5, Landroid/transition/ChangeScroll;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_147

    .line 168
    :cond_dc
    const-string/jumbo v5, "transitionSet"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 169
    new-instance v5, Landroid/transition/TransitionSet;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_147

    .line 170
    :cond_ee
    const-string/jumbo v5, "transition"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    .line 171
    const-class v6, Landroid/transition/Transition;

    invoke-direct {p0, p2, v6, v5}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/transition/Transition;

    goto :goto_147

    .line 172
    :cond_101
    const-string/jumbo v5, "targets"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V

    goto :goto_147

    .line 174
    :cond_10e
    const-string v5, "arcMotion"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 175
    new-instance v5, Landroid/transition/ArcMotion;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto :goto_147

    .line 176
    :cond_121
    const-string v5, "pathMotion"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 177
    const-class v6, Landroid/transition/PathMotion;

    invoke-direct {p0, p2, v6, v5}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/PathMotion;

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto :goto_147

    .line 178
    :cond_135
    const-string v5, "patternPathMotion"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_166

    .line 179
    new-instance v5, Landroid/transition/PatternPathMotion;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 183
    :goto_147
    if-eqz v0, :cond_164

    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v5

    if-nez v5, :cond_152

    .line 185
    invoke-direct {p0, p1, p2, v0}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 187
    :cond_152
    if-eqz v2, :cond_159

    .line 188
    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 189
    const/4 v0, 0x0

    goto :goto_164

    .line 190
    :cond_159
    if-nez p3, :cond_15c

    goto :goto_164

    .line 191
    :cond_15c
    new-instance v5, Landroid/view/InflateException;

    const-string v6, "Could not add transition to another transition."

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v3    # "name":Ljava/lang/String;
    :cond_164
    :goto_164
    goto/16 :goto_e

    .line 181
    .restart local v3    # "name":Ljava/lang/String;
    :cond_166
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown scene name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    .end local v3    # "name":Ljava/lang/String;
    :cond_183
    return-object v0
.end method

.method private greylist-max-o createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 300
    .local v0, "depth":I
    const/4 v1, 0x0

    .line 302
    .local v1, "transitionManager":Landroid/transition/TransitionManager;
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_5a

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_5a

    .line 305
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1a

    .line 306
    goto :goto_5

    .line 309
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "transitionManager"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 311
    new-instance v4, Landroid/transition/TransitionManager;

    invoke-direct {v4}, Landroid/transition/TransitionManager;-><init>()V

    move-object v1, v4

    .end local v1    # "transitionManager":Landroid/transition/TransitionManager;
    .local v4, "transitionManager":Landroid/transition/TransitionManager;
    goto :goto_3c

    .line 312
    .end local v4    # "transitionManager":Landroid/transition/TransitionManager;
    .restart local v1    # "transitionManager":Landroid/transition/TransitionManager;
    :cond_2e
    const-string/jumbo v4, "transition"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    if-eqz v1, :cond_3d

    .line 313
    invoke-direct {p0, p2, p3, v1}, Landroid/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V

    .line 317
    .end local v2    # "name":Ljava/lang/String;
    :goto_3c
    goto :goto_5

    .line 315
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3d
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scene name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    .end local v2    # "name":Ljava/lang/String;
    :cond_5a
    return-object v1
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/transition/TransitionInflater;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private greylist-max-o getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 245
    .local v0, "depth":I
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_ba

    :cond_12
    const/4 v1, 0x1

    if-eq v2, v1, :cond_ba

    .line 248
    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    .line 249
    goto :goto_4

    .line 252
    :cond_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "target"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 254
    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->TransitionTarget:[I

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 255
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 257
    .local v8, "id":I
    if-eqz v8, :cond_39

    .line 258
    invoke-virtual {p3, v8}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    goto :goto_7b

    .line 259
    :cond_39
    invoke-virtual {v6, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v8, v4

    if-eqz v4, :cond_44

    .line 260
    invoke-virtual {p3, v8, v1}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    goto :goto_7b

    .line 261
    :cond_44
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .local v9, "transitionName":Ljava/lang/String;
    if-eqz v4, :cond_50

    .line 263
    invoke-virtual {p3, v9}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    goto :goto_7b

    .line 264
    :cond_50
    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    if-eqz v4, :cond_5c

    .line 266
    invoke-virtual {p3, v9, v1}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    goto :goto_7b

    .line 268
    :cond_5c
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_6b

    .line 271
    :try_start_62
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 272
    .local v4, "clazz":Ljava/lang/Class;
    invoke-virtual {p3, v4, v1}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 273
    nop

    .end local v4    # "clazz":Ljava/lang/Class;
    goto :goto_7a

    :cond_6b
    nop

    .line 274
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    if-eqz v1, :cond_7a

    .line 275
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 276
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {p3, v1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    :try_end_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_62 .. :try_end_7a} :catch_80

    .line 281
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_7a
    :goto_7a
    nop

    .line 283
    .end local v3    # "className":Ljava/lang/String;
    .end local v9    # "transitionName":Ljava/lang/String;
    :goto_7b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "id":I
    nop

    .line 287
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_4

    .line 278
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v8    # "id":I
    .restart local v9    # "transitionName":Ljava/lang/String;
    :catch_80
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 285
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "className":Ljava/lang/String;
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "id":I
    .end local v9    # "transitionName":Ljava/lang/String;
    :cond_9d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown scene name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    .end local v5    # "name":Ljava/lang/String;
    :cond_ba
    return-void
.end method

.method private greylist-max-o loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V
    .registers 14
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "transitionManager"    # Landroid/transition/TransitionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TransitionManager:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 325
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 326
    .local v1, "transitionId":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 327
    .local v3, "fromId":I
    const/4 v4, 0x0

    if-gez v3, :cond_18

    move-object v5, v4

    goto :goto_1e

    :cond_18
    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v5}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v5

    .line 328
    .local v5, "fromScene":Landroid/transition/Scene;
    :goto_1e
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 329
    .local v2, "toId":I
    if-gez v2, :cond_26

    goto :goto_2c

    :cond_26
    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, v4}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v4

    .line 331
    .local v4, "toScene":Landroid/transition/Scene;
    :goto_2c
    if-ltz v1, :cond_59

    .line 332
    invoke-virtual {p0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v6

    .line 333
    .local v6, "transition":Landroid/transition/Transition;
    if-eqz v6, :cond_59

    .line 334
    if-eqz v4, :cond_40

    .line 337
    if-nez v5, :cond_3c

    .line 338
    invoke-virtual {p3, v4, v6}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_59

    .line 340
    :cond_3c
    invoke-virtual {p3, v5, v4, v6}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_59

    .line 335
    :cond_40
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No toScene for transition ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 344
    .end local v6    # "transition":Landroid/transition/Transition;
    :cond_59
    :goto_59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    return-void
.end method


# virtual methods
.method public whitelist inflateTransition(I)Landroid/transition/Transition;
    .registers 7
    .param p1, "resource"    # I

    .line 77
    iget-object v0, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 79
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_13} :catch_43
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_19
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 91
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 79
    return-object v1

    .line 91
    :catchall_17
    move-exception v1

    goto :goto_52

    .line 84
    :catch_19
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :try_start_1a
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    nop

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/transition/TransitionInflater;
    .end local p1    # "resource":I
    throw v2

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Landroid/view/InflateException;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/transition/TransitionInflater;
    .restart local p1    # "resource":I
    :catch_43
    move-exception v1

    .line 81
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    nop

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/transition/TransitionInflater;
    .end local p1    # "resource":I
    throw v2
    :try_end_52
    .catchall {:try_start_1a .. :try_end_52} :catchall_17

    .line 91
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/transition/TransitionInflater;
    .restart local p1    # "resource":I
    :goto_52
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 92
    throw v1
.end method

.method public whitelist inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .registers 8
    .param p1, "resource"    # I
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 108
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v1
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_12} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_18
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 120
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 108
    return-object v1

    .line 120
    :catchall_16
    move-exception v1

    goto :goto_51

    .line 113
    :catch_18
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    :try_start_19
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    nop

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/transition/TransitionInflater;
    .end local p1    # "resource":I
    .end local p2    # "sceneRoot":Landroid/view/ViewGroup;
    throw v2

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Landroid/view/InflateException;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/transition/TransitionInflater;
    .restart local p1    # "resource":I
    .restart local p2    # "sceneRoot":Landroid/view/ViewGroup;
    :catch_42
    move-exception v1

    .line 110
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    nop

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/transition/TransitionInflater;
    .end local p1    # "resource":I
    .end local p2    # "sceneRoot":Landroid/view/ViewGroup;
    throw v2
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_16

    .line 120
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/transition/TransitionInflater;
    .restart local p1    # "resource":I
    .restart local p2    # "sceneRoot":Landroid/view/ViewGroup;
    :goto_51
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 121
    throw v1
.end method
