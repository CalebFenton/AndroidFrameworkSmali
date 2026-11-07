.class public abstract Landroid/uwb/IUwbOemExtensionCallback$Stub;
.super Landroid/os/Binder;
.source "IUwbOemExtensionCallback.java"

# interfaces
.implements Landroid/uwb/IUwbOemExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbOemExtensionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbOemExtensionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCheckPointedTarget:I = 0x5

.field static final blacklist TRANSACTION_onDeviceStatusNotificationReceived:I = 0x2

.field static final blacklist TRANSACTION_onRangingReportReceived:I = 0x4

.field static final blacklist TRANSACTION_onSessionConfigurationReceived:I = 0x3

.field static final blacklist TRANSACTION_onSessionStatusNotificationReceived:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.uwb.IUwbOemExtensionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbOemExtensionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.uwb.IUwbOemExtensionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/uwb/IUwbOemExtensionCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/uwb/IUwbOemExtensionCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/uwb/IUwbOemExtensionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/uwb/IUwbOemExtensionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "onCheckPointedTarget"

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "onRangingReportReceived"

    return-object v0

    .line 82
    :pswitch_b
    const-string v0, "onSessionConfigurationReceived"

    return-object v0

    .line 78
    :pswitch_e
    const-string v0, "onDeviceStatusNotificationReceived"

    return-object v0

    .line 74
    :pswitch_11
    const-string v0, "onSessionStatusNotificationReceived"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 270
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-string v0, "android.uwb.IUwbOemExtensionCallback"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_16
    packed-switch p1, :pswitch_data_80

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 154
    :pswitch_1e
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 155
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->onCheckPointedTarget(Landroid/os/PersistableBundle;)Z

    move-result v3

    .line 157
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    goto :goto_7e

    .line 144
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":Z
    :pswitch_34
    sget-object v2, Landroid/uwb/RangingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/RangingReport;

    .line 145
    .local v2, "_arg0":Landroid/uwb/RangingReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;

    move-result-object v3

    .line 147
    .local v3, "_result":Landroid/uwb/RangingReport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 149
    goto :goto_7e

    .line 134
    .end local v2    # "_arg0":Landroid/uwb/RangingReport;
    .end local v3    # "_result":Landroid/uwb/RangingReport;
    :pswitch_4a
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 135
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->onSessionConfigurationReceived(Landroid/os/PersistableBundle;)I

    move-result v3

    .line 137
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    goto :goto_7e

    .line 126
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_result":I
    :pswitch_60
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 127
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V

    .line 129
    goto :goto_7e

    .line 118
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :pswitch_6f
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 119
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbOemExtensionCallback$Stub;->onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V

    .line 121
    nop

    .line 166
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :goto_7e
    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_60
        :pswitch_4a
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
