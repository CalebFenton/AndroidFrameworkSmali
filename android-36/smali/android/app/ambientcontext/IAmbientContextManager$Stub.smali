.class public abstract Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.super Landroid/os/Binder;
.source "IAmbientContextManager.java"

# interfaces
.implements Landroid/app/ambientcontext/IAmbientContextManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ambientcontext/IAmbientContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/IAmbientContextManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_queryServiceStatus:I = 0x4

.field static final blacklist TRANSACTION_registerObserver:I = 0x1

.field static final blacklist TRANSACTION_registerObserverWithCallback:I = 0x2

.field static final blacklist TRANSACTION_startConsentActivity:I = 0x5

.field static final blacklist TRANSACTION_unregisterObserver:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    nop

    .line 57
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.app.ambientcontext.IAmbientContextManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    if-eqz p1, :cond_d

    .line 51
    iput-object p1, p0, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 52
    return-void

    .line 49
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ambientcontext/IAmbientContextManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.app.ambientcontext.IAmbientContextManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ambientcontext/IAmbientContextManager;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/app/ambientcontext/IAmbientContextManager;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/app/ambientcontext/IAmbientContextManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_1a

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string/jumbo v0, "startConsentActivity"

    return-object v0

    .line 97
    :pswitch_9
    const-string/jumbo v0, "queryServiceStatus"

    return-object v0

    .line 93
    :pswitch_d
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 89
    :pswitch_11
    const-string/jumbo v0, "registerObserverWithCallback"

    return-object v0

    .line 85
    :pswitch_15
    const-string/jumbo v0, "registerObserver"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 302
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 116
    const-string v0, "android.app.ambientcontext.IAmbientContextManager"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_16
    packed-switch p1, :pswitch_data_9a

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 179
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->startConsentActivity([ILjava/lang/String;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_98

    .line 164
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 166
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 169
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_98

    .line 155
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->unregisterObserver(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_98

    .line 142
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_58
    sget-object v2, Landroid/app/ambientcontext/AmbientContextEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 144
    .local v2, "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v4

    .line 147
    .local v4, "_arg2":Landroid/app/ambientcontext/IAmbientContextObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_98

    .line 129
    .end local v2    # "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/ambientcontext/IAmbientContextObserver;
    :pswitch_76
    sget-object v2, Landroid/app/ambientcontext/AmbientContextEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 131
    .restart local v2    # "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 133
    .local v3, "_arg1":Landroid/app/PendingIntent;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 134
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    nop

    .line 190
    .end local v2    # "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :goto_98
    return v1

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_76
        :pswitch_58
        :pswitch_4a
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist unregisterObserver_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 296
    return-void
.end method
