.class public final Lcom/android/internal/net/utils/IkeDeviceConfigUtils;
.super Ljava/lang/Object;
.source "IkeDeviceConfigUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 93
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    move-object v1, p2

    :goto_9
    return-object v1
.end method

.method public static blacklist getDeviceConfigPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d

    :cond_c
    move v1, p2

    :goto_d
    return v1
.end method

.method public static blacklist getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_e

    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_f

    .line 38
    :catch_c
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 37
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    move v1, p2

    :goto_f
    return v1
.end method

.method public static blacklist getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;III)I
    .registers 6
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minimumValue"    # I
    .param p3, "maximumValue"    # I
    .param p4, "defaultValue"    # I

    .line 64
    invoke-static {p0, p1, p4}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "value":I
    if-lt v0, p2, :cond_a

    if-le v0, p3, :cond_9

    goto :goto_a

    .line 66
    :cond_9
    return v0

    .line 65
    :cond_a
    :goto_a
    return p4
.end method
