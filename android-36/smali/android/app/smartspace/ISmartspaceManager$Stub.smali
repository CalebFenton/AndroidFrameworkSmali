.class public abstract Landroid/app/smartspace/ISmartspaceManager$Stub;
.super Landroid/os/Binder;
.source "ISmartspaceManager.java"

# interfaces
.implements Landroid/app/smartspace/ISmartspaceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/ISmartspaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSmartspaceSession:I = 0x1

.field static final blacklist TRANSACTION_destroySmartspaceSession:I = 0x6

.field static final blacklist TRANSACTION_notifySmartspaceEvent:I = 0x2

.field static final blacklist TRANSACTION_registerSmartspaceUpdates:I = 0x4

.field static final blacklist TRANSACTION_requestSmartspaceUpdate:I = 0x3

.field static final blacklist TRANSACTION_unregisterSmartspaceUpdates:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/smartspace/ISmartspaceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/smartspace/ISmartspaceManager;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/app/smartspace/ISmartspaceManager;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_1c

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "destroySmartspaceSession"

    return-object v0

    .line 90
    :pswitch_8
    const-string/jumbo v0, "unregisterSmartspaceUpdates"

    return-object v0

    .line 86
    :pswitch_c
    const-string/jumbo v0, "registerSmartspaceUpdates"

    return-object v0

    .line 82
    :pswitch_10
    const-string/jumbo v0, "requestSmartspaceUpdate"

    return-object v0

    .line 78
    :pswitch_14
    const-string/jumbo v0, "notifySmartspaceEvent"

    return-object v0

    .line 74
    :pswitch_18
    const-string v0, "createSmartspaceSession"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
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

    .line 286
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_16
    packed-switch p1, :pswitch_data_9e

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 172
    :pswitch_1e
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 173
    .local v2, "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/app/smartspace/ISmartspaceManager$Stub;->destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 175
    goto :goto_9c

    .line 162
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    :pswitch_2d
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 164
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object v3

    .line 165
    .local v3, "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 167
    goto :goto_9c

    .line 152
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    :pswitch_44
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 154
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object v3

    .line 155
    .restart local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 157
    goto :goto_9c

    .line 144
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    :pswitch_5b
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 145
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/app/smartspace/ISmartspaceManager$Stub;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 147
    goto :goto_9c

    .line 134
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    :pswitch_6a
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 136
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    sget-object v3, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 137
    .local v3, "_arg1":Landroid/app/smartspace/SmartspaceTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 139
    goto :goto_9c

    .line 122
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/SmartspaceTargetEvent;
    :pswitch_81
    sget-object v2, Landroid/app/smartspace/SmartspaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceConfig;

    .line 124
    .local v2, "_arg0":Landroid/app/smartspace/SmartspaceConfig;
    sget-object v3, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceSessionId;

    .line 126
    .local v3, "_arg1":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 127
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/smartspace/ISmartspaceManager$Stub;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 129
    nop

    .line 182
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceConfig;
    .end local v3    # "_arg1":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_9c
    return v1

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_81
        :pswitch_6a
        :pswitch_5b
        :pswitch_44
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
