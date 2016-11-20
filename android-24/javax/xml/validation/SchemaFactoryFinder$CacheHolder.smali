.class Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/validation/SchemaFactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheHolder"
.end annotation


# static fields
.field private static cacheProps:Ljava/util/Properties;


# direct methods
.method static synthetic -get0()Ljava/util/Properties;
    .locals 1

    #@0
    sget-object v0, Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;->cacheProps:Ljava/util/Properties;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 57
    new-instance v4, Ljava/util/Properties;

    #@2
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    #@5
    sput-object v4, Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;->cacheProps:Ljava/util/Properties;

    #@7
    .line 60
    const-string/jumbo v4, "java.home"

    #@a
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 61
    .local v3, "javah":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "lib"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, "jaxp.properties"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 62
    .local v0, "configFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@37
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3a
    .line 63
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_1

    #@40
    .line 64
    invoke-static {}, Ljavax/xml/validation/SchemaFactoryFinder;->-get0()Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_0

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Read properties file "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v4}, Ljavax/xml/validation/SchemaFactoryFinder;->-wrap0(Ljava/lang/String;)V

    #@5d
    .line 66
    :cond_0
    :try_start_0
    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder$CacheHolder;->cacheProps:Ljava/util/Properties;

    #@5f
    new-instance v5, Ljava/io/FileInputStream;

    #@61
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@64
    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 55
    :cond_1
    :goto_0
    return-void

    #@68
    .line 67
    :catch_0
    move-exception v1

    #@69
    .line 68
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljavax/xml/validation/SchemaFactoryFinder;->-get0()Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_1

    #@6f
    .line 69
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    #@72
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
