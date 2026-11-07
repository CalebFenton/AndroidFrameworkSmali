.class public abstract Landroid/security/apc/IProtectedConfirmation$Stub;
.super Landroid/os/Binder;
.source "IProtectedConfirmation.java"

# interfaces
.implements Landroid/security/apc/IProtectedConfirmation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/apc/IProtectedConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelPrompt:I = 0x2

.field static final blacklist TRANSACTION_isSupported:I = 0x3

.field static final blacklist TRANSACTION_presentPrompt:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.security.apc.IProtectedConfirmation"

    invoke-virtual {p0, p0, v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.security.apc.IProtectedConfirmation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/apc/IProtectedConfirmation;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/security/apc/IProtectedConfirmation;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
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

    .line 89
    const-string v0, "android.security.apc.IProtectedConfirmation"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_16
    packed-switch p1, :pswitch_data_60

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_1e
    invoke-virtual {p0}, Landroid/security/apc/IProtectedConfirmation$Stub;->isSupported()Z

    move-result v2

    .line 128
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    goto :goto_5e

    .line 119
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/apc/IConfirmationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IConfirmationCallback;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Landroid/security/apc/IConfirmationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/security/apc/IProtectedConfirmation$Stub;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_5e

    .line 102
    .end local v2    # "_arg0":Landroid/security/apc/IConfirmationCallback;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/apc/IConfirmationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IConfirmationCallback;

    move-result-object v4

    .line 104
    .local v4, "_arg0":Landroid/security/apc/IConfirmationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 108
    .local v6, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 111
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/security/apc/IProtectedConfirmation$Stub;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    nop

    .line 137
    .end local v4    # "_arg0":Landroid/security/apc/IConfirmationCallback;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":[B
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
