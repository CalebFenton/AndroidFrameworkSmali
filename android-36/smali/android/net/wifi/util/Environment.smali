.class public Landroid/net/wifi/util/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final blacklist MAINLINE_SUPPLICANT_BINARY_PATH:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "Environment"

.field private static final blacklist WIFI_APEX_NAME:Ljava/lang/String; = "com.android.wifi"

.field private static final blacklist WIFI_APEX_PATH:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/apex"

    const-string v2, "com.android.wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/util/Environment;->WIFI_APEX_PATH:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/wifi/util/Environment;->WIFI_APEX_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bin/wpa_supplicant_mainline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/util/Environment;->MAINLINE_SUPPLICANT_BINARY_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getWifiSharedDirectory()Ljava/io/File;
    .registers 1

    .line 58
    const-string v0, "com.android.wifi"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getWifiUserDirectory(I)Ljava/io/File;
    .registers 3
    .param p0, "userId"    # I

    .line 65
    const-string v0, "com.android.wifi"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    .line 66
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ApexEnvironment;->getCredentialProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public static blacklist isAppInWifiApex(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 74
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v1, Landroid/net/wifi/util/Environment;->WIFI_APEX_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMainlineSupplicantBinaryInWifiApex()Z
    .registers 2

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/net/wifi/util/Environment;->MAINLINE_SUPPLICANT_BINARY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public static blacklist isSdkAtLeastB()Z
    .registers 2

    .line 112
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "Baklava"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static blacklist isVndkApiLevelNewerThan(I)Z
    .registers 7
    .param p0, "apiLevel"    # I

    .line 92
    invoke-static {}, Lcom/android/wifi/x/android/sysprop/VndkProperties;->vendor_vndk_version()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, "vndkApiLevel":I
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2d

    .line 96
    :try_start_14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_1a

    move v1, v2

    .line 102
    goto :goto_2d

    .line 97
    :catch_1a
    move-exception v2

    .line 98
    .local v2, "ignore":Ljava/lang/NumberFormatException;
    const-string v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 99
    const-string v4, "Environment"

    const-string v5, "developer build, bypass the vndk version check"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v3

    .line 104
    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :cond_2d
    :goto_2d
    if-le v1, p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    return v3
.end method
