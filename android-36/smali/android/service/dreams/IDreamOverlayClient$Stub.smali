.class public abstract Landroid/service/dreams/IDreamOverlayClient$Stub;
.super Landroid/os/Binder;
.source "IDreamOverlayClient.java"

# interfaces
.implements Landroid/service/dreams/IDreamOverlayClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamOverlayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlayClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_comeToFront:I = 0x5

.field static final blacklist TRANSACTION_endDream:I = 0x3

.field static final blacklist TRANSACTION_onWakeRequested:I = 0x4

.field static final blacklist TRANSACTION_startDream:I = 0x1

.field static final blacklist TRANSACTION_wakeUp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.service.dreams.IDreamOverlayClient"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlayClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.service.dreams.IDreamOverlayClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/dreams/IDreamOverlayClient;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/IDreamOverlayClient;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/service/dreams/IDreamOverlayClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamOverlayClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_18

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "comeToFront"

    return-object v0

    .line 101
    :pswitch_8
    const-string/jumbo v0, "onWakeRequested"

    return-object v0

    .line 97
    :pswitch_c
    const-string v0, "endDream"

    return-object v0

    .line 93
    :pswitch_f
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 89
    :pswitch_13
    const-string/jumbo v0, "startDream"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 291
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/service/dreams/IDreamOverlayClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const-string v0, "android.service.dreams.IDreamOverlayClient"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->comeToFront()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_62

    .line 161
    :pswitch_25
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->onWakeRequested()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_62

    .line 155
    :pswitch_2c
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->endDream()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_62

    .line 149
    :pswitch_33
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->wakeUp()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_62

    .line 133
    :pswitch_3a
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 135
    .local v4, "_arg0":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlayCallback;

    move-result-object v5

    .line 137
    .local v5, "_arg1":Landroid/service/dreams/IDreamOverlayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 141
    .local v7, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 142
    .local v8, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/dreams/IDreamOverlayClient$Stub;->startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;ZZ)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    nop

    .line 176
    .end local v4    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg1":Landroid/service/dreams/IDreamOverlayCallback;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
