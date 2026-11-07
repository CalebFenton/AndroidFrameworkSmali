.class public Landroid/util/HashedStringCache;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HashedStringCache$HashResult;
    }
.end annotation


# static fields
.field private static final blacklist DAYS_TO_MILLIS:J = 0x5265c00L

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HASH_CACHE_SIZE:I = 0x64

.field private static final blacklist HASH_LENGTH:I = 0x8

.field static final blacklist HASH_SALT:Ljava/lang/String; = "_hash_salt"

.field static final blacklist HASH_SALT_DATE:Ljava/lang/String; = "_hash_salt_date"

.field static final blacklist HASH_SALT_GEN:Ljava/lang/String; = "_hash_salt_gen"

.field private static final blacklist MAX_SALT_DAYS:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "HashedStringCache"

.field private static final blacklist UTF_8:Ljava/nio/charset/Charset;

.field private static blacklist sHashedStringCache:Landroid/util/HashedStringCache;


# instance fields
.field private final blacklist mDigester:Ljava/security/MessageDigest;

.field private final blacklist mHashes:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreferenceLock:Ljava/lang/Object;

.field private blacklist mSalt:[B

.field private blacklist mSaltGen:I

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;

.field private blacklist mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    .line 41
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    .line 66
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    .line 68
    :try_start_1a
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_22} :catch_24

    .line 72
    nop

    .line 73
    return-void

    .line 69
    :catch_24
    move-exception v0

    .line 71
    .local v0, "impossible":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist checkNeedsNewSalt(Ljava/lang/String;IJ)Z
    .registers 17
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "saltExpirationDays"    # I
    .param p3, "saltDate"    # J

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const/4 v2, -0x1

    if-ge p2, v2, :cond_b

    goto :goto_27

    .line 135
    :cond_b
    const/16 v2, 0x64

    if-le p2, v2, :cond_11

    .line 136
    const/16 p2, 0x64

    .line 138
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 139
    .local v4, "now":J
    sub-long v6, v4, p3

    .line 142
    .local v6, "delta":J
    int-to-long v8, p2

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-gez v2, :cond_26

    cmp-long v0, v6, v0

    if-gez v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :cond_26
    :goto_26
    return v3

    .line 133
    .end local v4    # "now":J
    .end local v6    # "delta":J
    :cond_27
    :goto_27
    return v3
.end method

.method private blacklist getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "hashed_cache.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance()Landroid/util/HashedStringCache;
    .registers 1

    .line 80
    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Landroid/util/HashedStringCache;

    invoke-direct {v0}, Landroid/util/HashedStringCache;-><init>()V

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    .line 83
    :cond_b
    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    return-object v0
.end method

.method private blacklist populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "saltExpirationDays"    # I

    .line 152
    iget-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    invoke-direct {p0, p1}, Landroid/util/HashedStringCache;->getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 155
    iget-object v1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hash_salt_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 156
    .local v1, "saltDate":J
    invoke-direct {p0, p2, p3, v1, v2}, Landroid/util/HashedStringCache;->checkNeedsNewSalt(Ljava/lang/String;IJ)Z

    move-result v3

    .line 157
    .local v3, "needsNewSalt":Z
    if-eqz v3, :cond_2f

    .line 158
    iget-object v4, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->evictAll()V

    .line 160
    :cond_2f
    iget-object v4, p0, Landroid/util/HashedStringCache;->mSalt:[B

    if-eqz v4, :cond_35

    if-eqz v3, :cond_e0

    .line 161
    :cond_35
    iget-object v4, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_hash_salt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "saltString":Ljava/lang/String;
    iget-object v5, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_hash_salt_gen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    .line 163
    if-eqz v4, :cond_6f

    if-eqz v3, :cond_d8

    .line 164
    :cond_6f
    iget v5, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    .line 165
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 166
    .local v5, "saltBytes":[B
    iget-object v6, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 167
    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 169
    iget-object v6, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_hash_salt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_hash_salt_gen"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    .line 171
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_hash_salt_date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    .end local v5    # "saltBytes":[B
    :cond_d8
    sget-object v5, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iput-object v5, p0, Landroid/util/HashedStringCache;->mSalt:[B

    .line 179
    .end local v1    # "saltDate":J
    .end local v3    # "needsNewSalt":Z
    .end local v4    # "saltString":Ljava/lang/String;
    :cond_e0
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_e2
    move-exception v1

    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_3 .. :try_end_e4} :catchall_e2

    throw v1
.end method


# virtual methods
.method public blacklist hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "clearText"    # Ljava/lang/String;
    .param p4, "saltExpirationDays"    # I

    .line 101
    const/4 v0, -0x1

    if-eq p4, v0, :cond_5e

    if-eqz p1, :cond_5e

    .line 102
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5e

    .line 106
    :cond_12
    invoke-direct {p0, p1, p2, p4}, Landroid/util/HashedStringCache;->populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "hashText":Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 109
    new-instance v1, Landroid/util/HashedStringCache$HashResult;

    iget v2, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {v1, p0, v0, v2}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object v1

    .line 112
    :cond_27
    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 113
    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    iget-object v2, p0, Landroid/util/HashedStringCache;->mSalt:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    sget-object v2, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 116
    .local v1, "bytes":[B
    const/16 v2, 0x8

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 117
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v3, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {v3, p3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v3, Landroid/util/HashedStringCache$HashResult;

    iget v4, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {v3, p0, v0, v4}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object v3

    .line 103
    .end local v0    # "hashText":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v2    # "len":I
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return-object v0
.end method
