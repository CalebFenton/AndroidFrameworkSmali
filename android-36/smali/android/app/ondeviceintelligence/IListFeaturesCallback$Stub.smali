.class public abstract Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;
.super Landroid/os/Binder;
.source "IListFeaturesCallback.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/IListFeaturesCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFailure:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.app.ondeviceintelligence.IListFeaturesCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.app.ondeviceintelligence.IListFeaturesCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_c

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_5
    const-string v0, "onFailure"

    return-object v0

    .line 66
    :pswitch_8
    const-string v0, "onSuccess"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 169
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 85
    const-string v0, "android.app.ondeviceintelligence.IListFeaturesCallback"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 93
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 106
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 111
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 113
    goto :goto_42

    .line 98
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_35
    sget-object v2, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 99
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/ondeviceintelligence/Feature;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->onSuccess(Ljava/util/List;)V

    .line 101
    nop

    .line 120
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/ondeviceintelligence/Feature;>;"
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
