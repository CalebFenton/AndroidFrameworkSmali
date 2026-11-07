.class public abstract Lcom/android/internal/app/ISoundTriggerService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerService.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ISoundTriggerService"

.field static final blacklist TRANSACTION_attachAsMiddleman:I = 0x2

.field static final blacklist TRANSACTION_attachAsOriginator:I = 0x1

.field static final blacklist TRANSACTION_attachInjection:I = 0x4

.field static final blacklist TRANSACTION_listModuleProperties:I = 0x3

.field static final blacklist TRANSACTION_setInPhoneCallState:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_4
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerService;

    if-eqz v1, :cond_14

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/ISoundTriggerService;

    return-object v1

    .line 102
    :cond_14
    new-instance v1, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 111
    packed-switch p0, :pswitch_data_16

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 131
    :pswitch_5
    const-string/jumbo v0, "setInPhoneCallState"

    return-object v0

    .line 127
    :pswitch_9
    const-string v0, "attachInjection"

    return-object v0

    .line 123
    :pswitch_c
    const-string v0, "listModuleProperties"

    return-object v0

    .line 119
    :pswitch_f
    const-string v0, "attachAsMiddleman"

    return-object v0

    .line 115
    :pswitch_12
    const-string v0, "attachAsOriginator"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 106
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 370
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 142
    invoke-static {p1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    .line 147
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 154
    :cond_16
    packed-switch p1, :pswitch_data_a2

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 208
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 209
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->setInPhoneCallState(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_a0

    .line 199
    .end local v2    # "_arg0":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    move-result-object v2

    .line 200
    .local v2, "_arg0":Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_a0

    .line 189
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :pswitch_3e
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 190
    .local v2, "_arg0":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 194
    goto :goto_a0

    .line 173
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    :pswitch_54
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 175
    .restart local v2    # "_arg0":Landroid/media/permission/Identity;
    sget-object v3, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/permission/Identity;

    .line 177
    .local v3, "_arg1":Landroid/media/permission/Identity;
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 179
    .local v4, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 180
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v6

    .line 182
    .local v6, "_result":Lcom/android/internal/app/ISoundTriggerSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 184
    goto :goto_a0

    .line 159
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v3    # "_arg1":Landroid/media/permission/Identity;
    .end local v4    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    .end local v6    # "_result":Lcom/android/internal/app/ISoundTriggerSession;
    :pswitch_7e
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 161
    .restart local v2    # "_arg0":Landroid/media/permission/Identity;
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 163
    .local v3, "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 164
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v5

    .line 166
    .local v5, "_result":Lcom/android/internal/app/ISoundTriggerSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 168
    nop

    .line 219
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_result":Lcom/android/internal/app/ISoundTriggerSession;
    :goto_a0
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_54
        :pswitch_3e
        :pswitch_2c
        :pswitch_1e
    .end packed-switch
.end method
