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
.method constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist findClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static greylist findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 65
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 68
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, p0

    .line 71
    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    :cond_19
    if-nez p1, :cond_20

    .line 88
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 91
    :cond_20
    :try_start_20
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception v0

    if-eqz p2, :cond_3d

    .line 95
    const-class p2, Lorg/apache/xalan/extensions/ObjectFactory;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    if-nez p2, :cond_35

    .line 97
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_3b

    :cond_35
    if-eq p1, p2, :cond_3c

    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_3b
    return-object p0

    .line 102
    :cond_3c
    throw v0

    .line 105
    :cond_3d
    throw v0
.end method
