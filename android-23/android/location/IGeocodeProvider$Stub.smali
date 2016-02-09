.class public abstract Landroid/location/IGeocodeProvider$Stub;
.super Landroid/os/Binder;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeocodeProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGeocodeProvider"

.field static final TRANSACTION_getFromLocation:I = 0x1

.field static final TRANSACTION_getFromLocationName:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.location.IGeocodeProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/IGeocodeProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.location.IGeocodeProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/IGeocodeProvider;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/location/IGeocodeProvider;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGeocodeProvider$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/IGeocodeProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 105
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.location.IGeocodeProvider"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.location.IGeocodeProvider"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@1d
    move-result-wide v4

    #@1e
    .line 56
    .local v4, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@21
    move-result-wide v6

    #@22
    .line 58
    .local v6, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v8

    #@26
    .line 60
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 61
    sget-object v3, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v9

    #@34
    check-cast v9, Landroid/location/GeocoderParams;

    #@36
    .line 67
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    #@38
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .local v10, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v3, p0

    #@3d
    .line 68
    invoke-virtual/range {v3 .. v10}, Landroid/location/IGeocodeProvider$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 69
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    .line 70
    move-object/from16 v0, p3

    #@46
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@49
    .line 71
    move-object/from16 v0, p3

    #@4b
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4e
    .line 72
    const/4 v3, 0x1

    #@4f
    return v3

    #@50
    .line 64
    .end local v2    # "_result":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    const/4 v9, 0x0

    #@51
    .local v9, "_arg3":Landroid/location/GeocoderParams;
    goto :goto_0

    #@52
    .line 76
    .end local v4    # "_arg0":D
    .end local v6    # "_arg1":D
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_2
    const-string/jumbo v3, "android.location.IGeocodeProvider"

    #@55
    move-object/from16 v0, p2

    #@57
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v13

    #@5e
    .line 80
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@61
    move-result-wide v6

    #@62
    .line 82
    .restart local v6    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@65
    move-result-wide v16

    #@66
    .line 84
    .local v16, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@69
    move-result-wide v18

    #@6a
    .line 86
    .local v18, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@6d
    move-result-wide v20

    #@6e
    .line 88
    .local v20, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v22

    #@72
    .line 90
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_1

    #@78
    .line 91
    sget-object v3, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7f
    move-result-object v23

    #@80
    check-cast v23, Landroid/location/GeocoderParams;

    #@82
    .line 97
    :goto_1
    new-instance v24, Ljava/util/ArrayList;

    #@84
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@87
    .local v24, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v12, p0

    #@89
    move-wide v14, v6

    #@8a
    .line 98
    invoke-virtual/range {v12 .. v24}, Landroid/location/IGeocodeProvider$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    .line 99
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 100
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@96
    .line 101
    move-object/from16 v0, p3

    #@98
    move-object/from16 v1, v24

    #@9a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@9d
    .line 102
    const/4 v3, 0x1

    #@9e
    return v3

    #@9f
    .line 94
    .end local v2    # "_result":Ljava/lang/String;
    .end local v24    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const/16 v23, 0x0

    #@a1
    .local v23, "_arg6":Landroid/location/GeocoderParams;
    goto :goto_1

    #@a2
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
