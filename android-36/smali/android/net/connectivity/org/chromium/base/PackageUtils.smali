.class public Landroid/net/connectivity/org/chromium/base/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist HEX_CHAR_LOOKUP:[C

.field private static final blacklist TAG:Ljava/lang/String; = "PackageUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    nop

    .line 30
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PackageUtils;->HEX_CHAR_LOOKUP:[C

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .registers 5
    .param p0, "byteArray"    # [B

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_33

    .line 150
    sget-object v2, Landroid/net/connectivity/org/chromium/base/PackageUtils;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    sget-object v2, Landroid/net/connectivity/org/chromium/base/PackageUtils;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_30

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 154
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getApplicationPackageInfo(I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p0, "flags"    # I

    .line 67
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getInstance()Landroid/net/connectivity/org/chromium/base/BuildInfo;

    move-result-object v0

    .line 71
    .local v0, "bi":Landroid/net/connectivity/org/chromium/base/BuildInfo;
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 72
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->maybeWorkAroundWebViewPackageVisibility()V

    .line 75
    :cond_11
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, "ret":Landroid/content/pm/PackageInfo;
    nop

    .line 77
    return-object v1
.end method

.method public static blacklist getCertificateSHA256FingerprintForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    const/16 v0, 0x40

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 115
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 117
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v2, "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_52

    aget-object v6, v3, v5

    .line 120
    .local v6, "signature":Landroid/content/pm/Signature;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    .local v7, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 123
    .local v8, "hexString":Ljava/lang/String;
    :try_start_24
    const-string v9, "X509"

    .line 125
    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 126
    .local v9, "certificate":Ljava/security/cert/X509Certificate;
    const-string v10, "SHA256"

    .line 128
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 129
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 127
    invoke-static {v10}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_42} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_42} :catch_49

    .line 133
    .end local v8    # "hexString":Ljava/lang/String;
    .end local v9    # "certificate":Ljava/security/cert/X509Certificate;
    .local v10, "hexString":Ljava/lang/String;
    nop

    .line 135
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v10    # "hexString":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 130
    .restart local v6    # "signature":Landroid/content/pm/Signature;
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local v8    # "hexString":Ljava/lang/String;
    :catch_49
    move-exception v3

    .line 131
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "PackageUtils"

    const-string v5, "Exception"

    invoke-static {v4, v5, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    return-object v1

    .line 138
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "hexString":Ljava/lang/String;
    :cond_52
    return-object v2
.end method

.method public static blacklist getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 34
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 36
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_8
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 37
    :catch_d
    move-exception v1

    .line 38
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist getPackageVersion(Ljava/lang/String;)I
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 51
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_a

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v1

    .line 52
    :cond_a
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist isPackageInstalled(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static blacklist maybeWorkAroundWebViewPackageVisibility()V
    .registers 4

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_7

    .line 87
    return-void

    .line 91
    :cond_7
    :try_start_7
    const-string v0, "android.webkit.WebViewUpdateService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "wvus":Ljava/lang/Class;
    const-string v1, "getCurrentWebViewPackageName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .local v1, "getWebViewPackageName":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1e

    .line 99
    nop

    .end local v0    # "wvus":Ljava/lang/Class;
    .end local v1    # "getWebViewPackageName":Ljava/lang/reflect/Method;
    goto :goto_26

    .line 95
    :catch_1e
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageUtils"

    const-string v2, "maybeWorkAroundWebViewPackageVisibility failed"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method
