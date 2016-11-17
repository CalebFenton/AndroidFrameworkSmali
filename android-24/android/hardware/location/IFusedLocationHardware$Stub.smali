.class public abstract Landroid/hardware/location/IFusedLocationHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedLocationHardware.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IFusedLocationHardware"

.field static final TRANSACTION_flushBatchedLocations:I = 0xc

.field static final TRANSACTION_getSupportedBatchSize:I = 0x3

.field static final TRANSACTION_getVersion:I = 0xd

.field static final TRANSACTION_injectDeviceContext:I = 0xb

.field static final TRANSACTION_injectDiagnosticData:I = 0x9

.field static final TRANSACTION_registerSink:I = 0x1

.field static final TRANSACTION_requestBatchOfLocations:I = 0x7

.field static final TRANSACTION_startBatching:I = 0x4

.field static final TRANSACTION_stopBatching:I = 0x5

.field static final TRANSACTION_supportsDeviceContextInjection:I = 0xa

.field static final TRANSACTION_supportsDiagnosticDataInjection:I = 0x8

.field static final TRANSACTION_unregisterSink:I = 0x2

.field static final TRANSACTION_updateBatchingOptions:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.hardware.location.IFusedLocationHardware"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.hardware.location.IFusedLocationHardware"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IFusedLocationHardware;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/hardware/location/IFusedLocationHardware;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 49
    :sswitch_0
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    return v7

    #@11
    .line 54
    :sswitch_1
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v6

    #@1b
    invoke-static {v6}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    #@1e
    move-result-object v1

    #@1f
    .line 57
    .local v1, "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    #@22
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 59
    return v7

    #@26
    .line 63
    .end local v1    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    :sswitch_2
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@29
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v6}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    #@33
    move-result-object v1

    #@34
    .line 66
    .restart local v1    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    #@37
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 68
    return v7

    #@3b
    .line 72
    .end local v1    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    :sswitch_3
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@3e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 73
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getSupportedBatchSize()I

    #@44
    move-result v4

    #@45
    .line 74
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 75
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 76
    return v7

    #@4c
    .line 80
    .end local v4    # "_result":I
    :sswitch_4
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@4f
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v0

    #@56
    .line 84
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_0

    #@5c
    .line 85
    sget-object v6, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/location/FusedBatchOptions;

    #@64
    .line 90
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->startBatching(ILandroid/location/FusedBatchOptions;)V

    #@67
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 92
    return v7

    #@6b
    .line 88
    :cond_0
    const/4 v3, 0x0

    #@6c
    .local v3, "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_0

    #@6d
    .line 96
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_5
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@70
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73
    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v0

    #@77
    .line 99
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->stopBatching(I)V

    #@7a
    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 101
    return v7

    #@7e
    .line 105
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@81
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v0

    #@88
    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_1

    #@8e
    .line 110
    sget-object v6, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@90
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@93
    move-result-object v3

    #@94
    check-cast v3, Landroid/location/FusedBatchOptions;

    #@96
    .line 115
    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    #@99
    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    .line 117
    return v7

    #@9d
    .line 113
    :cond_1
    const/4 v3, 0x0

    #@9e
    .restart local v3    # "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_1

    #@9f
    .line 121
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_7
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@a2
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v0

    #@a9
    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->requestBatchOfLocations(I)V

    #@ac
    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@af
    .line 126
    return v7

    #@b0
    .line 130
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v8, "android.hardware.location.IFusedLocationHardware"

    #@b3
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 131
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDiagnosticDataInjection()Z

    #@b9
    move-result v5

    #@ba
    .line 132
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    .line 133
    if-eqz v5, :cond_2

    #@bf
    move v6, v7

    #@c0
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    .line 134
    return v7

    #@c4
    .line 138
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@c7
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd
    move-result-object v2

    #@ce
    .line 141
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDiagnosticData(Ljava/lang/String;)V

    #@d1
    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    .line 143
    return v7

    #@d5
    .line 147
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v8, "android.hardware.location.IFusedLocationHardware"

    #@d8
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    .line 148
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDeviceContextInjection()Z

    #@de
    move-result v5

    #@df
    .line 149
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2
    .line 150
    if-eqz v5, :cond_3

    #@e4
    move v6, v7

    #@e5
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e8
    .line 151
    return v7

    #@e9
    .line 155
    .end local v5    # "_result":Z
    :sswitch_b
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@ec
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v0

    #@f3
    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDeviceContext(I)V

    #@f6
    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    .line 160
    return v7

    #@fa
    .line 164
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@fd
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100
    .line 165
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->flushBatchedLocations()V

    #@103
    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@106
    .line 167
    return v7

    #@107
    .line 171
    :sswitch_d
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    #@10a
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10d
    .line 172
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getVersion()I

    #@110
    move-result v4

    #@111
    .line 173
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@114
    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@117
    .line 175
    return v7

    #@118
    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
