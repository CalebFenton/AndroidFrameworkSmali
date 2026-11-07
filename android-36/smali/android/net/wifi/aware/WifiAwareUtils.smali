.class public Landroid/net/wifi/aware/WifiAwareUtils;
.super Ljava/lang/Object;
.source "WifiAwareUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isLegacyVersion(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minVersion"    # I

    .line 95
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_14

    if-ge v1, p1, :cond_13

    .line 97
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_13
    goto :goto_15

    .line 99
    :catch_14
    move-exception v1

    .line 104
    :goto_15
    return v0
.end method

.method public static greylist-max-o validatePassphrase(Ljava/lang/String;)Z
    .registers 3
    .param p0, "passphrase"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_15

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_15

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_13

    goto :goto_15

    .line 73
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o validatePmk([B)Z
    .registers 3
    .param p0, "pmk"    # [B

    .line 83
    if-eqz p0, :cond_a

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    goto :goto_a

    .line 87
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist validatePmkId([B)Z
    .registers 3
    .param p0, "pmkId"    # [B

    .line 114
    if-eqz p0, :cond_a

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    goto :goto_a

    .line 118
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o validateServiceName([B)V
    .registers 5
    .param p0, "serviceNameData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    if-eqz p0, :cond_4f

    .line 40
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_47

    array-length v0, p0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_47

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "index":I
    :goto_c
    array-length v1, p0

    if-ge v0, v1, :cond_46

    .line 47
    aget-byte v1, p0, v0

    .line 48
    .local v1, "b":B
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_42

    .line 49
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1d

    const/16 v2, 0x39

    if-le v1, v2, :cond_42

    :cond_1d
    const/16 v2, 0x61

    if-lt v1, v2, :cond_25

    const/16 v2, 0x7a

    if-le v1, v2, :cond_42

    :cond_25
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2d

    const/16 v2, 0x5a

    if-le v1, v2, :cond_42

    :cond_2d
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_42

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_42

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_3a

    goto :goto_42

    .line 51
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, _, .)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_42
    :goto_42
    nop

    .end local v1    # "b":B
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_c

    .line 57
    :cond_46
    return-void

    .line 41
    .end local v0    # "index":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name - null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
