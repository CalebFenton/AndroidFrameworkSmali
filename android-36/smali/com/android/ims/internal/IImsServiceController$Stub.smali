.class public abstract Lcom/android/ims/internal/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceController"

.field static final blacklist TRANSACTION_addFeatureStatusCallback:I = 0x5

.field static final greylist-max-o TRANSACTION_createEmergencyMMTelFeature:I = 0x1

.field static final greylist-max-o TRANSACTION_createMMTelFeature:I = 0x2

.field static final greylist-max-o TRANSACTION_createRcsFeature:I = 0x3

.field static final blacklist TRANSACTION_removeFeatureStatusCallback:I = 0x6

.field static final greylist-max-o TRANSACTION_removeImsFeature:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "com.android.ims.internal.IImsServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceController;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsServiceController;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_5
    const-string/jumbo v0, "removeFeatureStatusCallback"

    return-object v0

    .line 96
    :pswitch_9
    const-string v0, "addFeatureStatusCallback"

    return-object v0

    .line 92
    :pswitch_c
    const-string/jumbo v0, "removeImsFeature"

    return-object v0

    .line 88
    :pswitch_10
    const-string v0, "createRcsFeature"

    return-object v0

    .line 84
    :pswitch_13
    const-string v0, "createMMTelFeature"

    return-object v0

    .line 80
    :pswitch_16
    const-string v0, "createEmergencyMMTelFeature"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 330
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 115
    const-string v0, "com.android.ims.internal.IImsServiceController"

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_16
    packed-switch p1, :pswitch_data_9c

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 182
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 187
    .local v4, "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_9a

    .line 169
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 174
    .restart local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_9a

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsServiceController$Stub;->removeImsFeature(II)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_9a

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceController$Stub;->createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v3

    .line 151
    .local v3, "_result":Lcom/android/ims/internal/IImsRcsFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 153
    goto :goto_9a

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsRcsFeature;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceController$Stub;->createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v3

    .line 141
    .local v3, "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 143
    goto :goto_9a

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceController$Stub;->createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v3

    .line 131
    .restart local v3    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 133
    nop

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    :goto_9a
    return v1

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_52
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
