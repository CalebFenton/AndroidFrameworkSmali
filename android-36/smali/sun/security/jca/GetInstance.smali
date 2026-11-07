.class public Lsun/security/jca/GetInstance;
.super Ljava/lang/Object;
.source "GetInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/GetInstance$Instance;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static blacklist checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .param p0, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider$Service;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 254
    .local p1, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_3

    .line 255
    return-void

    .line 257
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    return-void

    .line 258
    :cond_a
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class configured for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 156
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 157
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p2}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 158
    .local v1, "firstService":Ljava/security/Provider$Service;
    if-eqz v1, :cond_31

    .line 164
    :try_start_a
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_e} :catch_f

    return-object v2

    .line 165
    :catch_f
    move-exception v2

    .line 166
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 170
    .local v2, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0, p0, p2}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 171
    .local v4, "s":Ljava/security/Provider$Service;
    if-ne v4, v1, :cond_28

    .line 173
    goto :goto_19

    .line 176
    :cond_28
    :try_start_28
    invoke-static {v4, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_28 .. :try_end_2c} :catch_2d

    return-object v3

    .line 177
    :catch_2d
    move-exception v5

    .line 178
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v5

    .line 180
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_19

    .line 181
    :cond_30
    throw v2

    .line 159
    .end local v2    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_31
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-r getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 186
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x0

    .line 188
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 190
    .local v3, "s":Ljava/security/Provider$Service;
    :try_start_15
    invoke-static {v3, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_19} :catch_1a

    return-object v2

    .line 191
    :catch_1a
    move-exception v4

    .line 192
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v4

    .line 194
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_9

    .line 195
    :cond_1d
    if-eqz v1, :cond_20

    .line 196
    throw v1

    .line 198
    :cond_20
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-r getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 212
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p4}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/security/Provider;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 224
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p4}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 206
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 218
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    .registers 6
    .param p0, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider$Service;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 236
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "instance":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2, p1}, Lsun/security/jca/GetInstance;->checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 238
    new-instance v2, Lsun/security/jca/GetInstance$Instance;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance-IA;)V

    return-object v2
.end method

.method public static blacklist getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    .registers 7
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p2, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider$Service;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 243
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "instance":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lsun/security/jca/GetInstance;->checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 245
    new-instance v1, Lsun/security/jca/GetInstance$Instance;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance-IA;)V

    return-object v1
.end method

.method public static blacklist getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 67
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 68
    .local v1, "s":Ljava/security/Provider$Service;
    if-eqz v1, :cond_b

    .line 72
    return-object v1

    .line 69
    :cond_b
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 78
    if-eqz p2, :cond_55

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 81
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 82
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_3c

    .line 85
    invoke-virtual {v0, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 86
    .local v1, "s":Ljava/security/Provider$Service;
    if-eqz v1, :cond_19

    .line 90
    return-object v1

    .line 87
    :cond_19
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_3c
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "p":Ljava/security/Provider;
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 95
    if-eqz p2, :cond_30

    .line 98
    invoke-virtual {p2, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 99
    .local v0, "s":Ljava/security/Provider$Service;
    if-eqz v0, :cond_9

    .line 103
    return-object v0

    .line 100
    :cond_9
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 114
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    .local p1, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 126
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getServices(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/jca/ServiceId;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .line 134
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 135
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
