.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 110
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGeocodeProvider"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 129
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    #@11
    .line 130
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 131
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 132
    if-eqz p6, :cond_0

    #@19
    .line 133
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 134
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p6, v0, v3}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 139
    :goto_0
    iget-object v3, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v4, 0x1

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 142
    .local v2, "_result":Ljava/lang/String;
    sget-object v3, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-virtual {v1, p7, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 148
    return-object v2

    #@3b
    .line 137
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@3c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 144
    :catchall_0
    move-exception v3

    #@41
    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 144
    throw v3
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 153
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v3

    #@8
    .line 156
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.location.IGeocodeProvider"

    #@b
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 157
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 158
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 159
    invoke-virtual {v2, p4, p5}, Landroid/os/Parcel;->writeDouble(D)V

    #@17
    .line 160
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    #@1a
    .line 161
    move-wide/from16 v0, p8

    #@1c
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@1f
    .line 162
    move/from16 v0, p10

    #@21
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 163
    if-eqz p11, :cond_0

    #@26
    .line 164
    const/4 v5, 0x1

    #@27
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 165
    const/4 v5, 0x0

    #@2b
    move-object/from16 v0, p11

    #@2d
    invoke-virtual {v0, v2, v5}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    .line 170
    :goto_0
    iget-object v5, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/4 v6, 0x2

    #@33
    const/4 v7, 0x0

    #@34
    invoke-interface {v5, v6, v2, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    .line 171
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@3a
    .line 172
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 173
    .local v4, "_result":Ljava/lang/String;
    sget-object v5, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    move-object/from16 v0, p12

    #@42
    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 176
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 177
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 179
    return-object v4

    #@4c
    .line 168
    .end local v4    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    #@4d
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 175
    :catchall_0
    move-exception v5

    #@52
    .line 176
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 177
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 175
    throw v5
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    const-string/jumbo v0, "android.location.IGeocodeProvider"

    #@3
    return-object v0
.end method
