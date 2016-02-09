.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "XmlPullParserFactory.java"


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected parserClasses:Ljava/util/ArrayList;

.field protected serializerClasses:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    #@6
    .line 33
    new-instance v1, Ljava/util/HashMap;

    #@8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    #@d
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    #@14
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    #@16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    #@1b
    .line 43
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    #@1d
    const-string/jumbo v2, "org.kxml2.io.KXmlParser"

    #@20
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 44
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    #@29
    const-string/jumbo v2, "org.kxml2.io.KXmlSerializer"

    #@2c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 38
    return-void

    #@34
    .line 45
    :catch_0
    move-exception v0

    #@35
    .line 46
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    #@37
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@3a
    throw v1
.end method

.method private getParserInstance()Lorg/xmlpull/v1/XmlPullParser;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    const/4 v4, 0x0

    #@1
    .line 145
    .local v4, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    #@3
    if-eqz v8, :cond_0

    #@5
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 163
    .end local v4    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    :cond_0
    const-string/jumbo v8, "Invalid parser class list"

    #@10
    invoke-static {v8, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    move-result-object v8

    #@14
    throw v8

    #@15
    .line 146
    .restart local v4    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    #@17
    .end local v4    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 147
    .local v4, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    #@1c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v6

    #@20
    .local v6, "o$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_0

    #@26
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    .line 149
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_2

    #@2c
    .line 150
    :try_start_0
    move-object v0, v5

    #@2d
    check-cast v0, Ljava/lang/Class;

    #@2f
    move-object v7, v0

    #@30
    .line 151
    .local v7, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    return-object v8

    #@37
    .line 157
    .end local v7    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@38
    .line 158
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 155
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@3d
    .line 156
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 153
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    #@42
    .line 154
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0
.end method

.method private getSerializerInstance()Lorg/xmlpull/v1/XmlSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    const/4 v4, 0x0

    #@1
    .line 169
    .local v4, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    #@3
    if-eqz v8, :cond_0

    #@5
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 187
    .end local v4    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    :cond_0
    const-string/jumbo v8, "Invalid serializer class list"

    #@10
    invoke-static {v8, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    move-result-object v8

    #@14
    throw v8

    #@15
    .line 170
    .restart local v4    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    #@17
    .end local v4    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 171
    .local v4, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    #@1c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v6

    #@20
    .local v6, "o$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_0

    #@26
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    .line 173
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_2

    #@2c
    .line 174
    :try_start_0
    move-object v0, v5

    #@2d
    check-cast v0, Ljava/lang/Class;

    #@2f
    move-object v7, v0

    #@30
    .line 175
    .local v7, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    return-object v8

    #@37
    .line 181
    .end local v7    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@38
    .line 182
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 179
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@3d
    .line 180
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 177
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    #@42
    .line 178
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    #@2
    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .param p0, "unused"    # Ljava/lang/String;
    .param p1, "unused2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/xmlpull/v1/XmlPullParserException;"
        }
    .end annotation

    #@0
    .prologue
    .line 192
    .local p1, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 193
    :cond_0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@a
    invoke-direct {v3, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@d
    return-object v3

    #@e
    .line 195
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@10
    invoke-direct {v2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@13
    .line 196
    .local v2, "exception":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "ex$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Exception;

    #@23
    .line 197
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;->addSuppressed(Ljava/lang/Throwable;)V

    #@26
    goto :goto_0

    #@27
    .line 200
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    .line 72
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public isNamespaceAware()Z
    .locals 1

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@3
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isValidating()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#validation"

    #@3
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getParserInstance()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v2

    #@4
    .line 131
    .local v2, "pp":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v3, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Map$Entry;

    #@1a
    .line 134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/Boolean;

    #@20
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/lang/String;

    #@2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Ljava/lang/Boolean;

    #@32
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@35
    move-result v4

    #@36
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    #@39
    goto :goto_0

    #@3a
    .line 139
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    return-object v2
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getSerializerInstance()Lorg/xmlpull/v1/XmlSerializer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 57
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 3
    .param p1, "awareness"    # Z

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 83
    return-void
.end method

.method public setValidating(Z)V
    .locals 3
    .param p1, "validating"    # Z

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#validation"

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 107
    return-void
.end method
