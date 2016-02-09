.class public abstract Lcom/android/internal/location/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Lcom/android/internal/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.location.ILocationProvider"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_getProperties:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x5

.field static final TRANSACTION_getStatusUpdateTime:I = 0x6

.field static final TRANSACTION_sendExtraCommand:I = 0x7

.field static final TRANSACTION_setRequest:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "com.android.internal.location.ILocationProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/location/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.internal.location.ILocationProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/location/ILocationProvider;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Lcom/android/internal/location/ILocationProvider;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 49
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->enable()V

    #@19
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 56
    const/4 v10, 0x1

    #@1d
    return v10

    #@1e
    .line 60
    :sswitch_2
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@21
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 61
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->disable()V

    #@27
    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 63
    const/4 v10, 0x1

    #@2b
    return v10

    #@2c
    .line 67
    :sswitch_3
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@2f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v10

    #@36
    if-eqz v10, :cond_0

    #@38
    .line 70
    sget-object v10, Lcom/android/internal/location/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Lcom/android/internal/location/ProviderRequest;

    #@40
    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v10

    #@44
    if-eqz v10, :cond_1

    #@46
    .line 77
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@48
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b
    move-result-object v4

    #@4c
    check-cast v4, Landroid/os/WorkSource;

    #@4e
    .line 82
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/location/ILocationProvider$Stub;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@51
    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 84
    const/4 v10, 0x1

    #@55
    return v10

    #@56
    .line 73
    :cond_0
    const/4 v1, 0x0

    #@57
    .local v1, "_arg0":Lcom/android/internal/location/ProviderRequest;
    goto :goto_0

    #@58
    .line 80
    .end local v1    # "_arg0":Lcom/android/internal/location/ProviderRequest;
    :cond_1
    const/4 v4, 0x0

    #@59
    .local v4, "_arg1":Landroid/os/WorkSource;
    goto :goto_1

    #@5a
    .line 88
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :sswitch_4
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@5d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@63
    move-result-object v8

    #@64
    .line 90
    .local v8, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 91
    if-eqz v8, :cond_2

    #@69
    .line 92
    const/4 v10, 0x1

    #@6a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 93
    const/4 v10, 0x1

    #@6e
    invoke-virtual {v8, p3, v10}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@71
    .line 98
    :goto_2
    const/4 v10, 0x1

    #@72
    return v10

    #@73
    .line 96
    :cond_2
    const/4 v10, 0x0

    #@74
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    goto :goto_2

    #@78
    .line 102
    .end local v8    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_5
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@7b
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 104
    new-instance v0, Landroid/os/Bundle;

    #@80
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@83
    .line 105
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/location/ILocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    #@86
    move-result v5

    #@87
    .line 106
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 107
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    .line 108
    if-eqz v0, :cond_3

    #@8f
    .line 109
    const/4 v10, 0x1

    #@90
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@93
    .line 110
    const/4 v10, 0x1

    #@94
    invoke-virtual {v0, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@97
    .line 115
    :goto_3
    const/4 v10, 0x1

    #@98
    return v10

    #@99
    .line 113
    :cond_3
    const/4 v10, 0x0

    #@9a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    goto :goto_3

    #@9e
    .line 119
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v5    # "_result":I
    :sswitch_6
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@a1
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 120
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->getStatusUpdateTime()J

    #@a7
    move-result-wide v6

    #@a8
    .line 121
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab
    .line 122
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@ae
    .line 123
    const/4 v10, 0x1

    #@af
    return v10

    #@b0
    .line 127
    .end local v6    # "_result":J
    :sswitch_7
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    #@b3
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    .line 131
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v10

    #@be
    if-eqz v10, :cond_4

    #@c0
    .line 132
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c2
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c5
    move-result-object v3

    #@c6
    check-cast v3, Landroid/os/Bundle;

    #@c8
    .line 137
    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/location/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@cb
    move-result v9

    #@cc
    .line 138
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf
    .line 139
    if-eqz v9, :cond_5

    #@d1
    const/4 v10, 0x1

    #@d2
    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d5
    .line 140
    if-eqz v3, :cond_6

    #@d7
    .line 141
    const/4 v10, 0x1

    #@d8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@db
    .line 142
    const/4 v10, 0x1

    #@dc
    invoke-virtual {v3, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@df
    .line 147
    :goto_6
    const/4 v10, 0x1

    #@e0
    return v10

    #@e1
    .line 135
    .end local v9    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    #@e2
    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_4

    #@e3
    .line 139
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .restart local v9    # "_result":Z
    :cond_5
    const/4 v10, 0x0

    #@e4
    goto :goto_5

    #@e5
    .line 145
    :cond_6
    const/4 v10, 0x0

    #@e6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@e9
    goto :goto_6

    #@ea
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
