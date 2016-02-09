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
.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static final W3C_XML_SCHEMA10_NS_URI:Ljava/lang/String; = "http://www.w3.org/XML/XMLSchema/v1.0"

.field private static final W3C_XML_SCHEMA11_NS_URI:Ljava/lang/String; = "http://www.w3.org/XML/XMLSchema/v1.1"

.field private static debug:Z


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 49
    sput-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@3
    .line 82
    const-string/jumbo v2, "jaxp.debug"

    #@6
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 84
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    const-string/jumbo v2, "false"

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    :cond_0
    :goto_0
    sput-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@17
    .line 388
    const-class v1, Ljavax/xml/validation/SchemaFactory;

    #@19
    sput-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@1b
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "META-INF/services/"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    sget-object v2, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    sput-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@37
    .line 42
    return-void

    #@38
    .line 84
    :cond_1
    const/4 v1, 0x1

    #@39
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput-object p1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@5
    .line 116
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 117
    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugDisplayClassLoader()V

    #@c
    .line 114
    :cond_0
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 14
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 172
    new-instance v11, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    sget-object v12, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@8
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v12

    #@c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v11

    #@10
    const-string/jumbo v12, ":"

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 176
    .local v3, "propertyName":Ljava/lang/String;
    :try_start_0
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@21
    if-eqz v11, :cond_0

    #@23
    new-instance v11, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v12, "Looking up system property \'"

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v11

    #@33
    const-string/jumbo v12, "\'"

    #@36
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v11

    #@3a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@41
    .line 177
    :cond_0
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 178
    .local v4, "r":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4a
    move-result v11

    #@4b
    if-lez v11, :cond_2

    #@4d
    .line 179
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@4f
    if-eqz v11, :cond_1

    #@51
    new-instance v11, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v12, "The value is \'"

    #@59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v11

    #@61
    const-string/jumbo v12, "\'"

    #@64
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v11

    #@68
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v11

    #@6c
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@6f
    .line 180
    :cond_1
    invoke-virtual {p0, v4}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    #@72
    move-result-object v7

    #@73
    .line 181
    .local v7, "sf":Ljavax/xml/validation/SchemaFactory;
    if-eqz v7, :cond_3

    #@75
    return-object v7

    #@76
    .line 183
    .end local v7    # "sf":Ljavax/xml/validation/SchemaFactory;
    :cond_2
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@78
    if-eqz v11, :cond_3

    #@7a
    .line 184
    const-string/jumbo v11, "The property is undefined."

    #@7d
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    .line 204
    .end local v4    # "r":Ljava/lang/String;
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;->-get0()Ljava/util/Properties;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 205
    .local v2, "factoryClassName":Ljava/lang/String;
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@8a
    if-eqz v11, :cond_4

    #@8c
    new-instance v11, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v12, "found "

    #@94
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v11

    #@98
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v11

    #@9c
    const-string/jumbo v12, " in $java.home/jaxp.properties"

    #@9f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v11

    #@a3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@aa
    .line 207
    :cond_4
    if-eqz v2, :cond_5

    #@ac
    .line 208
    invoke-virtual {p0, v2}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    #@af
    move-result-object v7

    #@b0
    .line 209
    .restart local v7    # "sf":Ljavax/xml/validation/SchemaFactory;
    if-eqz v7, :cond_5

    #@b2
    .line 210
    return-object v7

    #@b3
    .line 195
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v7    # "sf":Ljavax/xml/validation/SchemaFactory;
    :catch_0
    move-exception v8

    #@b4
    .line 196
    .local v8, "t":Ljava/lang/Throwable;
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@b6
    if-eqz v11, :cond_3

    #@b8
    .line 197
    new-instance v11, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v12, "failed to look up system property \'"

    #@c0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v11

    #@c4
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v11

    #@c8
    const-string/jumbo v12, "\'"

    #@cb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v11

    #@cf
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v11

    #@d3
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@d6
    .line 198
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    #@d9
    goto :goto_0

    #@da
    .line 192
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    #@db
    .line 193
    .local v9, "td":Ljava/lang/ThreadDeath;
    throw v9

    #@dc
    .line 188
    .end local v9    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v10

    #@dd
    .line 189
    .local v10, "vme":Ljava/lang/VirtualMachineError;
    throw v10

    #@de
    .line 213
    .end local v10    # "vme":Ljava/lang/VirtualMachineError;
    :catch_3
    move-exception v1

    #@df
    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@e1
    if-eqz v11, :cond_5

    #@e3
    .line 215
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@e6
    .line 220
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->createServiceFileIterator()Ljava/lang/Iterable;

    #@e9
    move-result-object v11

    #@ea
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ed
    move-result-object v6

    #@ee
    .local v6, "resource$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@f1
    move-result v11

    #@f2
    if-eqz v11, :cond_8

    #@f4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f7
    move-result-object v5

    #@f8
    check-cast v5, Ljava/net/URL;

    #@fa
    .line 221
    .local v5, "resource":Ljava/net/URL;
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@fc
    if-eqz v11, :cond_7

    #@fe
    new-instance v11, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v12, "looking into "

    #@106
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v11

    #@10a
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v11

    #@10e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v11

    #@112
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@115
    .line 223
    :cond_7
    :try_start_2
    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@118
    move-result-object v11

    #@119
    .line 224
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@11c
    move-result-object v12

    #@11d
    .line 223
    invoke-direct {p0, p1, v11, v12}, Ljavax/xml/validation/SchemaFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/validation/SchemaFactory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    #@120
    move-result-object v7

    #@121
    .line 225
    .restart local v7    # "sf":Ljavax/xml/validation/SchemaFactory;
    if-eqz v7, :cond_6

    #@123
    return-object v7

    #@124
    .line 226
    .end local v7    # "sf":Ljavax/xml/validation/SchemaFactory;
    :catch_4
    move-exception v0

    #@125
    .line 227
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@127
    if-eqz v11, :cond_6

    #@129
    .line 228
    new-instance v11, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v12, "failed to read "

    #@131
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v11

    #@135
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v11

    #@139
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v11

    #@13d
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@140
    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@143
    goto :goto_1

    #@144
    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "resource":Ljava/net/URL;
    :cond_8
    const-string/jumbo v11, "http://www.w3.org/2001/XMLSchema"

    #@147
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14a
    move-result v11

    #@14b
    if-nez v11, :cond_9

    #@14d
    const-string/jumbo v11, "http://www.w3.org/XML/XMLSchema/v1.0"

    #@150
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@153
    move-result v11

    #@154
    if-eqz v11, :cond_b

    #@156
    .line 236
    :cond_9
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@158
    if-eqz v11, :cond_a

    #@15a
    const-string/jumbo v11, "attempting to use the platform default XML Schema 1.0 validator"

    #@15d
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@160
    .line 237
    :cond_a
    const-string/jumbo v11, "org.apache.xerces.jaxp.validation.XMLSchemaFactory"

    #@163
    invoke-virtual {p0, v11}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    #@166
    move-result-object v11

    #@167
    return-object v11

    #@168
    .line 239
    :cond_b
    const-string/jumbo v11, "http://www.w3.org/XML/XMLSchema/v1.1"

    #@16b
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v11

    #@16f
    if-eqz v11, :cond_d

    #@171
    .line 240
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@173
    if-eqz v11, :cond_c

    #@175
    const-string/jumbo v11, "attempting to use the platform default XML Schema 1.1 validator"

    #@178
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@17b
    .line 241
    :cond_c
    const-string/jumbo v11, "org.apache.xerces.jaxp.validation.XMLSchema11Factory"

    #@17e
    invoke-virtual {p0, v11}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    #@181
    move-result-object v11

    #@182
    return-object v11

    #@183
    .line 244
    :cond_d
    sget-boolean v11, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@185
    if-eqz v11, :cond_e

    #@187
    const-string/jumbo v11, "all things were tried, but none was found. bailing out."

    #@18a
    invoke-static {v11}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@18d
    .line 245
    :cond_e
    return-object v13
.end method

.method private createServiceFileIterator()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    iget-object v3, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 294
    const-class v3, Ljavax/xml/validation/SchemaFactoryFinder;

    #@6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 295
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-object v3, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 298
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_0
    iget-object v3, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@17
    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@1c
    move-result-object v2

    #@1d
    .line 299
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@1f
    if-eqz v3, :cond_1

    #@21
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 304
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    #@2a
    move-result-object v3

    #@2b
    return-object v3

    #@2c
    .line 300
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "no "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, " file was found"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    goto :goto_0

    #@4d
    .line 305
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v1

    #@4e
    .line 306
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@50
    if-eqz v3, :cond_3

    #@52
    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "failed to enumerate resources "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@6b
    .line 308
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@6e
    .line 310
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@71
    move-result-object v3

    #@72
    return-object v3
.end method

.method private debugDisplayClassLoader()V
    .locals 2

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "using thread context class loader ("

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ") for search"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@2c
    .line 124
    return-void

    #@2d
    .line 127
    :cond_0
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@2f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@32
    move-result-object v1

    #@33
    if-ne v0, v1, :cond_1

    #@35
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "using system class loader ("

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string/jumbo v1, ") for search"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@55
    .line 129
    return-void

    #@56
    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v1, "using class loader ("

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string/jumbo v1, ") for search"

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@76
    .line 121
    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "JAXP: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 92
    :cond_0
    return-void
.end method

.method private loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/validation/SchemaFactory;
    .locals 12
    .param p1, "schemaLanguage"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/16 v11, 0x50

    #@2
    const/4 v10, 0x0

    #@3
    .line 318
    sget-boolean v8, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@5
    if-eqz v8, :cond_0

    #@7
    new-instance v8, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v9, "Reading "

    #@f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@1e
    .line 338
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    #@20
    new-instance v8, Ljava/io/InputStreamReader;

    #@22
    const-string/jumbo v9, "UTF-8"

    #@25
    invoke-direct {v8, p3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@28
    const/16 v9, 0x50

    #@2a
    invoke-direct {v5, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 343
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_0
    const/4 v1, 0x0

    #@2e
    .line 344
    .local v1, "factoryClassName":Ljava/lang/String;
    const/4 v6, 0x0

    #@2f
    .line 348
    .end local v1    # "factoryClassName":Ljava/lang/String;
    .local v6, "resultFactory":Ljavax/xml/validation/SchemaFactory;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    move-result-object v1

    #@33
    .line 353
    .local v1, "factoryClassName":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@35
    .line 355
    const/16 v8, 0x23

    #@37
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    #@3a
    move-result v3

    #@3b
    .line 356
    .local v3, "hashIndex":I
    const/4 v8, -0x1

    #@3c
    if-eq v3, v8, :cond_2

    #@3e
    .line 357
    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 361
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_1

    #@4c
    .line 370
    :try_start_2
    invoke-virtual {p0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    #@4f
    move-result-object v2

    #@50
    .line 371
    .local v2, "foundFactory":Ljavax/xml/validation/SchemaFactory;
    invoke-virtual {v2, p1}, Ljavax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_1

    #@56
    .line 372
    move-object v6, v2

    #@57
    .line 383
    .end local v1    # "factoryClassName":Ljava/lang/String;
    .end local v2    # "foundFactory":Ljavax/xml/validation/SchemaFactory;
    .end local v3    # "hashIndex":I
    .end local v6    # "resultFactory":Ljavax/xml/validation/SchemaFactory;
    :cond_3
    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5a
    .line 385
    return-object v6

    #@5b
    .line 339
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    #@5c
    .line 340
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    #@5e
    new-instance v8, Ljava/io/InputStreamReader;

    #@60
    invoke-direct {v8, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@63
    invoke-direct {v5, v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@66
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    goto :goto_0

    #@67
    .line 349
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "resultFactory":Ljavax/xml/validation/SchemaFactory;
    :catch_1
    move-exception v7

    #@68
    .local v7, "x":Ljava/io/IOException;
    goto :goto_2

    #@69
    .line 376
    .end local v7    # "x":Ljava/io/IOException;
    .restart local v1    # "factoryClassName":Ljava/lang/String;
    .restart local v3    # "hashIndex":I
    :catch_2
    move-exception v4

    #@6a
    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 6
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const/16 v4, 0x2e

    #@8
    const/16 v5, 0x2f

    #@a
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ".class"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 406
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_0

    #@1f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@22
    move-result-object p1

    #@23
    .line 408
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@26
    move-result-object v1

    #@27
    .line 409
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_1

    #@29
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    :cond_1
    return-object v2
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 259
    :try_start_0
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "instantiating "

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@1c
    .line 261
    :cond_0
    iget-object v5, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 262
    iget-object v5, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@25
    move-result-object v0

    #@26
    .line 265
    .local v0, "clazz":Ljava/lang/Class;
    :goto_0
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@28
    if-eqz v5, :cond_1

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "loaded it from "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@45
    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    .line 268
    .local v1, "o":Ljava/lang/Object;
    instance-of v5, v1, Ljavax/xml/validation/SchemaFactory;

    #@4b
    if-eqz v5, :cond_3

    #@4d
    .line 269
    check-cast v1, Ljavax/xml/validation/SchemaFactory;

    #@4f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@50
    .line 264
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@53
    move-result-object v0

    #@54
    .restart local v0    # "clazz":Ljava/lang/Class;
    goto :goto_0

    #@55
    .line 271
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_3
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@57
    if-eqz v5, :cond_4

    #@59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    const-string/jumbo v6, " is not assignable to "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    sget-object v6, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@6b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@7a
    .line 285
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_1
    return-object v7

    #@7b
    .line 281
    :catch_0
    move-exception v2

    #@7c
    .line 282
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v6, "failed to instantiate "

    #@84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@93
    .line 283
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@95
    if-eqz v5, :cond_4

    #@97
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@9a
    goto :goto_1

    #@9b
    .line 278
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    #@9c
    .line 279
    .local v3, "td":Ljava/lang/ThreadDeath;
    throw v3

    #@9d
    .line 274
    .end local v3    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v4

    #@9e
    .line 275
    .local v4, "vme":Ljava/lang/VirtualMachineError;
    throw v4
.end method

.method public newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 3
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    if-nez p1, :cond_0

    #@2
    .line 150
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "schemaLanguage == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 152
    :cond_0
    invoke-direct {p0, p1}, Ljavax/xml/validation/SchemaFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    #@e
    move-result-object v0

    #@f
    .line 153
    .local v0, "f":Ljavax/xml/validation/SchemaFactory;
    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 154
    if-eqz v0, :cond_2

    #@15
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "factory \'"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljavax/xml/validation/SchemaFactory;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, "\' was found for "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@3f
    .line 160
    :cond_1
    :goto_0
    return-object v0

    #@40
    .line 157
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "unable to find a factory for "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@57
    goto :goto_0
.end method
