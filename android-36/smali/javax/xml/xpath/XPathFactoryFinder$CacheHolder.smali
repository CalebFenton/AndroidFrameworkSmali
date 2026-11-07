.class Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/xpath/XPathFactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheHolder"
.end annotation


# static fields
.field private static blacklist cacheProps:Ljava/util/Properties;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetcacheProps()Ljava/util/Properties;
    .registers 1

    sget-object v0, Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;->cacheProps:Ljava/util/Properties;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 64
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;->cacheProps:Ljava/util/Properties;

    .line 67
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "javah":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jaxp.properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "configFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 71
    invoke-static {}, Ljavax/xml/xpath/XPathFactoryFinder;->-$$Nest$sfgetdebug()Z

    move-result v3

    if-eqz v3, :cond_59

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read properties file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/xpath/XPathFactoryFinder;->-$$Nest$smdebugPrintln(Ljava/lang/String;)V

    .line 72
    :cond_59
    :try_start_59
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_71

    .line 73
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_5e
    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_67

    .line 74
    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_71

    .line 78
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_7b

    .line 72
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v4

    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v5

    :try_start_6d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "javah":Ljava/lang/String;
    .end local v1    # "configFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :goto_70
    throw v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_71

    .line 74
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "javah":Ljava/lang/String;
    .restart local v1    # "configFile":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :catch_71
    move-exception v3

    .line 75
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljavax/xml/xpath/XPathFactoryFinder;->-$$Nest$sfgetdebug()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 76
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0    # "javah":Ljava/lang/String;
    .end local v1    # "configFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_7b
    :goto_7b
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
