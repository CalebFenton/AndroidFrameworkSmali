.class public Lcom/android/internal/telephony/satellite/SatelliteConfigParser;
.super Lcom/android/internal/telephony/configupdate/ConfigParser;
.source "SatelliteConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/configupdate/ConfigParser<",
        "Lcom/android/internal/telephony/satellite/SatelliteConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected blacklist parseData([B)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 71
    const-string v2, "SatelliteConfigParser"

    const/4 v3, 0x0

    if-nez p1, :cond_11

    .line 72
    :try_start_7
    const-string p1, "config data is null"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_d
    move-exception p1

    goto :goto_51

    :catch_f
    move-exception p1

    goto :goto_33

    .line 76
    :cond_11
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 77
    iget-object p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez p1, :cond_1c

    goto :goto_2d

    .line 81
    :cond_1c
    iget v4, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    iput v4, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 82
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteConfig;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;-><init>(Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;)V

    iput-object v4, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    .line 83
    const-string p1, "SatelliteConfig is created"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_2d
    :goto_2d
    const-string p1, "telephonyConfigData or telephonyConfigData.satellite is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_f
    .catchall {:try_start_7 .. :try_end_32} :catchall_d

    return-void

    :goto_33
    const/4 v3, 0x1

    .line 86
    :try_start_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_d

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 90
    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    return-void

    :goto_51
    if-eqz v3, :cond_57

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 90
    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    .line 92
    :cond_57
    throw p1
.end method
