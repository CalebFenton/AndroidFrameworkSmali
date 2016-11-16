.class public final Lsun/reflect/misc/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    #@7
    .line 69
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->isNonPublicProxyClass(Ljava/lang/Class;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 70
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/Class;)V

    #@10
    .line 67
    :cond_0
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x2e

    #@2
    .line 81
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@5
    move-result-object v3

    #@6
    .line 82
    .local v3, "s":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1

    #@8
    .line 83
    const/16 v4, 0x2f

    #@a
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 84
    .local v1, "cname":Ljava/lang/String;
    const-string/jumbo v4, "["

    #@11
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 85
    const/16 v4, 0x5b

    #@19
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@1c
    move-result v4

    #@1d
    add-int/lit8 v0, v4, 0x2

    #@1f
    .line 86
    .local v0, "b":I
    const/4 v4, 0x1

    #@20
    if-le v0, v4, :cond_0

    #@22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@25
    move-result v4

    #@26
    if-ge v0, v4, :cond_0

    #@28
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 90
    .end local v0    # "b":I
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@2f
    move-result v2

    #@30
    .line 91
    .local v2, "i":I
    const/4 v4, -0x1

    #@31
    if-eq v2, v4, :cond_1

    #@33
    .line 92
    const/4 v4, 0x0

    #@34
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    #@3b
    .line 80
    .end local v1    # "cname":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static checkProxyPackageAccess(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 148
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 150
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    const/4 v2, 0x0

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_0

    #@14
    aget-object v0, v3, v2

    #@16
    .line 152
    .local v0, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    #@19
    .line 151
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 146
    .end local v0    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static varargs checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .locals 6
    .param p0, "ccl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v2

    #@4
    .line 170
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1

    #@6
    .line 171
    const/4 v3, 0x0

    #@7
    array-length v4, p1

    #@8
    :goto_0
    if-ge v3, v4, :cond_1

    #@a
    aget-object v1, p1, v3

    #@c
    .line 172
    .local v1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v0

    #@10
    .line 173
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 174
    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    #@19
    .line 171
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 167
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    #@3
    .line 39
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 2
    .param p0, "p"    # Ljava/lang/ClassLoader;
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 109
    move-object v0, p1

    #@1
    .line 111
    .local v0, "acl":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@4
    move-result-object v0

    #@5
    .line 112
    if-ne p0, v0, :cond_1

    #@7
    .line 113
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 115
    :cond_1
    if-nez v0, :cond_0

    #@b
    .line 116
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public static isNonPublicProxyClass(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 186
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 187
    .local v1, "name":Ljava/lang/String;
    const/16 v4, 0x2e

    #@7
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@a
    move-result v0

    #@b
    .line 188
    .local v0, "i":I
    const/4 v4, -0x1

    #@c
    if-eq v0, v4, :cond_1

    #@e
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 193
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    :cond_0
    :goto_1
    return v3

    #@1f
    .line 188
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    #@22
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    #@23
    .line 193
    :cond_2
    const/4 v3, 0x1

    #@24
    goto :goto_1
.end method

.method public static isPackageAccessible(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 103
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 100
    :catch_0
    move-exception v0

    #@6
    .line 101
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method private static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "queryClass"    # Ljava/lang/Class;
    .param p1, "ofClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 51
    :goto_0
    if-eqz p0, :cond_1

    #@2
    .line 52
    if-ne p0, p1, :cond_0

    #@4
    .line 53
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@9
    move-result-object p0

    #@a
    goto :goto_0

    #@b
    .line 57
    :cond_1
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public static needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 3
    .param p0, "from"    # Ljava/lang/ClassLoader;
    .param p1, "to"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 131
    if-eqz p0, :cond_0

    #@4
    if-ne p0, p1, :cond_1

    #@6
    .line 132
    :cond_0
    return v0

    #@7
    .line 134
    :cond_1
    if-nez p1, :cond_2

    #@9
    .line 135
    return v1

    #@a
    .line 137
    :cond_2
    invoke-static {p0, p1}, Lsun/reflect/misc/ReflectUtil;->isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_3

    #@10
    :goto_0
    return v0

    #@11
    :cond_3
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    #@3
    .line 45
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
