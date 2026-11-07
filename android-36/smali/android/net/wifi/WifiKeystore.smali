.class public final Landroid/net/wifi/WifiKeystore;
.super Ljava/lang/Object;
.source "WifiKeystore.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WifiKeystore"

.field private static final blacklist sPrimaryDbName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->supplicantCanAccessBlobstore()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "WifiBlobstore"

    goto :goto_b

    :cond_9
    const-string v0, "LegacyKeystore"

    :goto_b
    sput-object v0, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static whitelist get(Ljava/lang/String;)[B
    .registers 8
    .param p0, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 88
    const-string v0, "Failed to get blob."

    const-string v1, "WifiKeystore"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 90
    .local v2, "identity":J
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get blob. alias="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", primaryDb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/net/wifi/WifiBlobStore;->get(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_32
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_32} :catch_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_4e
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 92
    .local v4, "blob":[B
    if-eqz v4, :cond_39

    .line 93
    nop

    .line 104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    return-object v4

    .line 95
    :cond_39
    :try_start_39
    const-string v5, "Searching for blob in Legacy Keystore"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v5

    const/16 v6, 0x3f2

    invoke-interface {v5, p0, v6}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_48
    .catch Landroid/os/ServiceSpecificException; {:try_start_39 .. :try_end_48} :catch_54
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_4e
    .catchall {:try_start_39 .. :try_end_48} :catchall_4c

    .line 104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return-object v0

    .line 104
    .end local v4    # "blob":[B
    :catchall_4c
    move-exception v0

    goto :goto_66

    .line 101
    :catch_4e
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_5e

    .line 97
    :catch_54
    move-exception v4

    .line 98
    .local v4, "e":Landroid/os/ServiceSpecificException;
    iget v5, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_5d

    .line 99
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_4c

    .line 104
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    :cond_5d
    nop

    :goto_5e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    nop

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 104
    :goto_66
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    throw v0
.end method

.method public static whitelist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/wifi/WifiBlobStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "blobStoreAliases":[Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-interface {v3, p0, v4}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "legacyAliases":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    array-length v5, v3

    if-ge v4, v5, :cond_29

    .line 157
    aget-object v5, v3, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 160
    .end local v4    # "i":I
    :cond_29
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v4, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 164
    .local v5, "uniqueAliasArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_4e
    .catchall {:try_start_4 .. :try_end_48} :catchall_4c

    .line 168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return-object v6

    .line 168
    .end local v2    # "blobStoreAliases":[Ljava/lang/String;
    .end local v3    # "legacyAliases":[Ljava/lang/String;
    .end local v4    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "uniqueAliasArray":[Ljava/lang/String;
    :catchall_4c
    move-exception v2

    goto :goto_5f

    .line 165
    :catch_4e
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v3, "WifiKeystore"

    const-string v4, "Failed to list blobs."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    .line 168
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    nop

    .line 170
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    return-object v2

    .line 168
    :goto_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    throw v2
.end method

.method public static whitelist put(Ljava/lang/String;[B)Z
    .registers 7
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 60
    const-string v0, "WifiKeystore"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 62
    .local v1, "identity":J
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "put blob. alias="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", primaryDb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->supplicantCanAccessBlobstore()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 64
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Landroid/net/wifi/WifiBlobStore;->put(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_4c
    .catchall {:try_start_6 .. :try_end_37} :catchall_4a

    .line 73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return v0

    .line 66
    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-interface {v3, p0, v4, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_4c
    .catchall {:try_start_3b .. :try_end_44} :catchall_4a

    .line 67
    nop

    .line 73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    const/4 v0, 0x1

    return v0

    .line 73
    :catchall_4a
    move-exception v0

    goto :goto_58

    .line 69
    :catch_4c
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string v4, "Failed to put blob."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_4a

    .line 71
    nop

    .line 73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw v0
.end method

.method public static whitelist remove(Ljava/lang/String;)Z
    .registers 10
    .param p0, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 118
    const-string v0, "Failed to remove blob."

    const-string v1, "WifiKeystore"

    const/4 v2, 0x0

    .line 119
    .local v2, "blobStoreSuccess":Z
    const/4 v3, 0x0

    .line 120
    .local v3, "legacyKsSuccess":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 122
    .local v4, "identity":J
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove blob. alias="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", primaryDb="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/net/wifi/WifiBlobStore;->remove(Ljava/lang/String;)Z

    move-result v6

    move v2, v6

    .line 125
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v6

    const/16 v7, 0x3f2

    invoke-interface {v6, p0, v7}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_3f} :catch_49
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3f} :catch_43
    .catchall {:try_start_a .. :try_end_3f} :catchall_41

    .line 126
    const/4 v3, 0x1

    goto :goto_52

    .line 134
    :catchall_41
    move-exception v0

    goto :goto_80

    .line 131
    :catch_43
    move-exception v6

    .line 132
    .local v6, "e":Ljava/lang/Exception;
    :try_start_44
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    nop

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_53

    .line 127
    :catch_49
    move-exception v6

    .line 128
    .local v6, "e":Landroid/os/ServiceSpecificException;
    iget v7, v6, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v8, 0x7

    if-eq v7, v8, :cond_52

    .line 129
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_41

    .line 134
    .end local v6    # "e":Landroid/os/ServiceSpecificException;
    :cond_52
    :goto_52
    nop

    :goto_53
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    nop

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removal status: wifiBlobStore="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", legacyKeystore="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez v2, :cond_7e

    if-eqz v3, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 v0, 0x0

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 v0, 0x1

    :goto_7f
    return v0

    .line 134
    :goto_80
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw v0
.end method
