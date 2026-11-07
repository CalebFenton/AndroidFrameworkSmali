.class public abstract Landroid/media/tv/extension/pvr/IRecordedContents$Stub;
.super Landroid/os/Binder;
.source "IRecordedContents.java"

# interfaces
.implements Landroid/media/tv/extension/pvr/IRecordedContents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/pvr/IRecordedContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/pvr/IRecordedContents$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteRecordedContents:I = 0x1

.field static final blacklist TRANSACTION_getRecordedContentsLockInfoAsync:I = 0x3

.field static final blacklist TRANSACTION_getRecordedContentsLockInfoSync:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.media.tv.extension.pvr.IRecordedContents"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/pvr/IRecordedContents$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/pvr/IRecordedContents;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.media.tv.extension.pvr.IRecordedContents"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/pvr/IRecordedContents;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/pvr/IRecordedContents;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/media/tv/extension/pvr/IRecordedContents$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/pvr/IRecordedContents$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_e

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string v0, "getRecordedContentsLockInfoAsync"

    return-object v0

    .line 74
    :pswitch_8
    const-string v0, "getRecordedContentsLockInfoSync"

    return-object v0

    .line 70
    :pswitch_b
    const-string v0, "deleteRecordedContents"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/media/tv/extension/pvr/IRecordedContents$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.media.tv.extension.pvr.IRecordedContents"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_16
    packed-switch p1, :pswitch_data_5e

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback;

    move-result-object v3

    .line 130
    .local v3, "_arg1":Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/pvr/IRecordedContents$Stub;->getRecordedContentsLockInfoAsync(Ljava/lang/String;Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_5c

    .line 117
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/pvr/IRecordedContents$Stub;->getRecordedContentsLockInfoSync(Ljava/lang/String;)I

    move-result v3

    .line 120
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    goto :goto_5c

    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback;

    move-result-object v3

    .line 109
    .local v3, "_arg1":Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/pvr/IRecordedContents$Stub;->deleteRecordedContents([Ljava/lang/String;Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    nop

    .line 140
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback;
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_46
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
