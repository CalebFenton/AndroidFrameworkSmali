.class public Lcom/android/org/conscrypt/ct/CTLogStoreImpl;
.super Ljava/lang/Object;
.source "CTLogStoreImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/CTLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static volatile defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private static final defaultSystemLogDir:Ljava/io/File;

.field private static final defaultUserLogDir:Ljava/io/File;


# instance fields
.field private fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private logCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/org/conscrypt/ct/CTLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private missingLogCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private systemLogDir:Ljava/io/File;

.field private userLogDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 62
    const/4 v2, 0x0

    #@1
    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@3
    .line 64
    const-string/jumbo v2, "ANDROID_DATA"

    #@6
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 65
    .local v0, "ANDROID_DATA":Ljava/lang/String;
    const-string/jumbo v2, "ANDROID_ROOT"

    #@d
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 66
    .local v1, "ANDROID_ROOT":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, "/misc/keychain/ct_known_logs/"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2a
    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    #@2c
    .line 67
    new-instance v2, Ljava/io/File;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, "/etc/security/ct_known_logs/"

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@45
    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    #@47
    .line 218
    const/16 v2, 0x10

    #@49
    new-array v2, v2, [C

    #@4b
    fill-array-data v2, :array_0

    #@4e
    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    #@50
    .line 38
    return-void

    #@51
    .line 218
    nop

    #@52
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 78
    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    #@2
    .line 79
    sget-object v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    #@4
    .line 80
    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@7
    move-result-object v2

    #@8
    .line 78
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V

    #@b
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V
    .locals 1
    .param p1, "userLogDir"    # Ljava/io/File;
    .param p2, "systemLogDir"    # Ljava/io/File;
    .param p3, "fallbackLogs"    # [Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/Map;

    #@a
    .line 75
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    #@15
    .line 84
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    #@17
    .line 85
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    #@19
    .line 86
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@1b
    .line 83
    return-void
.end method

.method private static createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    .line 142
    new-array v3, v8, [Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@4
    .line 143
    .local v3, "logs":[Lcom/android/org/conscrypt/ct/CTLogInfo;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    #@7
    .line 145
    :try_start_0
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    sget-object v5, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_KEYS:[[B

    #@b
    aget-object v5, v5, v1

    #@d
    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    #@10
    move-result-wide v6

    #@11
    invoke-direct {v4, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@14
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    #@17
    move-result-object v2

    #@18
    .line 148
    .local v2, "key":Ljava/security/PublicKey;
    new-instance v4, Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@1a
    .line 149
    sget-object v5, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_DESCRIPTIONS:[Ljava/lang/String;

    #@1c
    aget-object v5, v5, v1

    #@1e
    .line 150
    sget-object v6, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_URLS:[Ljava/lang/String;

    #@20
    aget-object v6, v6, v1

    #@22
    .line 148
    invoke-direct {v4, v2, v5, v6}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 143
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 151
    .end local v2    # "key":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    #@2b
    .line 152
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@2d
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v4

    #@31
    .line 156
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    sput-object v3, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@33
    .line 157
    return-object v3
.end method

.method private findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 9
    .param p1, "logId"    # [B

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 111
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->hexEncode([B)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 113
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    #@7
    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    #@9
    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    invoke-static {v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    move-result-object v4

    #@10
    return-object v4

    #@11
    .line 114
    :catch_0
    move-exception v0

    #@12
    .line 115
    .local v0, "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    return-object v8

    #@13
    .line 116
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    :catch_1
    move-exception v1

    #@14
    .line 119
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v4, Ljava/io/File;

    #@16
    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    #@18
    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    invoke-static {v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    :try_end_1
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    #@1e
    move-result-object v4

    #@1f
    return-object v4

    #@20
    .line 120
    :catch_2
    move-exception v0

    #@21
    .line 121
    .restart local v0    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    return-object v8

    #@22
    .line 122
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    :catch_3
    move-exception v1

    #@23
    .line 124
    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@25
    const/4 v4, 0x0

    #@26
    array-length v6, v5

    #@27
    :goto_0
    if-ge v4, v6, :cond_1

    #@29
    aget-object v3, v5, v4

    #@2b
    .line 125
    .local v3, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    #@2e
    move-result-object v7

    #@2f
    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_0

    #@35
    .line 126
    return-object v3

    #@36
    .line 124
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 129
    .end local v3    # "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    :cond_1
    return-object v8
.end method

.method public static getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 1

    #@0
    .prologue
    .line 133
    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@2
    .line 134
    .local v0, "result":[Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_0

    #@4
    .line 136
    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@a
    .line 138
    :cond_0
    return-object v0
.end method

.method private static hexEncode([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    array-length v2, p0

    #@3
    mul-int/lit8 v2, v2, 0x2

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@8
    .line 225
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@9
    array-length v3, p0

    #@a
    :goto_0
    if-ge v2, v3, :cond_0

    #@c
    aget-byte v0, p0, v2

    #@e
    .line 226
    .local v0, "b":B
    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    #@10
    shr-int/lit8 v5, v0, 0x4

    #@12
    and-int/lit8 v5, v5, 0xf

    #@14
    aget-char v4, v4, v5

    #@16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 227
    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    #@1b
    and-int/lit8 v5, v0, 0xf

    #@1d
    aget-char v4, v4, v5

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 225
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 229
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 14
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x0

    #@2
    .line 177
    new-instance v10, Ljava/util/Scanner;

    #@4
    invoke-direct {v10, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    #@7
    const-string/jumbo v11, ","

    #@a
    invoke-virtual {v10, v11}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    #@d
    move-result-object v7

    #@e
    .line 179
    .local v7, "scan":Ljava/util/Scanner;
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    #@11
    move-result v10

    #@12
    if-nez v10, :cond_0

    #@14
    .line 180
    return-object v12

    #@15
    .line 183
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "description":Ljava/lang/String;
    const/4 v8, 0x0

    #@17
    .local v8, "url":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    .line 184
    .end local v0    # "description":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    #@1b
    move-result v10

    #@1c
    if-eqz v10, :cond_4

    #@1e
    .line 185
    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    const-string/jumbo v11, ":"

    #@25
    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 186
    .local v5, "parts":[Ljava/lang/String;
    array-length v10, v5

    #@2a
    if-lt v10, v13, :cond_1

    #@2c
    .line 190
    const/4 v10, 0x0

    #@2d
    aget-object v4, v5, v10

    #@2f
    .line 191
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x1

    #@30
    aget-object v9, v5, v10

    #@32
    .line 192
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "description"

    #@35
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v10

    #@39
    if-eqz v10, :cond_2

    #@3b
    .line 193
    move-object v0, v9

    #@3c
    .local v0, "description":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 192
    .end local v0    # "description":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "url"

    #@40
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v10

    #@44
    if-eqz v10, :cond_3

    #@46
    .line 194
    move-object v8, v9

    #@47
    .local v8, "url":Ljava/lang/String;
    goto :goto_0

    #@48
    .line 192
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "key"

    #@4b
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v10

    #@4f
    if-eqz v10, :cond_1

    #@51
    .line 195
    move-object v3, v9

    #@52
    .local v3, "key":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 199
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    #@55
    if-nez v8, :cond_6

    #@57
    .line 200
    :cond_5
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    #@59
    const-string/jumbo v11, "Missing one of \'description\', \'url\' or \'key\'"

    #@5c
    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v10

    #@60
    .line 199
    :cond_6
    if-eqz v3, :cond_5

    #@62
    .line 205
    :try_start_0
    new-instance v10, Ljava/io/StringBufferInputStream;

    #@64
    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v12, "-----BEGIN PUBLIC KEY-----\n"

    #@6c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v11

    #@70
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v11

    #@74
    .line 207
    const-string/jumbo v12, "\n"

    #@77
    .line 206
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v11

    #@7b
    .line 208
    const-string/jumbo v12, "-----END PUBLIC KEY-----"

    #@7e
    .line 206
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v11

    #@82
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v11

    #@86
    .line 205
    invoke-direct {v10, v11}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    #@89
    invoke-static {v10}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v10}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    move-result-object v6

    #@91
    .line 215
    .local v6, "pubkey":Ljava/security/PublicKey;
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@93
    invoke-direct {v10, v6, v0, v8}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    #@96
    return-object v10

    #@97
    .line 211
    .end local v6    # "pubkey":Ljava/security/PublicKey;
    :catch_0
    move-exception v2

    #@98
    .line 212
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    #@9a
    invoke-direct {v10, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    #@9d
    throw v10

    #@9e
    .line 209
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    #@9f
    .line 210
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    #@a1
    invoke-direct {v10, v1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    #@a4
    throw v10
.end method


# virtual methods
.method public getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 4
    .param p1, "logId"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 92
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/Map;

    #@7
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@d
    .line 93
    .local v1, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-eqz v1, :cond_0

    #@f
    .line 94
    return-object v1

    #@10
    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    #@12
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 97
    return-object v3

    #@19
    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@1c
    move-result-object v1

    #@1d
    .line 101
    if-eqz v1, :cond_2

    #@1f
    .line 102
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/Map;

    #@21
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 107
    :goto_0
    return-object v1

    #@25
    .line 104
    :cond_2
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    #@27
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0
.end method
