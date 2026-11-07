.class final Ljavax/xml/validation/SchemaFactoryFinder;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_LINE_LENGTH:I = 0x50

.field private static final blacklist SERVICE_CLASS:Ljava/lang/Class;

.field private static final blacklist SERVICE_ID:Ljava/lang/String;

.field private static final blacklist W3C_XML_SCHEMA10_NS_URI:Ljava/lang/String; = "http://www.w3.org/XML/XMLSchema/v1.0"

.field private static final blacklist W3C_XML_SCHEMA11_NS_URI:Ljava/lang/String; = "http://www.w3.org/XML/XMLSchema/v1.1"

.field private static blacklist debug:Z


# instance fields
.field private final blacklist classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Z
    .registers 1

    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdebugPrintln(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    .line 82
    const-string v1, "jaxp.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_14

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    sput-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    .line 388
    .end local v1    # "val":Ljava/lang/String;
    const-class v0, Ljavax/xml/validation/SchemaFactory;

    sput-object v0, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 116
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_c

    .line 117
    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugDisplayClassLoader()V

    .line 119
    :cond_c
    return-void
.end method

.method private blacklist _newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .registers 8
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    .line 172
    const-string v0, "\'"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "propertyName":Ljava/lang/String;
    :try_start_1f
    sget-boolean v2, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 177
    :cond_3d
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "r":Ljava/lang/String;
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6e

    .line 179
    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The value is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 180
    :cond_67
    invoke-virtual {p0, v2}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 181
    .local v0, "sf":Ljavax/xml/validation/SchemaFactory;
    if-eqz v0, :cond_77

    return-object v0

    .line 183
    .end local v0    # "sf":Ljavax/xml/validation/SchemaFactory;
    :cond_6e
    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v3, :cond_77

    .line 184
    const-string v3, "The property is undefined."

    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/VirtualMachineError; {:try_start_1f .. :try_end_77} :catch_177
    .catch Ljava/lang/ThreadDeath; {:try_start_1f .. :try_end_77} :catch_175
    .catchall {:try_start_1f .. :try_end_77} :catchall_78

    .line 200
    .end local v2    # "r":Ljava/lang/String;
    :cond_77
    goto :goto_9a

    .line 195
    :catchall_78
    move-exception v2

    .line 196
    .local v2, "t":Ljava/lang/Throwable;
    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v3, :cond_9a

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to look up system property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_9a
    :goto_9a
    :try_start_9a
    invoke-static {}, Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;->-$$Nest$sfgetcacheProps()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "factoryClassName":Ljava/lang/String;
    sget-boolean v2, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v2, :cond_c2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in $java.home/jaxp.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 207
    :cond_c2
    if-eqz v0, :cond_cb

    .line 208
    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v2
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c8} :catch_cc

    .line 209
    .local v2, "sf":Ljavax/xml/validation/SchemaFactory;
    if-eqz v2, :cond_cb

    .line 210
    return-object v2

    .line 217
    .end local v0    # "factoryClassName":Ljava/lang/String;
    .end local v2    # "sf":Ljavax/xml/validation/SchemaFactory;
    :cond_cb
    goto :goto_d4

    .line 213
    :catch_cc
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v2, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v2, :cond_d4

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_d4
    :goto_d4
    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->createServiceFileIterator()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 221
    .local v2, "resource":Ljava/net/URL;
    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v3, :cond_102

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looking into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 223
    :cond_102
    :try_start_102
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 223
    invoke-direct {p0, p1, v3, v4}, Ljavax/xml/validation/SchemaFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v3
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_10e} :catch_112

    .line 225
    .local v3, "sf":Ljavax/xml/validation/SchemaFactory;
    if-eqz v3, :cond_111

    return-object v3

    .line 231
    :cond_111
    goto :goto_130

    .line 226
    .end local v3    # "sf":Ljavax/xml/validation/SchemaFactory;
    :catch_112
    move-exception v3

    .line 227
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v4, :cond_130

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    .end local v2    # "resource":Ljava/net/URL;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_130
    :goto_130
    goto :goto_dc

    .line 235
    :cond_131
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_165

    const-string v0, "http://www.w3.org/XML/XMLSchema/v1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    goto :goto_165

    .line 239
    :cond_142
    const-string v0, "http://www.w3.org/XML/XMLSchema/v1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 240
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_153

    const-string v0, "attempting to use the platform default XML Schema 1.1 validator"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 241
    :cond_153
    const-string v0, "org.apache.xerces.jaxp.validation.XMLSchema11Factory"

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    return-object v0

    .line 244
    :cond_15a
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_163

    const-string v0, "all things were tried, but none was found. bailing out."

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 245
    :cond_163
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_165
    :goto_165
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_16e

    const-string v0, "attempting to use the platform default XML Schema 1.0 validator"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 237
    :cond_16e
    const-string v0, "org.apache.xerces.jaxp.validation.XMLSchemaFactory"

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    return-object v0

    .line 192
    :catch_175
    move-exception v0

    .line 193
    .local v0, "td":Ljava/lang/ThreadDeath;
    throw v0

    .line 188
    .end local v0    # "td":Ljava/lang/ThreadDeath;
    :catch_177
    move-exception v0

    .line 189
    .local v0, "vme":Ljava/lang/VirtualMachineError;
    throw v0
.end method

.method private blacklist createServiceFileIterator()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_15

    .line 294
    const-class v0, Ljavax/xml/validation/SchemaFactoryFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 295
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 298
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_15
    :try_start_15
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 299
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_45

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file was found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 304
    :cond_45
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_49} :catch_4a

    return-object v1

    .line 305
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_4a
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v1, :cond_6a

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to enumerate resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    :cond_6a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private blacklist debugDisplayClassLoader()V
    .registers 4

    .line 122
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, ") for search"

    if-ne v0, v1, :cond_2b

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using thread context class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 124
    return-void

    .line 127
    :cond_2b
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_50

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using system class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 129
    return-void

    .line 132
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private static blacklist debugPrintln(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 93
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAXP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_1c
    return-void
.end method

.method private blacklist loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/validation/SchemaFactory;
    .registers 10
    .param p1, "schemaLanguage"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;

    .line 318
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 338
    :cond_1a
    const/16 v0, 0x50

    :try_start_1c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p3, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_28} :catch_29

    .line 341
    .local v1, "rd":Ljava/io/BufferedReader;
    goto :goto_35

    .line 339
    .end local v1    # "rd":Ljava/io/BufferedReader;
    :catch_29
    move-exception v1

    .line 340
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    .line 343
    .local v1, "rd":Ljava/io/BufferedReader;
    :goto_35
    const/4 v0, 0x0

    .line 344
    .local v0, "factoryClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 348
    .local v2, "resultFactory":Ljavax/xml/validation/SchemaFactory;
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_68

    move-object v0, v3

    .line 352
    nop

    .line 353
    if-eqz v0, :cond_6a

    .line 355
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 356
    .local v3, "hashIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4d

    .line 357
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_58

    .line 365
    goto :goto_37

    .line 370
    :cond_58
    :try_start_58
    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v4

    .line 371
    .local v4, "foundFactory":Ljavax/xml/validation/SchemaFactory;
    invoke-virtual {v4, p1}, Ljavax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z

    move-result v5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_65

    if-eqz v5, :cond_64

    .line 372
    move-object v2, v4

    .line 373
    goto :goto_6a

    .line 371
    .end local v4    # "foundFactory":Ljavax/xml/validation/SchemaFactory;
    :cond_64
    goto :goto_66

    .line 376
    :catch_65
    move-exception v4

    :goto_66
    nop

    .line 377
    .end local v3    # "hashIndex":I
    goto :goto_37

    .line 349
    :catch_68
    move-exception v3

    .line 351
    .local v3, "x":Ljava/io/IOException;
    nop

    .line 383
    .end local v3    # "x":Ljava/io/IOException;
    :cond_6a
    :goto_6a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 385
    return-object v2
.end method

.method private static blacklist which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 392
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 5
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_21

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 408
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 409
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return-object v2
.end method


# virtual methods
.method blacklist createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 259
    :try_start_0
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 261
    :cond_1a
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_25

    .line 262
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    goto :goto_29

    .line 264
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_25
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 265
    .restart local v0    # "clazz":Ljava/lang/Class;
    :goto_29
    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded it from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 266
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 268
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/xml/validation/SchemaFactory;

    if-eqz v2, :cond_53

    .line 269
    move-object v2, v1

    check-cast v2, Ljavax/xml/validation/SchemaFactory;

    return-object v2

    .line 271
    :cond_53
    sget-boolean v2, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v2, :cond_77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not assignable to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_77} :catch_9a
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_77} :catch_98
    .catchall {:try_start_0 .. :try_end_77} :catchall_78

    .line 284
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_77
    goto :goto_96

    .line 281
    :catchall_78
    move-exception v0

    .line 282
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 283
    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v1, :cond_96

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_96
    :goto_96
    const/4 v0, 0x0

    return-object v0

    .line 278
    :catch_98
    move-exception v0

    .line 279
    .local v0, "td":Ljava/lang/ThreadDeath;
    throw v0

    .line 274
    .end local v0    # "td":Ljava/lang/ThreadDeath;
    :catch_9a
    move-exception v0

    .line 275
    .local v0, "vme":Ljava/lang/VirtualMachineError;
    throw v0
.end method

.method public blacklist newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .registers 5
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_4c

    .line 152
    invoke-direct {p0, p1}, Ljavax/xml/validation/SchemaFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 153
    .local v0, "f":Ljavax/xml/validation/SchemaFactory;
    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v1, :cond_4b

    .line 154
    if-eqz v0, :cond_35

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_4b

    .line 157
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find a factory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 160
    :cond_4b
    :goto_4b
    return-object v0

    .line 150
    .end local v0    # "f":Ljavax/xml/validation/SchemaFactory;
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "schemaLanguage == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
