.class public abstract Landroid/window/IRemoteTransition$Stub;
.super Landroid/os/Binder;
.source "IRemoteTransition.java"

# interfaces
.implements Landroid/window/IRemoteTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IRemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IRemoteTransition$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_mergeAnimation:I = 0x2

.field static final blacklist TRANSACTION_onTransitionConsumed:I = 0x4

.field static final blacklist TRANSACTION_startAnimation:I = 0x1

.field static final blacklist TRANSACTION_takeOverAnimation:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.window.IRemoteTransition"

    invoke-virtual {p0, p0, v0}, Landroid/window/IRemoteTransition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "android.window.IRemoteTransition"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IRemoteTransition;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/window/IRemoteTransition;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Landroid/window/IRemoteTransition$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IRemoteTransition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_14

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :pswitch_5
    const-string v0, "onTransitionConsumed"

    return-object v0

    .line 122
    :pswitch_8
    const-string/jumbo v0, "takeOverAnimation"

    return-object v0

    .line 118
    :pswitch_c
    const-string v0, "mergeAnimation"

    return-object v0

    .line 114
    :pswitch_f
    const-string/jumbo v0, "startAnimation"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 328
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Landroid/window/IRemoteTransition$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const-string v6, "android.window.IRemoteTransition"

    .line 142
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 143
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 146
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v7

    .line 149
    :cond_16
    packed-switch p1, :pswitch_data_a8

    .line 209
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 200
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 202
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 203
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v1, v2}, Landroid/window/IRemoteTransition$Stub;->onTransitionConsumed(Landroid/os/IBinder;Z)V

    .line 205
    goto/16 :goto_a7

    .line 184
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 186
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo;

    .line 188
    .local v2, "_arg1":Landroid/window/TransitionInfo;
    sget-object v3, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 190
    .local v3, "_arg2":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v4

    .line 192
    .local v4, "_arg3":Landroid/window/IRemoteTransitionFinishedCallback;
    sget-object v5, Landroid/window/WindowAnimationState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/window/WindowAnimationState;

    .line 193
    .local v5, "_arg4":[Landroid/window/WindowAnimationState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/window/IRemoteTransition$Stub;->takeOverAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;[Landroid/window/WindowAnimationState;)V

    .line 195
    goto :goto_a7

    .line 168
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/window/TransitionInfo;
    .end local v3    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    .end local v4    # "_arg3":Landroid/window/IRemoteTransitionFinishedCallback;
    .end local v5    # "_arg4":[Landroid/window/WindowAnimationState;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/window/TransitionInfo;

    .line 172
    .restart local v2    # "_arg1":Landroid/window/TransitionInfo;
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 174
    .restart local v3    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 176
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v5

    .line 177
    .local v5, "_arg4":Landroid/window/IRemoteTransitionFinishedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/window/IRemoteTransition$Stub;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 179
    goto :goto_a7

    .line 154
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/window/TransitionInfo;
    .end local v3    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Landroid/window/IRemoteTransitionFinishedCallback;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 156
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo;

    .line 158
    .restart local v2    # "_arg1":Landroid/window/TransitionInfo;
    sget-object v3, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 160
    .restart local v3    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v4

    .line 161
    .local v4, "_arg3":Landroid/window/IRemoteTransitionFinishedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/window/IRemoteTransition$Stub;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 163
    nop

    .line 212
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/window/TransitionInfo;
    .end local v3    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    .end local v4    # "_arg3":Landroid/window/IRemoteTransitionFinishedCallback;
    :goto_a7
    return v7

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_84
        :pswitch_5a
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
