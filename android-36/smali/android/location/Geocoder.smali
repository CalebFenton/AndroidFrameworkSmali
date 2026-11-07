.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Geocoder$SynchronousGeocoder;,
        Landroid/location/Geocoder$GeocodeListener;,
        Landroid/location/Geocoder$GeocodeCallbackImpl;
    }
.end annotation


# static fields
.field private static final blacklist TIMEOUT_MS:J = 0x3a98L


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final greylist-max-o mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/location/Geocoder;->mLocale:Ljava/util/Locale;

    .line 111
    nop

    .line 112
    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 113
    return-void
.end method

.method public static whitelist isPresent()Z
    .registers 3

    .line 86
    nop

    .line 87
    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    .line 88
    .local v0, "lm":Landroid/location/ILocationManager;
    if-nez v0, :cond_f

    .line 89
    const/4 v1, 0x0

    return v1

    .line 92
    :cond_f
    :try_start_f
    invoke-interface {v0}, Landroid/location/ILocationManager;->isGeocodeAvailable()Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v1

    .line 93
    :catch_14
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public whitelist getFromLocation(DDI)Ljava/util/List;
    .registers 14
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    new-instance v0, Landroid/location/Geocoder$SynchronousGeocoder;

    invoke-direct {v0}, Landroid/location/Geocoder$SynchronousGeocoder;-><init>()V

    move-object v7, v0

    .line 147
    .local v7, "listener":Landroid/location/Geocoder$SynchronousGeocoder;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .end local p5    # "maxResults":I
    .local v2, "latitude":D
    .local v4, "longitude":D
    .local v6, "maxResults":I
    invoke-virtual/range {v1 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    .line 148
    invoke-virtual {v7}, Landroid/location/Geocoder$SynchronousGeocoder;->getResults()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V
    .registers 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 172
    new-instance v0, Landroid/location/provider/ReverseGeocodeRequest$Builder;

    iget-object v6, p0, Landroid/location/Geocoder;->mLocale:Ljava/util/Locale;

    .line 178
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    iget-object v1, p0, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .end local p5    # "maxResults":I
    .local v1, "latitude":D
    .local v3, "longitude":D
    .local v5, "maxResults":I
    invoke-direct/range {v0 .. v8}, Landroid/location/provider/ReverseGeocodeRequest$Builder;-><init>(DDILjava/util/Locale;ILjava/lang/String;)V

    move-object p1, v0

    .line 180
    .local p1, "b":Landroid/location/provider/ReverseGeocodeRequest$Builder;
    iget-object p2, p0, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 181
    iget-object p2, p0, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/location/provider/ReverseGeocodeRequest$Builder;->setCallingAttributionTag(Ljava/lang/String;)Landroid/location/provider/ReverseGeocodeRequest$Builder;

    .line 184
    :cond_26
    :try_start_26
    iget-object p2, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest$Builder;->build()Landroid/location/provider/ReverseGeocodeRequest;

    move-result-object p3

    new-instance p4, Landroid/location/Geocoder$GeocodeCallbackImpl;

    invoke-direct {p4, p6}, Landroid/location/Geocoder$GeocodeCallbackImpl;-><init>(Landroid/location/Geocoder$GeocodeListener;)V

    invoke-interface {p2, p3, p4}, Landroid/location/ILocationManager;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_34} :catch_36

    .line 187
    nop

    .line 188
    return-void

    .line 185
    :catch_36
    move-exception v0

    move-object p2, v0

    .line 186
    .local p2, "e":Landroid/os/RemoteException;
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "locationName":Ljava/lang/String;
    .end local p2    # "maxResults":I
    .local v1, "locationName":Ljava/lang/String;
    .local v2, "maxResults":I
    invoke-virtual/range {v0 .. v10}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 24
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
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    new-instance v0, Landroid/location/Geocoder$SynchronousGeocoder;

    invoke-direct {v0}, Landroid/location/Geocoder$SynchronousGeocoder;-><init>()V

    move-object v12, v0

    .line 287
    .local v12, "listener":Landroid/location/Geocoder$SynchronousGeocoder;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v12}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V

    .line 289
    invoke-virtual {v12}, Landroid/location/Geocoder$SynchronousGeocoder;->getResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V
    .registers 28
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .param p11, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 324
    move-object/from16 v1, p0

    new-instance v2, Landroid/location/provider/ForwardGeocodeRequest$Builder;

    iget-object v13, v1, Landroid/location/Geocoder;->mLocale:Ljava/util/Locale;

    .line 333
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    iget-object v0, v1, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v3, p1

    move/from16 v12, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v2 .. v15}, Landroid/location/provider/ForwardGeocodeRequest$Builder;-><init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;)V

    .line 335
    .local v2, "b":Landroid/location/provider/ForwardGeocodeRequest$Builder;
    iget-object v0, v1, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 336
    iget-object v0, v1, Landroid/location/Geocoder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/provider/ForwardGeocodeRequest$Builder;->setCallingAttributionTag(Ljava/lang/String;)Landroid/location/provider/ForwardGeocodeRequest$Builder;

    .line 339
    :cond_30
    :try_start_30
    iget-object v0, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    invoke-virtual {v2}, Landroid/location/provider/ForwardGeocodeRequest$Builder;->build()Landroid/location/provider/ForwardGeocodeRequest;

    move-result-object v3

    new-instance v4, Landroid/location/Geocoder$GeocodeCallbackImpl;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_44

    move-object/from16 v5, p11

    :try_start_3a
    invoke-direct {v4, v5}, Landroid/location/Geocoder$GeocodeCallbackImpl;-><init>(Landroid/location/Geocoder$GeocodeListener;)V

    invoke-interface {v0, v3, v4}, Landroid/location/ILocationManager;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_40} :catch_42

    .line 342
    nop

    .line 343
    return-void

    .line 340
    :catch_42
    move-exception v0

    goto :goto_47

    :catch_44
    move-exception v0

    move-object/from16 v5, p11

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :goto_47
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;ILandroid/location/Geocoder$GeocodeListener;)V
    .registers 16
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 241
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v11, p3

    .end local p1    # "locationName":Ljava/lang/String;
    .end local p2    # "maxResults":I
    .end local p3    # "listener":Landroid/location/Geocoder$GeocodeListener;
    .local v1, "locationName":Ljava/lang/String;
    .local v2, "maxResults":I
    .local v11, "listener":Landroid/location/Geocoder$GeocodeListener;
    invoke-virtual/range {v0 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V

    .line 242
    return-void
.end method
