.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerMiddlewareService.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachAsMiddleman:I = 0x4

.field static final blacklist TRANSACTION_attachAsOriginator:I = 0x3

.field static final blacklist TRANSACTION_attachFakeHalInjection:I = 0x5

.field static final blacklist TRANSACTION_listModulesAsMiddleman:I = 0x2

.field static final blacklist TRANSACTION_listModulesAsOriginator:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 104
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerMiddlewareService"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 112
    if-nez p0, :cond_4

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerMiddlewareService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    if-eqz v1, :cond_14

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    return-object v1

    .line 119
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 123
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerMiddlewareService"

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_16
    packed-switch p1, :pswitch_data_be

    .line 202
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 194
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachFakeHalInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object v3, p0

    goto/16 :goto_bd

    .line 176
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 178
    .local v4, "_arg0":I
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/media/permission/Identity;

    .line 180
    .local v5, "_arg1":Landroid/media/permission/Identity;
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/media/permission/Identity;

    .line 182
    .local v6, "_arg2":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v7

    .line 184
    .local v7, "_arg3":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 185
    .local v8, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    .line 187
    .local v2, "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 189
    goto :goto_bd

    .line 162
    .end local v2    # "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/media/permission/Identity;
    .end local v6    # "_arg2":Landroid/media/permission/Identity;
    .end local v7    # "_arg3":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .end local v8    # "_arg4":Z
    :pswitch_64
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .local v2, "_arg0":I
    sget-object v4, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/permission/Identity;

    .line 166
    .local v4, "_arg1":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v5

    .line 167
    .local v5, "_arg2":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v4, v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v6

    .line 169
    .local v6, "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 171
    goto :goto_bd

    .line 150
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/media/permission/Identity;
    .end local v5    # "_arg2":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .end local v6    # "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :pswitch_87
    move-object v3, p0

    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 152
    .local v2, "_arg0":Landroid/media/permission/Identity;
    sget-object v4, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/permission/Identity;

    .line 153
    .restart local v4    # "_arg1":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v5

    .line 155
    .local v5, "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 157
    goto :goto_bd

    .line 140
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v4    # "_arg1":Landroid/media/permission/Identity;
    .end local v5    # "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :pswitch_a6
    move-object v3, p0

    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 141
    .restart local v2    # "_arg0":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v4

    .line 143
    .local v4, "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 145
    nop

    .line 205
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v4    # "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :goto_bd
    return v1

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_87
        :pswitch_64
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
