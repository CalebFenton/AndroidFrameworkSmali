.class final Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
.super Ljava/util/Properties;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PropertiesWithNonOverrideableDefaults"
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Properties;)V
    .registers 2
    .param p1, "defaults"    # Ljava/util/Properties;

    .line 941
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 942
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 947
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_27

    .line 950
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to modify property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2d

    .line 952
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 948
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_27
    :goto_27
    :try_start_27
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v0

    .line 946
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 959
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2c

    .line 962
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to modify property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_32

    monitor-exit p0

    return-object v0

    .line 960
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    .line 958
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;*>;"
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 970
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2c

    .line 973
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to modify property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_32

    monitor-exit p0

    return-object v0

    .line 971
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    .line 969
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 981
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2c

    .line 984
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to modify property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_32

    monitor-exit p0

    return-object v0

    .line 982
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    .line 980
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to set property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" to value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 998
    :cond_35
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    .line 1003
    :try_start_1
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults$$ExternalSyntheticLambda0;-><init>(Ljava/lang/System$PropertiesWithNonOverrideableDefaults;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1004
    monitor-exit p0

    return-void

    .line 1002
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    .end local p1    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1008
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2c

    .line 1011
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to modify property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_32

    monitor-exit p0

    return-object v0

    .line 1009
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    .line 1007
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 1019
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to remove property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x0

    return-object v0

    .line 1024
    :cond_26
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1030
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_32

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_32

    .line 1033
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to replace property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_38

    monitor-exit p0

    return-object v0

    .line 1031
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_32
    :goto_32
    :try_start_32
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v0

    .line 1029
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1040
    :try_start_1
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2d

    .line 1043
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to replace property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_33

    .line 1045
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1041
    .end local p0    # "this":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_33

    monitor-exit p0

    return v0

    .line 1039
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "oldValue":Ljava/lang/Object;
    .end local p3    # "newValue":Ljava/lang/Object;
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method
