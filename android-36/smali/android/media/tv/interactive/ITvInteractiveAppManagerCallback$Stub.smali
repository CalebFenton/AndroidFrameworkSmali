.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppManagerCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInteractiveAppServiceAdded:I = 0x1

.field static final blacklist TRANSACTION_onInteractiveAppServiceRemoved:I = 0x2

.field static final blacklist TRANSACTION_onInteractiveAppServiceUpdated:I = 0x3

.field static final blacklist TRANSACTION_onStateChanged:I = 0x5

.field static final blacklist TRANSACTION_onTvInteractiveAppServiceInfoUpdated:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_1a

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string/jumbo v0, "onStateChanged"

    return-object v0

    .line 86
    :pswitch_9
    const-string/jumbo v0, "onTvInteractiveAppServiceInfoUpdated"

    return-object v0

    .line 82
    :pswitch_d
    const-string/jumbo v0, "onInteractiveAppServiceUpdated"

    return-object v0

    .line 78
    :pswitch_11
    const-string/jumbo v0, "onInteractiveAppServiceRemoved"

    return-object v0

    .line 74
    :pswitch_15
    const-string/jumbo v0, "onInteractiveAppServiceAdded"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 255
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

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
    packed-switch p1, :pswitch_data_66

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 157
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onStateChanged(Ljava/lang/String;III)V

    .line 159
    goto :goto_65

    .line 142
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_35
    sget-object v2, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 143
    .local v2, "_arg0":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    .line 145
    goto :goto_65

    .line 134
    .end local v2    # "_arg0":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V

    .line 137
    goto :goto_65

    .line 126
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V

    .line 129
    goto :goto_65

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceAdded(Ljava/lang/String;)V

    .line 121
    nop

    .line 166
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_65
    return v1

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
