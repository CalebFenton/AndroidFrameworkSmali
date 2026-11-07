.class public abstract Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceActivityListener.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityLaunchBlocked:I = 0x3

.field static final blacklist TRANSACTION_onDisplayEmpty:I = 0x2

.field static final blacklist TRANSACTION_onSecureWindowHidden:I = 0x5

.field static final blacklist TRANSACTION_onSecureWindowShown:I = 0x4

.field static final blacklist TRANSACTION_onTopActivityChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.companion.virtual.IVirtualDeviceActivityListener"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "android.companion.virtual.IVirtualDeviceActivityListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDeviceActivityListener;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_1a

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :pswitch_5
    const-string/jumbo v0, "onSecureWindowHidden"

    return-object v0

    .line 120
    :pswitch_9
    const-string/jumbo v0, "onSecureWindowShown"

    return-object v0

    .line 116
    :pswitch_d
    const-string/jumbo v0, "onActivityLaunchBlocked"

    return-object v0

    .line 112
    :pswitch_11
    const-string/jumbo v0, "onDisplayEmpty"

    return-object v0

    .line 108
    :pswitch_15
    const-string/jumbo v0, "onTopActivityChanged"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 334
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const-string v0, "android.companion.virtual.IVirtualDeviceActivityListener"

    .line 140
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v1

    .line 147
    :cond_16
    packed-switch p1, :pswitch_data_8a

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 198
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onSecureWindowHidden(I)V

    .line 201
    goto :goto_89

    .line 186
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 190
    .local v3, "_arg1":Landroid/content/ComponentName;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 191
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 193
    goto :goto_89

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 176
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 178
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentSender;

    .line 179
    .local v5, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V

    .line 181
    goto :goto_89

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Landroid/content/IntentSender;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onDisplayEmpty(I)V

    .line 167
    goto :goto_89

    .line 152
    .end local v2    # "_arg0":I
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 156
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 157
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    .line 159
    nop

    .line 208
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":I
    :goto_89
    return v1

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_72
        :pswitch_67
        :pswitch_44
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
