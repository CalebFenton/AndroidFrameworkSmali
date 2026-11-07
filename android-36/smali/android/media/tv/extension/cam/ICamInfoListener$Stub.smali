.class public abstract Landroid/media/tv/extension/cam/ICamInfoListener$Stub;
.super Landroid/os/Binder;
.source "ICamInfoListener.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCamInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_onNewTypeCamInsert:I = 0x3

.field static final blacklist TRANSACTION_onSlotInfoChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.media.tv.extension.cam.ICamInfoListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamInfoListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamInfoListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamInfoListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/cam/ICamInfoListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/media/tv/extension/cam/ICamInfoListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_12

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string/jumbo v0, "onNewTypeCamInsert"

    return-object v0

    .line 69
    :pswitch_9
    const-string/jumbo v0, "onSlotInfoChanged"

    return-object v0

    .line 65
    :pswitch_d
    const-string/jumbo v0, "onCamInfoChanged"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 196
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    const-string v0, "android.media.tv.extension.cam.ICamInfoListener"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_16
    packed-switch p1, :pswitch_data_58

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 121
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 124
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->onNewTypeCamInsert(ILandroid/os/Bundle;)V

    .line 126
    goto :goto_57

    .line 111
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 114
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->onSlotInfoChanged(ILandroid/os/Bundle;)V

    .line 116
    goto :goto_57

    .line 101
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 104
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->onCamInfoChanged(ILandroid/os/Bundle;)V

    .line 106
    nop

    .line 133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
