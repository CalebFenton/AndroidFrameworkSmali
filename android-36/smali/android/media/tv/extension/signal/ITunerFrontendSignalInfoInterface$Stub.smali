.class public abstract Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub;
.super Landroid/os/Binder;
.source "ITunerFrontendSignalInfoInterface.java"

# interfaces
.implements Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFrontendSignalInfo:I = 0x1

.field static final blacklist TRANSACTION_setFrontendSignalInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.media.tv.extension.signal.ITunerFrontendSignalInfoInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.media.tv.extension.signal.ITunerFrontendSignalInfoInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_c

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :pswitch_5
    const-string/jumbo v0, "setFrontendSignalInfoListener"

    return-object v0

    .line 63
    :pswitch_9
    const-string v0, "getFrontendSignalInfo"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 78
    invoke-static {p1}, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 82
    const-string v0, "android.media.tv.extension.signal.ITunerFrontendSignalInfoInterface"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 90
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener;

    move-result-object v2

    .line 106
    .local v2, "_arg0":Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub;->setFrontendSignalInfoListener(Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    goto :goto_42

    .line 95
    .end local v2    # "_arg0":Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub;->getFrontendSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 98
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 100
    nop

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
