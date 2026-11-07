.class public abstract Landroid/os/IUpdateEngineStable$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngineStable.java"

# interfaces
.implements Landroid/os/IUpdateEngineStable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngineStable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngineStable$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyPayloadFd:I = 0x1

.field static final blacklist TRANSACTION_bind:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_unbind:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    sget-object v0, Landroid/os/IUpdateEngineStable$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngineStable$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStable;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    sget-object v0, Landroid/os/IUpdateEngineStable$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IUpdateEngineStable;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/os/IUpdateEngineStable;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/os/IUpdateEngineStable$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUpdateEngineStable$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    sget-object v0, Landroid/os/IUpdateEngineStable$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v2

    .line 89
    :cond_16
    if-ne p1, v1, :cond_23

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p0}, Landroid/os/IUpdateEngineStable$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v2

    .line 94
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/os/IUpdateEngineStable$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v2

    .line 99
    :cond_33
    packed-switch p1, :pswitch_data_88

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineStableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStableCallback;

    move-result-object v1

    .line 130
    .local v1, "_arg0":Landroid/os/IUpdateEngineStableCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngineStable$Stub;->unbind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result v3

    .line 132
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    goto :goto_87

    .line 119
    .end local v1    # "_arg0":Landroid/os/IUpdateEngineStableCallback;
    .end local v3    # "_result":Z
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineStableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStableCallback;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":Landroid/os/IUpdateEngineStableCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngineStable$Stub;->bind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result v3

    .line 122
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    goto :goto_87

    .line 104
    .end local v1    # "_arg0":Landroid/os/IUpdateEngineStableCallback;
    .end local v3    # "_result":Z
    :pswitch_67
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 106
    .local v4, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 108
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 110
    .local v7, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/os/IUpdateEngineStable$Stub;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    nop

    .line 141
    .end local v4    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":J
    .end local v9    # "_arg3":[Ljava/lang/String;
    :goto_87
    return v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_67
        :pswitch_51
        :pswitch_3b
    .end packed-switch
.end method
