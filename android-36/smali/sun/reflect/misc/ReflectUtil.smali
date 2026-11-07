.class public final Lsun/reflect/misc/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static greylist checkPackageAccess(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 129
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->isNonPublicProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 131
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/Class;)V

    .line 133
    :cond_10
    return-void
.end method

.method public static greylist checkPackageAccess(Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 142
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 143
    .local v0, "s":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_3a

    .line 144
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "cname":Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 146
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 147
    .local v3, "b":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .end local v3    # "b":I
    :cond_2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 152
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 156
    .end local v1    # "cname":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method public static blacklist checkProxyPackageAccess(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 208
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 209
    .local v0, "s":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 211
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 212
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 213
    .local v4, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 212
    .end local v4    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 217
    :cond_1c
    return-void
.end method

.method public static varargs blacklist checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .registers 8
    .param p0, "ccl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 230
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 231
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 232
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, p1, v2

    .line 233
    .local v3, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 234
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v4}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 235
    invoke-static {v3}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 232
    .end local v3    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 239
    :cond_1c
    return-void
.end method

.method public static blacklist ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 7
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 61
    .local p0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_1f

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 62
    move v0, p3

    .line 63
    .local v0, "mods":I
    and-int/lit8 v0, v0, -0x5

    .line 64
    or-int/lit8 v0, v0, 0x1

    .line 69
    invoke-static {p0, p1, p2, v0}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 78
    and-int/lit8 v0, v0, -0x2

    .line 79
    :try_start_12
    invoke-static {p0, p1, p2, v0}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_15} :catch_16

    .line 87
    return-void

    .line 88
    :catch_16
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {p0, p1}, Lsun/reflect/misc/ReflectUtil;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 94
    return-void

    .line 96
    :cond_1e
    throw v1

    .line 100
    .end local v0    # "mods":I
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_1f
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 105
    return-void
.end method

.method public static blacklist forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .registers 4
    .param p0, "p"    # Ljava/lang/ClassLoader;
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 170
    move-object v0, p1

    .line 172
    .local v0, "acl":Ljava/lang/ClassLoader;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 173
    if-ne p0, v0, :cond_9

    .line 174
    const/4 v1, 0x1

    return v1

    .line 176
    :cond_9
    if-nez v0, :cond_1

    .line 177
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isNonPublicProxyClass(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 254
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 256
    .local v1, "i":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_13

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_13
    const-string v2, ""

    .line 262
    .local v2, "pkg":Ljava/lang/String;
    :goto_15
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v3, 0x1

    :cond_22
    return v3
.end method

.method public static greylist isPackageAccessible(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 160
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_6

    .line 163
    nop

    .line 164
    const/4 v0, 0x1

    return v0

    .line 161
    :catch_6
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private static greylist isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_1
    if-eqz p0, :cond_c

    .line 111
    if-ne p0, p1, :cond_7

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 116
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .registers 4
    .param p0, "from"    # Ljava/lang/ClassLoader;
    .param p1, "to"    # Ljava/lang/ClassLoader;

    .line 192
    if-eqz p0, :cond_f

    if-ne p0, p1, :cond_5

    goto :goto_f

    .line 195
    :cond_5
    const/4 v0, 0x1

    if-nez p1, :cond_9

    .line 196
    return v0

    .line 198
    :cond_9
    invoke-static {p0, p1}, Lsun/reflect/misc/ReflectUtil;->isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 193
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
