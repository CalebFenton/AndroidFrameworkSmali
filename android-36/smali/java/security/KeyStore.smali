.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$SimpleLoadStoreParameter;,
        Ljava/security/KeyStore$Builder;,
        Ljava/security/KeyStore$TrustedCertificateEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$PasswordProtection;
    }
.end annotation


# static fields
.field private static final greylist-max-o KEYSTORE_TYPE:Ljava/lang/String; = "keystore.type"

.field private static final blacklist kdebug:Lsun/security/util/Debug;


# instance fields
.field private greylist-max-o initialized:Z

.field private greylist keyStoreSpi:Ljava/security/KeyStoreSpi;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetinitialized(Ljava/security/KeyStore;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/security/KeyStore;->initialized:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 229
    const-string v0, "keystore"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyStoreSpi"    # Ljava/security/KeyStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 857
    iput-object p1, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    .line 858
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    .line 859
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public static final whitelist test-api getDefaultType()Ljava/lang/String;
    .registers 1

    .line 1025
    new-instance v0, Ljava/security/KeyStore$1;

    invoke-direct {v0}, Ljava/security/KeyStore$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1030
    .local v0, "kstype":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 1031
    const-string v0, "jks"

    .line 1033
    :cond_f
    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/io/File;Ljava/security/KeyStore$LoadStoreParameter;)Ljava/security/KeyStore;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1769
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljava/security/KeyStore;->getInstance(Ljava/io/File;[CLjava/security/KeyStore$LoadStoreParameter;Z)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/io/File;[C)Ljava/security/KeyStore;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1713
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/io/File;[CLjava/security/KeyStore$LoadStoreParameter;Z)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist getInstance(Ljava/io/File;[CLjava/security/KeyStore$LoadStoreParameter;Z)Ljava/security/KeyStore;
    .registers 15
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # [C
    .param p2, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .param p3, "hasPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1778
    const-string v0, "KeyStore"

    if-eqz p0, :cond_10a

    .line 1782
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1788
    const/4 v1, 0x0

    .line 1790
    .local v1, "keystore":Ljava/security/KeyStore;
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1795
    .local v2, "dataStream":Ljava/io/DataInputStream;
    const v3, 0x7fffffff

    :try_start_1d
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->mark(I)V

    .line 1798
    invoke-static {v0}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_e7

    .line 1799
    .local v4, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1802
    .local v6, "objs":[Ljava/lang/Object;
    const/4 v7, 0x0

    :try_start_37
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v4, v0, v7}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 1804
    const/4 v7, 0x0

    aget-object v7, v6, v7

    check-cast v7, Ljava/security/KeyStoreSpi;

    .line 1805
    .local v7, "impl":Ljava/security/KeyStoreSpi;
    invoke-virtual {v7, v2}, Ljava/security/KeyStoreSpi;->engineProbe(Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 1807
    sget-object v8, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    if-eqz v8, :cond_6a

    .line 1808
    sget-object v8, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " keystore detected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1812
    :cond_6a
    new-instance v8, Ljava/security/KeyStore;

    aget-object v9, v6, v5

    check-cast v9, Ljava/security/Provider;

    invoke-direct {v8, v7, v9, v4}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_73} :catch_9e
    .catch Ljava/security/NoSuchProviderException; {:try_start_37 .. :try_end_73} :catch_9e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_73} :catch_76
    .catchall {:try_start_37 .. :try_end_73} :catchall_e7

    .line 1813
    .end local v1    # "keystore":Ljava/security/KeyStore;
    .local v8, "keystore":Ljava/security/KeyStore;
    move-object v1, v8

    goto :goto_c5

    .line 1805
    .end local v7    # "impl":Ljava/security/KeyStoreSpi;
    .end local v8    # "keystore":Ljava/security/KeyStore;
    .restart local v1    # "keystore":Ljava/security/KeyStore;
    :cond_75
    goto :goto_bf

    .line 1820
    :catch_76
    move-exception v5

    .line 1822
    .local v5, "e":Ljava/io/IOException;
    :try_start_77
    sget-object v7, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    if-eqz v7, :cond_c0

    .line 1823
    sget-object v7, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "I/O error in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_c0

    .line 1815
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9e
    move-exception v5

    .line 1817
    .local v5, "e":Ljava/security/GeneralSecurityException;
    sget-object v7, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    if-eqz v7, :cond_bf

    .line 1818
    sget-object v7, Ljava/security/KeyStore;->kdebug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1825
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :cond_bf
    :goto_bf
    nop

    .line 1826
    :cond_c0
    :goto_c0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->reset()V

    .line 1827
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "objs":[Ljava/lang/Object;
    goto/16 :goto_28

    .line 1830
    :cond_c5
    :goto_c5
    if-eqz v1, :cond_dc

    .line 1831
    invoke-virtual {v2}, Ljava/io/DataInputStream;->reset()V

    .line 1832
    if-eqz p3, :cond_d0

    .line 1833
    invoke-virtual {v1, v2, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_d7

    .line 1835
    :cond_d0
    iget-object v0, v1, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, v2, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1836
    iput-boolean v5, v1, Ljava/security/KeyStore;->initialized:Z
    :try_end_d7
    .catchall {:try_start_77 .. :try_end_d7} :catchall_e7

    .line 1838
    :goto_d7
    nop

    .line 1840
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 1838
    return-object v1

    .line 1840
    :cond_dc
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 1842
    .end local v2    # "dataStream":Ljava/io/DataInputStream;
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Unrecognized keystore format. Please load it with a specified type"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    .restart local v2    # "dataStream":Ljava/io/DataInputStream;
    :catchall_e7
    move-exception v0

    :try_start_e8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f0
    throw v0

    .line 1783
    .end local v1    # "keystore":Ljava/security/KeyStore;
    .end local v2    # "dataStream":Ljava/io/DataInputStream;
    :cond_f1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist or it does not refer to a normal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1779
    :cond_10a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 901
    const-string v0, " not found"

    :try_start_2
    const-string v1, "KeyStore"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 902
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v2, Ljava/security/KeyStore;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/KeyStoreSpi;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Ljava/security/Provider;

    invoke-direct {v2, v3, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_1b} :catch_34
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_1b} :catch_1c

    return-object v2

    .line 905
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_1c
    move-exception v1

    .line 906
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 903
    .end local v1    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_34
    move-exception v1

    .line 904
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 946
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_38

    .line 949
    :try_start_8
    const-string v0, "KeyStore"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 950
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object v1

    .line 951
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_1e
    move-exception v0

    .line 952
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 947
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 992
    if-eqz p1, :cond_37

    .line 995
    const-string v0, "null type name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 997
    :try_start_7
    const-string v0, "KeyStore"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 998
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object v1

    .line 999
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_1d
    move-exception v0

    .line 1000
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 993
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api aliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1292
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1295
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 1293
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api containsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1311
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1314
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1312
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api deleteEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1275
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1278
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1279
    return-void

    .line 1276
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1646
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 1649
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_f

    .line 1652
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 1650
    :cond_f
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1138
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1141
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 1139
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1409
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1412
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1410
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1105
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1108
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1158
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1161
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1159
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1575
    if-eqz p1, :cond_15

    .line 1578
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_d

    .line 1581
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0

    .line 1579
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1576
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 1080
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1083
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 1081
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 1043
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 1053
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api isCertificateEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1374
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1377
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1375
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api isKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1351
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1354
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1352
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api load(Ljava/io/InputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1507
    return-void
.end method

.method public final whitelist test-api load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1540
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1541
    return-void
.end method

.method public final whitelist test-api setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1258
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1261
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1262
    return-void

    .line 1259
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1611
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 1614
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_e

    .line 1617
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1618
    return-void

    .line 1615
    :cond_e
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1612
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1191
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_1c

    .line 1194
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_16

    if-eqz p4, :cond_e

    array-length v0, p4

    if-eqz v0, :cond_e

    goto :goto_16

    .line 1196
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Private key must be accompanied by certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_16
    :goto_16
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1201
    return-void

    .line 1192
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1231
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1234
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 1235
    return-void

    .line 1232
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1328
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1331
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0

    .line 1329
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api store(Ljava/io/OutputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1434
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1437
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 1438
    return-void

    .line 1435
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 4
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1463
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1466
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1467
    return-void

    .line 1464
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
