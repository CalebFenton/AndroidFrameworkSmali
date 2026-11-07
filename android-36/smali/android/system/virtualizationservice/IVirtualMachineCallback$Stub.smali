.class public abstract Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualMachineCallback.java"

# interfaces
.implements Landroid/system/virtualizationservice/IVirtualMachineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/IVirtualMachineCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDied:I = 0x5

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onPayloadFinished:I = 0x3

.field static final blacklist TRANSACTION_onPayloadReady:I = 0x2

.field static final blacklist TRANSACTION_onPayloadStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.system.virtualizationservice.IVirtualMachineCallback"

    invoke-virtual {p0, p0, v0}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/virtualizationservice/IVirtualMachineCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.system.virtualizationservice.IVirtualMachineCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/virtualizationservice/IVirtualMachineCallback;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/system/virtualizationservice/IVirtualMachineCallback;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const-string v0, "android.system.virtualizationservice.IVirtualMachineCallback"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_16
    packed-switch p1, :pswitch_data_66

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->onDied(II)V

    .line 135
    goto :goto_65

    .line 118
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3, v4}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->onError(IILjava/lang/String;)V

    .line 125
    goto :goto_65

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->onPayloadFinished(II)V

    .line 113
    goto :goto_65

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->onPayloadReady(I)V

    .line 103
    goto :goto_65

    .line 92
    .end local v2    # "_arg0":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->onPayloadStarted(I)V

    .line 95
    nop

    .line 142
    .end local v2    # "_arg0":I
    :goto_65
    return v1

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4f
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
