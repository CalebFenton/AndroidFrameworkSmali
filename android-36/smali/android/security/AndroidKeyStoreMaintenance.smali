.class public Landroid/security/AndroidKeyStoreMaintenance;
.super Ljava/lang/Object;
.source "AndroidKeyStoreMaintenance.java"


# static fields
.field public static final blacklist INVALID_ARGUMENT:I = 0x14

.field public static final blacklist KEY_NOT_FOUND:I = 0x7

.field public static final blacklist PERMISSION_DENIED:I = 0x6

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreMaintenance"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearNamespace(IJ)I
    .registers 6
    .param p0, "domain"    # I
    .param p1, "namespace"    # J

    .line 140
    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 142
    :try_start_5
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->clearNamespace(IJ)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 143
    const/4 v0, 0x0

    return v0

    .line 147
    :catch_e
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v0, 0x4

    return v0

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "clearNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist deleteAllKeys()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 217
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 219
    :try_start_3
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->deleteAllKeys()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_c

    .line 226
    nop

    .line 227
    return-void

    .line 223
    :catch_c
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/security/KeyStoreException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v3, "Keystore error while trying to delete all keys."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_17
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    const-string v3, "Failure to connect to Keystore while trying to delete all keys."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static blacklist getAllAppUidsAffectedBySid(IJ)[J
    .registers 7
    .param p0, "userId"    # I
    .param p1, "userSecureId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 199
    :try_start_3
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->getAppUidsAffectedBySid(IJ)[J

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_b} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    .line 203
    :catch_c
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/security/KeyStoreException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v3, "Keystore error while trying to get apps affected by SID."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 200
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_17
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    const-string v3, "Failure to connect to Keystore while trying to get apps affected by SID."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static blacklist getService()Landroid/security/maintenance/IKeystoreMaintenance;
    .registers 1

    .line 43
    nop

    .line 44
    const-string v0, "android.security.maintenance"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist initUserSuperKeys(I[BZ)I
    .registers 6
    .param p0, "userId"    # I
    .param p1, "password"    # [B
    .param p2, "allowExisting"    # Z

    .line 79
    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 81
    :try_start_5
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->initUserSuperKeys(I[BZ)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 82
    const/4 v0, 0x0

    return v0

    .line 86
    :catch_e
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v0, 0x4

    return v0

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "initUserSuperKeys failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I
    .registers 5
    .param p0, "source"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "destination"    # Landroid/system/keystore2/KeyDescriptor;

    .line 172
    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 174
    :try_start_5
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 175
    const/4 v0, 0x0

    return v0

    .line 179
    :catch_e
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v0, 0x4

    return v0

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "migrateKeyNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserAdded(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 55
    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 57
    :try_start_5
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserAdded(I)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 58
    const/4 v0, 0x0

    return v0

    .line 62
    :catch_e
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v0, 0x4

    return v0

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 60
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserAdded failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserLskfRemoved(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 122
    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 124
    :try_start_5
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserLskfRemoved(I)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 125
    const/4 v0, 0x0

    return v0

    .line 129
    :catch_e
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v0, 0x4

    return v0

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserLskfRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserRemoved(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 100
    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 102
    :try_start_5
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserRemoved(I)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 103
    const/4 v0, 0x0

    return v0

    .line 107
    :catch_e
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v0, 0x4

    return v0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method
