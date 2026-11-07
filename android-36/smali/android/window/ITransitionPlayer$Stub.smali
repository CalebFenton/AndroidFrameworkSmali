.class public abstract Landroid/window/ITransitionPlayer$Stub;
.super Landroid/os/Binder;
.source "ITransitionPlayer.java"

# interfaces
.implements Landroid/window/ITransitionPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITransitionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITransitionPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onTransitionReady:I = 0x1

.field static final blacklist TRANSACTION_requestStartTransition:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.window.ITransitionPlayer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITransitionPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "android.window.ITransitionPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITransitionPlayer;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/window/ITransitionPlayer;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Landroid/window/ITransitionPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITransitionPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_c

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string/jumbo v0, "requestStartTransition"

    return-object v0

    .line 98
    :pswitch_9
    const-string v0, "onTransitionReady"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/window/ITransitionPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "android.window.ITransitionPlayer"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionRequestInfo;

    .line 147
    .local v3, "_arg1":Landroid/window/TransitionRequestInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/window/ITransitionPlayer$Stub;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    .line 149
    goto :goto_54

    .line 130
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/TransitionRequestInfo;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 132
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo;

    .line 134
    .local v3, "_arg1":Landroid/window/TransitionInfo;
    sget-object v4, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 136
    .local v4, "_arg2":Landroid/view/SurfaceControl$Transaction;
    sget-object v5, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    .line 137
    .local v5, "_arg3":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/ITransitionPlayer$Stub;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 139
    nop

    .line 156
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/TransitionInfo;
    .end local v4    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    .end local v5    # "_arg3":Landroid/view/SurfaceControl$Transaction;
    :goto_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
