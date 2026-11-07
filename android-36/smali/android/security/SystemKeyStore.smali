.class public Landroid/security/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# static fields
.field private static final greylist-max-o KEY_FILE_EXTENSION:Ljava/lang/String; = ".sks"

.field private static final greylist-max-o SYSTEM_KEYSTORE_DIRECTORY:Ljava/lang/String; = "misc/systemkeys"

.field private static greylist-max-o mInstance:Landroid/security/SystemKeyStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/security/SystemKeyStore;

    invoke-direct {v0}, Landroid/security/SystemKeyStore;-><init>()V

    sput-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getInstance()Landroid/security/SystemKeyStore;
    .registers 1

    .line 46
    sget-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-object v0
.end method

.method private greylist-max-o getKeyFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "keyName"    # Ljava/lang/String;

    .line 108
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "misc/systemkeys"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v0, "sysKeystoreDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v1, "keyFile":Ljava/io/File;
    return-object v1
.end method

.method public static greylist-max-o toHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "keyData"    # [B

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    array-length v0, p0

    .line 54
    .local v0, "keyLen":I
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    .line 55
    .local v1, "expectedStringLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v4, p0

    if-ge v3, v4, :cond_3b

    .line 57
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "hexStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    :cond_35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .end local v4    # "hexStr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 63
    .end local v3    # "i":I
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public greylist-max-o deleteKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "keyName"    # Ljava/lang/String;

    .line 129
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 132
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, "keyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 138
    return-void

    .line 134
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public greylist-max-o generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B
    .registers 13
    .param p1, "numBits"    # I
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 76
    invoke-direct {p0, p3}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "keyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 81
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 82
    .local v1, "skg":Ljavax/crypto/KeyGenerator;
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 83
    .local v2, "srng":Ljava/security/SecureRandom;
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 85
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 86
    .local v3, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    .line 90
    .local v4, "retKey":[B
    :try_start_22
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 94
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 98
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x180

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 103
    nop

    .line 104
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    return-object v4

    .line 91
    :cond_45
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "keyFile":Ljava/io/File;
    .end local v1    # "skg":Ljavax/crypto/KeyGenerator;
    .end local v2    # "srng":Ljava/security/SecureRandom;
    .end local v3    # "sk":Ljavax/crypto/SecretKey;
    .end local v4    # "retKey":[B
    .end local p0    # "this":Landroid/security/SystemKeyStore;
    .end local p1    # "numBits":I
    .end local p2    # "algName":Ljava/lang/String;
    .end local p3    # "keyName":Ljava/lang/String;
    throw v5
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_4b} :catch_4b

    .line 101
    .restart local v0    # "keyFile":Ljava/io/File;
    .restart local v1    # "skg":Ljavax/crypto/KeyGenerator;
    .restart local v2    # "srng":Ljava/security/SecureRandom;
    .restart local v3    # "sk":Ljavax/crypto/SecretKey;
    .restart local v4    # "retKey":[B
    .restart local p0    # "this":Landroid/security/SystemKeyStore;
    .restart local p1    # "numBits":I
    .restart local p2    # "algName":Ljava/lang/String;
    .restart local p3    # "keyName":Ljava/lang/String;
    :catch_4b
    move-exception v5

    .line 102
    .local v5, "ioe":Ljava/io/IOException;
    const/4 v6, 0x0

    return-object v6

    .line 78
    .end local v1    # "skg":Ljavax/crypto/KeyGenerator;
    .end local v2    # "srng":Ljava/security/SecureRandom;
    .end local v3    # "sk":Ljavax/crypto/SecretKey;
    .end local v4    # "retKey":[B
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public greylist-max-o generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "numBits"    # I
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/SystemKeyStore;->generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o retrieveKey(Ljava/lang/String;)[B
    .registers 4
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 121
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 122
    .local v0, "keyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 123
    const/4 v1, 0x0

    return-object v1

    .line 125
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Landroid/security/SystemKeyStore;->retrieveKey(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
