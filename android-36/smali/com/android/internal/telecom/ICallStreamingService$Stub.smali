.class public abstract Lcom/android/internal/telecom/ICallStreamingService$Stub;
.super Landroid/os/Binder;
.source "ICallStreamingService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCallStreamingStarted:I = 0x2

.field static final blacklist TRANSACTION_onCallStreamingStateChanged:I = 0x4

.field static final blacklist TRANSACTION_onCallStreamingStopped:I = 0x3

.field static final blacklist TRANSACTION_setStreamingCallAdapter:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallStreamingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallStreamingService;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallStreamingService;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_12

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_5
    const-string v0, "onCallStreamingStateChanged"

    return-object v0

    .line 82
    :pswitch_8
    const-string v0, "onCallStreamingStopped"

    return-object v0

    .line 78
    :pswitch_b
    const-string v0, "onCallStreamingStarted"

    return-object v0

    .line 74
    :pswitch_e
    const-string/jumbo v0, "setStreamingCallAdapter"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
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

    .line 217
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

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

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 135
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStateChanged(I)V

    .line 138
    goto :goto_4b

    .line 129
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStopped()V

    .line 130
    goto :goto_4b

    .line 122
    :pswitch_2d
    sget-object v2, Landroid/telecom/StreamingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/StreamingCall;

    .line 123
    .local v2, "_arg0":Landroid/telecom/StreamingCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStarted(Landroid/telecom/StreamingCall;)V

    .line 125
    goto :goto_4b

    .line 114
    .end local v2    # "_arg0":Landroid/telecom/StreamingCall;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IStreamingCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IStreamingCallAdapter;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Lcom/android/internal/telecom/IStreamingCallAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V

    .line 117
    nop

    .line 145
    .end local v2    # "_arg0":Lcom/android/internal/telecom/IStreamingCallAdapter;
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_2d
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
