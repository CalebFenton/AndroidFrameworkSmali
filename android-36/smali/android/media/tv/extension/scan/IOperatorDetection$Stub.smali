.class public abstract Landroid/media/tv/extension/scan/IOperatorDetection$Stub;
.super Landroid/os/Binder;
.source "IOperatorDetection.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IOperatorDetection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IOperatorDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IOperatorDetection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setListener:I = 0x2

.field static final blacklist TRANSACTION_setOperatorDetection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.media.tv.extension.scan.IOperatorDetection"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IOperatorDetection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IOperatorDetection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IOperatorDetection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/IOperatorDetection;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/IOperatorDetection;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/IOperatorDetection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/IOperatorDetection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_e

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 73
    :pswitch_9
    const-string/jumbo v0, "setOperatorDetection"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/media/tv/extension/scan/IOperatorDetection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    const-string v0, "android.media.tv.extension.scan.IOperatorDetection"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/scan/IOperatorDetectionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IOperatorDetectionListener;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Landroid/media/tv/extension/scan/IOperatorDetectionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IOperatorDetection$Stub;->setListener(Landroid/media/tv/extension/scan/IOperatorDetectionListener;)I

    move-result v3

    .line 118
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    goto :goto_4a

    .line 105
    .end local v2    # "_arg0":Landroid/media/tv/extension/scan/IOperatorDetectionListener;
    .end local v3    # "_result":I
    :pswitch_34
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 106
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IOperatorDetection$Stub;->setOperatorDetection(Landroid/os/Bundle;)I

    move-result v3

    .line 108
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    nop

    .line 127
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :goto_4a
    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
