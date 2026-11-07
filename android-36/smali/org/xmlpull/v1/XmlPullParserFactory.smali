.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "XmlPullParserFactory.java"


# static fields
.field public static final whitelist test-api PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"


# instance fields
.field protected whitelist test-api classNamesLocation:Ljava/lang/String;

.field protected whitelist test-api features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected whitelist test-api parserClasses:Ljava/util/ArrayList;

.field protected whitelist test-api serializerClasses:Ljava/util/ArrayList;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    .line 40
    :try_start_1b
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    const-string v1, "com.android.org.kxml2.io.KXmlParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    const-string v1, "com.android.org.kxml2.io.KXmlSerializer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_31} :catch_33

    .line 44
    nop

    .line 45
    return-void

    .line 42
    :catch_33
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private greylist-max-o getParserInstance()Lorg/xmlpull/v1/XmlPullParser;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 144
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_3d

    .line 147
    :try_start_25
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 148
    .local v3, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlPullParser;
    :try_end_2e
    .catch Ljava/lang/InstantiationException; {:try_start_25 .. :try_end_2e} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2e} :catch_34
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2e} :catch_2f

    return-object v4

    .line 154
    .end local v3    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2f
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 152
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_34
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3d

    .line 150
    :catch_39
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_3d
    :goto_3d
    nop

    .line 157
    .end local v2    # "o":Ljava/lang/Object;
    :goto_3e
    goto :goto_19

    .line 160
    :cond_3f
    const-string v1, "Invalid parser class list"

    invoke-static {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getSerializerInstance()Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 168
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_3d

    .line 171
    :try_start_25
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 172
    .local v3, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2e
    .catch Ljava/lang/InstantiationException; {:try_start_25 .. :try_end_2e} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2e} :catch_34
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2e} :catch_2f

    return-object v4

    .line 178
    .end local v3    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2f
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 176
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_34
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3d

    .line 174
    :catch_39
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_3d
    :goto_3d
    nop

    .line 181
    .end local v2    # "o":Ljava/lang/Object;
    :goto_3e
    goto :goto_19

    .line 184
    :cond_3f
    const-string v1, "Invalid serializer class list"

    invoke-static {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist test-api newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .registers 3
    .param p0, "unused"    # Ljava/lang/String;
    .param p1, "unused2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 232
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/xmlpull/v1/XmlPullParserException;"
        }
    .end annotation

    .line 189
    .local p1, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 192
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "exception":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    .line 194
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 195
    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_12

    .line 197
    :cond_22
    return-object v0

    .line 190
    .end local v0    # "exception":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_23
    :goto_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 69
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 2

    .line 93
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isValidating()Z
    .registers 2

    .line 117
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getParserInstance()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 128
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 134
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_39
    goto :goto_e

    .line 136
    :cond_3a
    return-object v0
.end method

.method public whitelist test-api newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getSerializerInstance()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public whitelist test-api setNamespaceAware(Z)V
    .registers 5
    .param p1, "awareness"    # Z

    .line 81
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public whitelist test-api setValidating(Z)V
    .registers 5
    .param p1, "validating"    # Z

    .line 105
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method
