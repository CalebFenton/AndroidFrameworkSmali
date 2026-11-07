.class public abstract Landroid/adservices/topics/ITopicsService$Stub;
.super Landroid/os/Binder;
.source "ITopicsService.java"

# interfaces
.implements Landroid/adservices/topics/ITopicsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/topics/ITopicsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/ITopicsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getTopics:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.adservices.topics.ITopicsService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/topics/ITopicsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/topics/ITopicsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "android.adservices.topics.ITopicsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/topics/ITopicsService;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/adservices/topics/ITopicsService;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Landroid/adservices/topics/ITopicsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/topics/ITopicsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_8

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 64
    :pswitch_5
    const-string v0, "getTopics"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
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

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 75
    invoke-static {p1}, Landroid/adservices/topics/ITopicsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 79
    const-string v0, "android.adservices.topics.ITopicsService"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 92
    :pswitch_1e
    sget-object v2, Landroid/adservices/topics/GetTopicsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/topics/GetTopicsParam;

    .line 94
    .local v2, "_arg0":Landroid/adservices/topics/GetTopicsParam;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 96
    .local v3, "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/topics/IGetTopicsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/topics/IGetTopicsCallback;

    move-result-object v4

    .line 97
    .local v4, "_arg2":Landroid/adservices/topics/IGetTopicsCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/topics/ITopicsService$Stub;->getTopics(Landroid/adservices/topics/GetTopicsParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/topics/IGetTopicsCallback;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    nop

    .line 106
    .end local v2    # "_arg0":Landroid/adservices/topics/GetTopicsParam;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/topics/IGetTopicsCallback;
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
