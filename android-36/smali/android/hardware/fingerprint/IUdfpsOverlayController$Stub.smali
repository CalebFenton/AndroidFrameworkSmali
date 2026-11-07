.class public abstract Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.super Landroid/os/Binder;
.source "IUdfpsOverlayController.java"

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsOverlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideUdfpsOverlay:I = 0x2

.field static final blacklist TRANSACTION_onAcquired:I = 0x3

.field static final blacklist TRANSACTION_onEnrollmentHelp:I = 0x5

.field static final blacklist TRANSACTION_onEnrollmentProgress:I = 0x4

.field static final blacklist TRANSACTION_setDebugMessage:I = 0x6

.field static final blacklist TRANSACTION_showUdfpsOverlay:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_18

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "setDebugMessage"

    return-object v0

    .line 101
    :pswitch_8
    const-string v0, "onEnrollmentHelp"

    return-object v0

    .line 97
    :pswitch_b
    const-string v0, "onEnrollmentProgress"

    return-object v0

    .line 93
    :pswitch_e
    const-string v0, "onAcquired"

    return-object v0

    .line 89
    :pswitch_11
    const-string v0, "hideUdfpsOverlay"

    return-object v0

    .line 85
    :pswitch_14
    const-string v0, "showUdfpsOverlay"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 308
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

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
    packed-switch p1, :pswitch_data_7e

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 183
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->setDebugMessage(ILjava/lang/String;)V

    .line 188
    goto :goto_7d

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentHelp(I)V

    .line 178
    goto :goto_7d

    .line 165
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentProgress(II)V

    .line 170
    goto :goto_7d

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onAcquired(II)V

    .line 160
    goto :goto_7d

    .line 147
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->hideUdfpsOverlay(I)V

    .line 150
    goto :goto_7d

    .line 133
    .end local v2    # "_arg0":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 135
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 137
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 139
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    move-result-object v8

    .line 140
    .local v8, "_arg3":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    .line 142
    nop

    .line 195
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_56
        :pswitch_47
        :pswitch_38
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
