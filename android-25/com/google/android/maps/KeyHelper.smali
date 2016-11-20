.class Lcom/google/android/maps/KeyHelper;
.super Ljava/lang/Object;
.source "KeyHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getSignatureFingerprint(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 47
    const/4 v7, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    .line 48
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    #@8
    .line 49
    return-object v9

    #@9
    .line 51
    :cond_0
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b
    and-int/lit8 v7, v7, 0x1

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 52
    const-string/jumbo v7, "SYSTEM"

    #@12
    return-object v7

    #@13
    .line 54
    :cond_1
    const/16 v7, 0x40

    #@15
    invoke-virtual {p0, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@18
    move-result-object v5

    #@19
    .line 55
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_2

    #@1b
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@1d
    if-nez v7, :cond_3

    #@1f
    .line 57
    :cond_2
    return-object v9

    #@20
    .line 56
    :cond_3
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@22
    array-length v7, v7

    #@23
    if-eqz v7, :cond_2

    #@25
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@27
    const/4 v8, 0x0

    #@28
    aget-object v7, v7, v8

    #@2a
    if-eqz v7, :cond_2

    #@2c
    .line 59
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@2e
    const/4 v8, 0x0

    #@2f
    aget-object v7, v7, v8

    #@31
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    #@34
    move-result-object v6

    #@35
    .line 60
    .local v6, "signature":[B
    const-string/jumbo v7, "MD5"

    #@38
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3b
    move-result-object v4

    #@3c
    .line 61
    .local v4, "md":Ljava/security/MessageDigest;
    if-nez v4, :cond_4

    #@3e
    .line 62
    return-object v9

    #@3f
    .line 64
    :cond_4
    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    #@42
    move-result-object v1

    #@43
    .line 65
    .local v1, "digest":[B
    if-nez v1, :cond_5

    #@45
    .line 66
    return-object v9

    #@46
    .line 68
    :cond_5
    invoke-static {v1}, Lcom/google/android/maps/KeyHelper;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    move-result-object v7

    #@4a
    return-object v7

    #@4b
    .line 71
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "digest":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "signature":[B
    :catch_0
    move-exception v3

    #@4c
    .line 72
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v9

    #@4d
    .line 69
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    #@4e
    .line 70
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v9
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    array-length v2, p0

    #@4
    mul-int/lit8 v2, v2, 0x2

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    .line 81
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v4, p0

    #@a
    move v2, v3

    #@b
    :goto_0
    if-ge v2, v4, :cond_0

    #@d
    aget-byte v0, p0, v2

    #@f
    .line 82
    .local v0, "b":B
    const-string/jumbo v5, "%02x"

    #@12
    const/4 v6, 0x1

    #@13
    new-array v6, v6, [Ljava/lang/Object;

    #@15
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@18
    move-result-object v7

    #@19
    aput-object v7, v6, v3

    #@1b
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 81
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 84
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method
