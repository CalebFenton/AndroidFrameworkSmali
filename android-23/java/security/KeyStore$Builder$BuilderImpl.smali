.class Ljava/security/KeyStore$Builder$BuilderImpl;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final fileForLoad:Ljava/io/File;

.field private isGetKeyStore:Z

.field private keyStore:Ljava/security/KeyStore;

.field private lastException:Ljava/security/KeyStoreException;

.field private protParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private final providerForKeyStore:Ljava/security/Provider;

.field private final typeForKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "pp"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 912
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    #@4
    .line 902
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    #@6
    .line 914
    iput-object p1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    #@8
    .line 915
    iput-object p2, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@a
    .line 916
    iput-object p3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    #@c
    .line 917
    iput-object p4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    #@e
    .line 918
    iput-object p5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    #@10
    .line 919
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    #@12
    .line 920
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    #@15
    .line 913
    return-void
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 944
    :try_start_0
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 945
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    #@7
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :catchall_0
    move-exception v6

    #@9
    monitor-exit p0

    #@a
    throw v6

    #@b
    .line 947
    :cond_0
    :try_start_1
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 948
    const/4 v6, 0x1

    #@10
    iput-boolean v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    #@12
    .line 949
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v6

    #@16
    .line 954
    :cond_1
    :try_start_2
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    #@18
    if-nez v6, :cond_2

    #@1a
    .line 955
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    #@1c
    .line 954
    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@1f
    move-result-object v4

    #@20
    .line 960
    .local v4, "ks":Ljava/security/KeyStore;
    :goto_0
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@22
    instance-of v6, v6, Ljava/security/KeyStore$PasswordProtection;

    #@24
    if-eqz v6, :cond_3

    #@26
    .line 961
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@28
    check-cast v6, Ljava/security/KeyStore$PasswordProtection;

    #@2a
    invoke-virtual {v6}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    #@2d
    move-result-object v5

    #@2e
    .line 972
    .local v5, "passwd":[C
    :goto_1
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    if-eqz v6, :cond_5

    #@32
    .line 973
    const/4 v2, 0x0

    #@33
    .line 975
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    #@35
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    #@37
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    .line 976
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3d
    .line 978
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 984
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    const/4 v6, 0x1

    #@41
    iput-boolean v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 985
    return-object v4

    #@45
    .line 956
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v5    # "passwd":[C
    :cond_2
    :try_start_6
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    #@47
    iget-object v7, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    #@49
    .line 955
    invoke-static {v6, v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    #@4c
    move-result-object v4

    #@4d
    .restart local v4    # "ks":Ljava/security/KeyStore;
    goto :goto_0

    #@4e
    .line 963
    :cond_3
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@50
    instance-of v6, v6, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@52
    if-eqz v6, :cond_4

    #@54
    .line 965
    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@56
    .line 964
    invoke-static {v6}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    #@59
    move-result-object v5

    #@5a
    .restart local v5    # "passwd":[C
    goto :goto_1

    #@5b
    .line 967
    .end local v5    # "passwd":[C
    :cond_4
    new-instance v6, Ljava/security/KeyStoreException;

    #@5d
    const-string/jumbo v7, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    #@60
    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@63
    throw v6
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@64
    .line 986
    .end local v4    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    #@65
    .line 988
    .local v1, "e":Ljava/security/KeyStoreException;
    :try_start_7
    iput-object v1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    #@67
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@68
    .line 977
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "passwd":[C
    :catchall_1
    move-exception v6

    #@69
    .line 978
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6c
    .line 977
    throw v6
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@6d
    .line 989
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v5    # "passwd":[C
    :catch_1
    move-exception v0

    #@6e
    .line 991
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v6, Ljava/security/KeyStoreException;

    #@70
    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@73
    iput-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    #@75
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@76
    .line 981
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "passwd":[C
    :cond_5
    :try_start_a
    new-instance v6, Ljava/security/KeyStore$Builder$TmpLSParameter;

    #@78
    iget-object v7, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@7a
    invoke-direct {v6, v7}, Ljava/security/KeyStore$Builder$TmpLSParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    #@7d
    invoke-virtual {v4, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@80
    goto :goto_2

    #@81
    .line 977
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    #@82
    move-object v2, v3

    #@83
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1005
    if-nez p1, :cond_0

    #@3
    .line 1006
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "alias == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 1008
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "getKeyStore() was not invoked"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1011
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    return-object v0
.end method
