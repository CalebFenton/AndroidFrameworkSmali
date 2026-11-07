.class Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadHolder"
.end annotation


# static fields
.field private static greylist-max-o defaultCaCertsAddedDir:Ljava/io/File;

.field private static greylist-max-o defaultCaCertsDeletedDir:Ljava/io/File;

.field private static greylist-max-o defaultCaCertsSystemDir:Ljava/io/File;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdefaultCaCertsAddedDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetdefaultCaCertsDeletedDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetdefaultCaCertsSystemDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputdefaultCaCertsAddedDir(Ljava/io/File;)V
    .registers 1

    sput-object p0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputdefaultCaCertsDeletedDir(Ljava/io/File;)V
    .registers 1

    sput-object p0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 108
    const-string v0, "ANDROID_ROOT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "ANDROID_ROOT":Ljava/lang/String;
    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "ANDROID_DATA":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "/apex/com.android.conscrypt/cacerts"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "updatableDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->shouldUseApex(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 112
    sput-object v2, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    goto :goto_36

    .line 114
    :cond_1c
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/etc/security/cacerts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    .line 116
    :goto_36
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/keychain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 117
    .end local v0    # "ANDROID_ROOT":Ljava/lang/String;
    .end local v1    # "ANDROID_DATA":Ljava/lang/String;
    .end local v2    # "updatableDir":Ljava/io/File;
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getSdkVersion()Ljava/lang/Object;
    .registers 5

    .line 133
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    const-string v1, "dalvik.system.VMRuntime"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSdkVersion"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 136
    .local v0, "getSdkVersion":Lcom/android/org/conscrypt/metrics/OptionalMethod;
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 137
    .end local v0    # "getSdkVersion":Lcom/android/org/conscrypt/metrics/OptionalMethod;
    :catch_17
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist shouldUseApex(Ljava/io/File;)Z
    .registers 5
    .param p0, "updatableDir"    # Ljava/io/File;

    .line 120
    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->getSdkVersion()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "sdkVersion":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x22

    if-ge v2, v3, :cond_13

    goto :goto_3b

    .line 123
    :cond_13
    const-string v2, "system.certs.enabled"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 124
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 125
    return v1

    .line 126
    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 127
    const/4 v1, 0x1

    return v1

    .line 128
    :cond_3a
    return v1

    .line 122
    :cond_3b
    :goto_3b
    return v1
.end method
