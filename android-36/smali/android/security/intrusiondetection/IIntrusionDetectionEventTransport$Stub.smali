.class public abstract Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;
.super Landroid/os/Binder;
.source "IIntrusionDetectionEventTransport.java"

# interfaces
.implements Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addData:I = 0x2

.field static final blacklist TRANSACTION_initialize:I = 0x1

.field static final blacklist TRANSACTION_release:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionEventTransport"

    invoke-virtual {p0, p0, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionEventTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_10

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "release"

    return-object v0

    .line 77
    :pswitch_9
    const-string v0, "addData"

    return-object v0

    .line 73
    :pswitch_c
    const-string/jumbo v0, "initialize"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
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

    .line 206
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionEventTransport"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_16
    packed-switch p1, :pswitch_data_52

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_1e
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 128
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->release(Lcom/android/internal/infra/AndroidFuture;)V

    .line 130
    goto :goto_51

    .line 117
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_2d
    sget-object v2, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 120
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    .line 122
    goto :goto_51

    .line 109
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_42
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 110
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->initialize(Lcom/android/internal/infra/AndroidFuture;)V

    .line 112
    nop

    .line 137
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
