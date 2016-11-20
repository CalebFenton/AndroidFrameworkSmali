.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Geocoder"


# instance fields
.field private mParams:Landroid/location/GeocoderParams;

.field private mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    #@7
    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    if-nez p2, :cond_0

    #@5
    .line 81
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "locale == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 83
    :cond_0
    new-instance v1, Landroid/location/GeocoderParams;

    #@10
    invoke-direct {v1, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    #@13
    iput-object v1, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    #@15
    .line 84
    const-string/jumbo v1, "location"

    #@18
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    .line 85
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    #@22
    .line 79
    return-void
.end method

.method public static isPresent()Z
    .locals 5

    #@0
    .prologue
    .line 60
    const-string/jumbo v3, "location"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 61
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    #@a
    move-result-object v2

    #@b
    .line 63
    .local v2, "lm":Landroid/location/ILocationManager;
    :try_start_0
    invoke-interface {v2}, Landroid/location/ILocationManager;->geocoderIsPresent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 64
    :catch_0
    move-exception v1

    #@11
    .line 65
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Geocoder"

    #@14
    const-string/jumbo v4, "isPresent: got RemoteException"

    #@17
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 66
    const/4 v3, 0x0

    #@1b
    return v3
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    const-wide v2, -0x3fa9800000000000L    # -90.0

    #@5
    cmpg-double v1, p1, v2

    #@7
    if-ltz v1, :cond_0

    #@9
    const-wide v2, 0x4056800000000000L    # 90.0

    #@e
    cmpl-double v1, p1, v2

    #@10
    if-lez v1, :cond_1

    #@12
    .line 126
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "latitude == "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 128
    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    #@31
    cmpg-double v1, p3, v2

    #@33
    if-ltz v1, :cond_2

    #@35
    const-wide v2, 0x4066800000000000L    # 180.0

    #@3a
    cmpl-double v1, p3, v2

    #@3c
    if-lez v1, :cond_3

    #@3e
    .line 129
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "longitude == "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 132
    :cond_3
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    #@5a
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@5d
    .line 133
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    #@5f
    .line 134
    iget-object v7, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    #@61
    move-wide v2, p1

    #@62
    move-wide v4, p3

    #@63
    move/from16 v6, p5

    #@65
    .line 133
    invoke-interface/range {v1 .. v8}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    .line 135
    .local v9, "ex":Ljava/lang/String;
    if-eqz v9, :cond_4

    #@6b
    .line 136
    new-instance v1, Ljava/io/IOException;

    #@6d
    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@70
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    .line 140
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@72
    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Geocoder"

    #@75
    const-string/jumbo v2, "getFromLocation: got RemoteException"

    #@78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    .line 142
    const/4 v1, 0x0

    #@7c
    return-object v1

    #@7d
    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9    # "ex":Ljava/lang/String;
    :cond_4
    return-object v8
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 15
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    if-nez p1, :cond_0

    #@2
    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "locationName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 174
    :cond_0
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    #@d
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 175
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    #@12
    .line 176
    const-wide/16 v2, 0x0

    #@14
    const-wide/16 v4, 0x0

    #@16
    const-wide/16 v6, 0x0

    #@18
    const-wide/16 v8, 0x0

    #@1a
    iget-object v11, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    #@1c
    move-object/from16 v1, p1

    #@1e
    move/from16 v10, p2

    #@20
    .line 175
    invoke-interface/range {v0 .. v12}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@23
    move-result-object v14

    #@24
    .line 177
    .local v14, "ex":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@26
    .line 178
    new-instance v0, Ljava/io/IOException;

    #@28
    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 182
    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v14    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@2d
    .line 183
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "Geocoder"

    #@30
    const-string/jumbo v1, "getFromLocationName: got RemoteException"

    #@33
    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 184
    const/4 v0, 0x0

    #@37
    return-object v0

    #@38
    .line 180
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v12    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v14    # "ex":Ljava/lang/String;
    :cond_1
    return-object v12
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 17
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    if-nez p1, :cond_0

    #@2
    .line 227
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "locationName == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 229
    :cond_0
    const-wide v2, -0x3fa9800000000000L    # -90.0

    #@10
    cmpg-double v2, p3, v2

    #@12
    if-ltz v2, :cond_1

    #@14
    const-wide v2, 0x4056800000000000L    # 90.0

    #@19
    cmpl-double v2, p3, v2

    #@1b
    if-lez v2, :cond_2

    #@1d
    .line 230
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "lowerLeftLatitude == "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    move-wide/from16 v0, p3

    #@2d
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 233
    :cond_2
    const-wide v2, -0x3f99800000000000L    # -180.0

    #@3e
    cmpg-double v2, p5, v2

    #@40
    if-ltz v2, :cond_3

    #@42
    const-wide v2, 0x4066800000000000L    # 180.0

    #@47
    cmpl-double v2, p5, v2

    #@49
    if-lez v2, :cond_4

    #@4b
    .line 234
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "lowerLeftLongitude == "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    move-wide/from16 v0, p5

    #@5b
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2

    #@67
    .line 237
    :cond_4
    const-wide v2, -0x3fa9800000000000L    # -90.0

    #@6c
    cmpg-double v2, p7, v2

    #@6e
    if-ltz v2, :cond_5

    #@70
    const-wide v2, 0x4056800000000000L    # 90.0

    #@75
    cmpl-double v2, p7, v2

    #@77
    if-lez v2, :cond_6

    #@79
    .line 238
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7b
    new-instance v3, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v4, "upperRightLatitude == "

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    move-wide/from16 v0, p7

    #@89
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v2

    #@95
    .line 241
    :cond_6
    const-wide v2, -0x3f99800000000000L    # -180.0

    #@9a
    cmpg-double v2, p9, v2

    #@9c
    if-ltz v2, :cond_7

    #@9e
    const-wide v2, 0x4066800000000000L    # 180.0

    #@a3
    cmpl-double v2, p9, v2

    #@a5
    if-lez v2, :cond_8

    #@a7
    .line 242
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a9
    new-instance v3, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v4, "upperRightLongitude == "

    #@b1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    move-wide/from16 v0, p9

    #@b7
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v2

    #@c3
    .line 246
    :cond_8
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    #@c5
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@c8
    .line 247
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    #@ca
    iget-object v2, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    #@cc
    .line 249
    move-object/from16 v0, p0

    #@ce
    iget-object v13, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    #@d0
    move-object/from16 v3, p1

    #@d2
    move-wide/from16 v4, p3

    #@d4
    move-wide/from16 v6, p5

    #@d6
    move-wide/from16 v8, p7

    #@d8
    move-wide/from16 v10, p9

    #@da
    move/from16 v12, p2

    #@dc
    .line 247
    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@df
    move-result-object v16

    #@e0
    .line 250
    .local v16, "ex":Ljava/lang/String;
    if-eqz v16, :cond_9

    #@e2
    .line 251
    new-instance v2, Ljava/io/IOException;

    #@e4
    move-object/from16 v0, v16

    #@e6
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@ea
    .line 255
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .end local v16    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v15

    #@eb
    .line 256
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Geocoder"

    #@ee
    const-string/jumbo v3, "getFromLocationName: got RemoteException"

    #@f1
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f4
    .line 257
    const/4 v2, 0x0

    #@f5
    return-object v2

    #@f6
    .line 253
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v16    # "ex":Ljava/lang/String;
    :cond_9
    return-object v14
.end method
