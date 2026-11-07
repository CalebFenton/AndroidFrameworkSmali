.class public abstract Landroid/os/IUserRestrictionsListener$Stub;
.super Landroid/os/Binder;
.source "IUserRestrictionsListener.java"

# interfaces
.implements Landroid/os/IUserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserRestrictionsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserRestrictionsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onUserRestrictionsChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.os.IUserRestrictionsListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserRestrictionsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IUserRestrictionsListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "android.os.IUserRestrictionsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IUserRestrictionsListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/os/IUserRestrictionsListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Landroid/os/IUserRestrictionsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserRestrictionsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_a

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 59
    :pswitch_5
    const-string/jumbo v0, "onUserRestrictionsChanged"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 70
    invoke-static {p1}, Landroid/os/IUserRestrictionsListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "android.os.IUserRestrictionsListener"

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 82
    :cond_16
    packed-switch p1, :pswitch_data_3a

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 91
    .local v3, "_arg1":Landroid/os/Bundle;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 92
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IUserRestrictionsListener$Stub;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 94
    nop

    .line 101
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    return v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
