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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p1, "subClass"    # Ljava/lang/Class;
    .param p2, "superClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    if-nez p2, :cond_0

    #@2
    .line 255
    return-void

    #@3
    .line 257
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 258
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@b
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "class configured for "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ": "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 260
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 260
    const-string/jumbo v2, " not a "

    #@31
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 260
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 258
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 253
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v3

    #@4
    .line 157
    .local v3, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v3, p0, p2}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@7
    move-result-object v2

    #@8
    .line 158
    .local v2, "firstService":Ljava/security/Provider$Service;
    if-nez v2, :cond_0

    #@a
    .line 159
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    #@c
    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v7

    #@15
    const-string/jumbo v8, " "

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    const-string/jumbo v8, " not available"

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 159
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v6

    #@2f
    .line 164
    :cond_0
    :try_start_0
    invoke-static {v2, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-object v6

    #@33
    return-object v6

    #@34
    .line 165
    :catch_0
    move-exception v0

    #@35
    .line 166
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    #@36
    .line 170
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3, p0, p2}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@39
    move-result-object v6

    #@3a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v5

    #@3e
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_2

    #@44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Ljava/security/Provider$Service;

    #@4a
    .line 171
    .local v4, "s":Ljava/security/Provider$Service;
    if-eq v4, v2, :cond_1

    #@4c
    .line 176
    :try_start_1
    invoke-static {v4, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@4f
    move-result-object v6

    #@50
    return-object v6

    #@51
    .line 177
    :catch_1
    move-exception v0

    #@52
    .line 178
    move-object v1, v0

    #@53
    goto :goto_0

    #@54
    .line 181
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_2
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v4

    #@4
    .line 187
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x0

    #@5
    .line 188
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/security/Provider$Service;

    #@15
    .line 190
    .local v2, "s":Ljava/security/Provider$Service;
    :try_start_0
    invoke-static {v2, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v5

    #@19
    return-object v5

    #@1a
    .line 191
    :catch_0
    move-exception v0

    #@1b
    .line 192
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    #@1c
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    #@1d
    .line 195
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_0
    if-eqz v1, :cond_1

    #@1f
    .line 196
    throw v1

    #@20
    .line 198
    :cond_1
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@22
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    const-string/jumbo v7, " "

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    const-string/jumbo v7, " not available"

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    .line 198
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@44
    throw v5
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {p0, p2, p4}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {p0, p2, p4}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    .locals 4
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 236
    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 237
    .local v0, "instance":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-static {p0, v1, p1}, Lsun/security/jca/GetInstance;->checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V

    #@c
    .line 238
    new-instance v1, Lsun/security/jca/GetInstance$Instance;

    #@e
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v2, v0, v3}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance$Instance;)V

    #@15
    return-object v1
.end method

.method public static getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    .locals 4
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-virtual {p0, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "instance":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, v1, p1}, Lsun/security/jca/GetInstance;->checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V

    #@b
    .line 245
    new-instance v1, Lsun/security/jca/GetInstance$Instance;

    #@d
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-direct {v1, v2, v0, v3}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance$Instance;)V

    #@15
    return-object v1
.end method

.method public static getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    .line 67
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@7
    move-result-object v1

    #@8
    .line 68
    .local v1, "s":Ljava/security/Provider$Service;
    if-nez v1, :cond_0

    #@a
    .line 69
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@c
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, " "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " not available"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 69
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 72
    :cond_0
    return-object v1
.end method

.method public static getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 79
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "missing provider"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 81
    :cond_1
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@18
    move-result-object v0

    #@19
    .line 82
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@1b
    .line 83
    new-instance v2, Ljava/security/NoSuchProviderException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "no such provider: "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 85
    :cond_2
    invoke-virtual {v0, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@38
    move-result-object v1

    #@39
    .line 86
    .local v1, "s":Ljava/security/Provider$Service;
    if-nez v1, :cond_3

    #@3b
    .line 87
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "no such algorithm: "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 88
    const-string/jumbo v4, " for provider "

    #@50
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v2

    #@60
    .line 90
    :cond_3
    return-object v1
.end method

.method public static getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    if-nez p2, :cond_0

    #@2
    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "missing provider"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 98
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@e
    move-result-object v0

    #@f
    .line 99
    .local v0, "s":Ljava/security/Provider$Service;
    if-nez v0, :cond_1

    #@11
    .line 100
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "no such algorithm: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 101
    const-string/jumbo v3, " for provider "

    #@26
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 101
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 103
    :cond_1
    return-object v0
.end method

.method public static getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 125
    .local p1, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    .line 126
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static getServices(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
