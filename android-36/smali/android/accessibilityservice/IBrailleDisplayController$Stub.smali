.class public abstract Landroid/accessibilityservice/IBrailleDisplayController$Stub;
.super Landroid/os/Binder;
.source "IBrailleDisplayController.java"

# interfaces
.implements Landroid/accessibilityservice/IBrailleDisplayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IBrailleDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IBrailleDisplayController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onConnectionFailed:I = 0x2

.field static final blacklist TRANSACTION_onDisconnected:I = 0x4

.field static final blacklist TRANSACTION_onInput:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.accessibilityservice.IBrailleDisplayController"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.accessibilityservice.IBrailleDisplayController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accessibilityservice/IBrailleDisplayController;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IBrailleDisplayController;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/accessibilityservice/IBrailleDisplayController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_16

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_5
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 82
    :pswitch_9
    const-string/jumbo v0, "onInput"

    return-object v0

    .line 78
    :pswitch_d
    const-string/jumbo v0, "onConnectionFailed"

    return-object v0

    .line 74
    :pswitch_11
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
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

    .line 220
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    const-string v0, "android.accessibilityservice.IBrailleDisplayController"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 109
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_1e
    invoke-virtual {p0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onDisconnected()V

    .line 140
    goto :goto_4b

    .line 132
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 133
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onInput([B)V

    .line 135
    goto :goto_4b

    .line 124
    .end local v2    # "_arg0":[B
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onConnectionFailed(I)V

    .line 127
    goto :goto_4b

    .line 114
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayConnection;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Landroid/accessibilityservice/IBrailleDisplayConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 117
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onConnected(Landroid/accessibilityservice/IBrailleDisplayConnection;[B)V

    .line 119
    nop

    .line 147
    .end local v2    # "_arg0":Landroid/accessibilityservice/IBrailleDisplayConnection;
    .end local v3    # "_arg1":[B
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2d
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
