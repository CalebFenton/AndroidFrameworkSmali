.class public abstract Landroid/media/tv/extension/scan/ILcnConflict$Stub;
.super Landroid/os/Binder;
.source "ILcnConflict.java"

# interfaces
.implements Landroid/media/tv/extension/scan/ILcnConflict;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/ILcnConflict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ILcnConflict$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getLcnConflictGroups:I = 0x1

.field static final blacklist TRANSACTION_resolveLcnConflict:I = 0x2

.field static final blacklist TRANSACTION_setListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.tv.extension.scan.ILcnConflict"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/ILcnConflict$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ILcnConflict;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.media.tv.extension.scan.ILcnConflict"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/ILcnConflict;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/ILcnConflict;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/ILcnConflict$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/ILcnConflict$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_10

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 80
    :pswitch_9
    const-string/jumbo v0, "resolveLcnConflict"

    return-object v0

    .line 76
    :pswitch_d
    const-string v0, "getLcnConflictGroups"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 221
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/media/tv/extension/scan/ILcnConflict$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.media.tv.extension.scan.ILcnConflict"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/scan/ILcnConflictListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ILcnConflictListener;

    move-result-object v2

    .line 130
    .local v2, "_arg0":Landroid/media/tv/extension/scan/ILcnConflictListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/ILcnConflict$Stub;->setListener(Landroid/media/tv/extension/scan/ILcnConflictListener;)I

    move-result v3

    .line 132
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    goto :goto_55

    .line 119
    .end local v2    # "_arg0":Landroid/media/tv/extension/scan/ILcnConflictListener;
    .end local v3    # "_result":I
    :pswitch_34
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    .line 120
    .local v2, "_arg0":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/ILcnConflict$Stub;->resolveLcnConflict([Landroid/os/Bundle;)I

    move-result v3

    .line 122
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    goto :goto_55

    .line 111
    .end local v2    # "_arg0":[Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_4a
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/ILcnConflict$Stub;->getLcnConflictGroups()[Landroid/os/Bundle;

    move-result-object v2

    .line 112
    .local v2, "_result":[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 141
    .end local v2    # "_result":[Landroid/os/Bundle;
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
