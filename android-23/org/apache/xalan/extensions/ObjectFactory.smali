.class Lorg/apache/xalan/extensions/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v5

    #@4
    .line 67
    .local v5, "security":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_1

    #@6
    .line 68
    :try_start_0
    const-string/jumbo v7, "."

    #@9
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    .line 69
    .local v2, "lastDot":I
    move-object v3, p0

    #@e
    .line 70
    .local v3, "packageName":Ljava/lang/String;
    const/4 v7, -0x1

    #@f
    if-eq v2, v7, :cond_0

    #@11
    const/4 v7, 0x0

    #@12
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 71
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 78
    .end local v2    # "lastDot":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    #@1b
    .line 88
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1e
    move-result-object v4

    #@1f
    .line 110
    .local v4, "providerClass":Ljava/lang/Class;
    :goto_0
    return-object v4

    #@20
    .line 73
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@21
    .line 74
    .local v1, "e":Ljava/lang/SecurityException;
    throw v1

    #@22
    .line 91
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    move-result-object v4

    #@26
    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    #@27
    .line 92
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_1
    move-exception v6

    #@28
    .line 93
    .local v6, "x":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_5

    #@2a
    .line 95
    const-class v7, Lorg/apache/xalan/extensions/ObjectFactory;

    #@2c
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2f
    move-result-object v0

    #@30
    .line 96
    .local v0, "current":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    #@32
    .line 97
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@35
    move-result-object v4

    #@36
    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    #@37
    .line 98
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_3
    if-eq p1, v0, :cond_4

    #@39
    .line 99
    move-object p1, v0

    #@3a
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3d
    move-result-object v4

    #@3e
    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    #@3f
    .line 102
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_4
    throw v6

    #@40
    .line 105
    .end local v0    # "current":Ljava/lang/ClassLoader;
    :cond_5
    throw v6
.end method
