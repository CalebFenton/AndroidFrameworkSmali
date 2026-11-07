.class public abstract Landroid/media/tv/extension/scan/IScanInterface$Stub;
.super Landroid/os/Binder;
.source "IScanInterface.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IScanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IScanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IScanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x1

.field static final blacklist TRANSACTION_getParameters:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.media.tv.extension.scan.IScanInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IScanInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IScanInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IScanInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/IScanInterface;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/IScanInterface;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/IScanInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/IScanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_c

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_5
    const-string v0, "getParameters"

    return-object v0

    .line 64
    :pswitch_8
    const-string v0, "createSession"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Landroid/media/tv/extension/scan/IScanInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.media.tv.extension.scan.IScanInterface"

    .line 84
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_13

    const v5, 0xffffff

    if-gt v0, v5, :cond_13

    .line 85
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_13
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1c

    .line 88
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v4

    .line 91
    :cond_1c
    packed-switch v0, :pswitch_data_74

    .line 129
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 114
    :pswitch_24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 116
    .local v5, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "_arg2":Ljava/lang/String;
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 121
    .local v8, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/media/tv/extension/scan/IScanInterface$Stub;->getParameters(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 123
    .local v10, "_result":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {v2, v10, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 125
    goto :goto_72

    .line 96
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .end local v10    # "_result":Landroid/os/Bundle;
    :pswitch_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 98
    .local v10, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/tv/extension/scan/IScanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IScanListener;

    move-result-object v13

    .line 104
    .local v13, "_arg3":Landroid/media/tv/extension/scan/IScanListener;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/os/Bundle;

    .line 105
    .local v14, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/media/tv/extension/scan/IScanInterface$Stub;->createSession(ILjava/lang/String;Ljava/lang/String;Landroid/media/tv/extension/scan/IScanListener;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v5

    .line 107
    .local v5, "_result":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    nop

    .line 132
    .end local v5    # "_result":Landroid/os/IBinder;
    .end local v10    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":Landroid/media/tv/extension/scan/IScanListener;
    .end local v14    # "_arg4":Landroid/os/Bundle;
    :goto_72
    return v4

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_46
        :pswitch_24
    .end packed-switch
.end method
