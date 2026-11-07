.class public abstract Landroid/system/virtualizationservice/IVirtualizationService$Stub;
.super Landroid/os/Binder;
.source "IVirtualizationService.java"

# interfaces
.implements Landroid/system/virtualizationservice/IVirtualizationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/IVirtualizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/IVirtualizationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allocateInstanceId:I = 0x2

.field static final blacklist TRANSACTION_claimVmInstance:I = 0xf

.field static final blacklist TRANSACTION_createOrUpdateIdsigFile:I = 0x5

.field static final blacklist TRANSACTION_createVm:I = 0x1

.field static final blacklist TRANSACTION_debugListVms:I = 0x6

.field static final blacklist TRANSACTION_enableTestAttestation:I = 0xb

.field static final blacklist TRANSACTION_getAssignableDevices:I = 0x7

.field static final blacklist TRANSACTION_getDebugPolicy:I = 0x9

.field static final blacklist TRANSACTION_getSupportedOSList:I = 0x8

.field static final blacklist TRANSACTION_initializeWritablePartition:I = 0x3

.field static final blacklist TRANSACTION_isFeatureEnabled:I = 0xa

.field static final blacklist TRANSACTION_isRemoteAttestationSupported:I = 0xc

.field static final blacklist TRANSACTION_isUpdatableVmSupported:I = 0xd

.field static final blacklist TRANSACTION_removeVmInstance:I = 0xe

.field static final blacklist TRANSACTION_setEncryptedStorageSize:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 137
    const-string v0, "android.system.virtualizationservice.IVirtualizationService"

    invoke-virtual {p0, p0, v0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/virtualizationservice/IVirtualizationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 145
    if-nez p0, :cond_4

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_4
    const-string v0, "android.system.virtualizationservice.IVirtualizationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 149
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/virtualizationservice/IVirtualizationService;

    if-eqz v1, :cond_14

    .line 150
    move-object v1, v0

    check-cast v1, Landroid/system/virtualizationservice/IVirtualizationService;

    return-object v1

    .line 152
    :cond_14
    new-instance v1, Landroid/system/virtualizationservice/IVirtualizationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 156
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

    .line 160
    const-string v0, "android.system.virtualizationservice.IVirtualizationService"

    .line 161
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v1

    .line 168
    :cond_16
    const-class v2, [B

    const/16 v3, 0x40

    packed-switch p1, :pswitch_data_146

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 300
    :pswitch_22
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 301
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->claimVmInstance([B)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_145

    .line 291
    .end local v2    # "_arg0":[B
    :pswitch_37
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 292
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->removeVmInstance([B)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_145

    .line 283
    .end local v2    # "_arg0":[B
    :pswitch_4c
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->isUpdatableVmSupported()Z

    move-result v2

    .line 284
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto/16 :goto_145

    .line 276
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->isRemoteAttestationSupported()Z

    move-result v2

    .line 277
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_145

    .line 270
    .end local v2    # "_result":Z
    :pswitch_64
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->enableTestAttestation()V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_145

    .line 261
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 264
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    goto/16 :goto_145

    .line 253
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7f
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->getDebugPolicy()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    goto/16 :goto_145

    .line 246
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->getSupportedOSList()[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 249
    goto/16 :goto_145

    .line 239
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_97
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->getAssignableDevices()[Landroid/system/virtualizationservice/AssignableDevice;

    move-result-object v2

    .line 240
    .local v2, "_result":[Landroid/system/virtualizationservice/AssignableDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 242
    goto/16 :goto_145

    .line 232
    .end local v2    # "_result":[Landroid/system/virtualizationservice/AssignableDevice;
    :pswitch_a3
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->debugListVms()[Landroid/system/virtualizationservice/VirtualMachineDebugInfo;

    move-result-object v2

    .line 233
    .local v2, "_result":[Landroid/system/virtualizationservice/VirtualMachineDebugInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 235
    goto/16 :goto_145

    .line 222
    .end local v2    # "_result":[Landroid/system/virtualizationservice/VirtualMachineDebugInfo;
    :pswitch_af
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 224
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 225
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_145

    .line 211
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_ca
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 213
    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 214
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3, v4}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->setEncryptedStorageSize(Landroid/os/ParcelFileDescriptor;J)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_145

    .line 198
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    :pswitch_e0
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 200
    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 202
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 203
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_145

    .line 190
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_fa
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->allocateInstanceId()[B

    move-result-object v2

    .line 191
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p3, v2, v1, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 193
    goto :goto_145

    .line 173
    .end local v2    # "_result":[B
    :pswitch_109
    sget-object v2, Landroid/system/virtualizationservice/VirtualMachineConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/system/virtualizationservice/VirtualMachineConfig;

    .line 175
    .local v4, "_arg0":Landroid/system/virtualizationservice/VirtualMachineConfig;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 177
    .local v5, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 179
    .local v6, "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 181
    .local v7, "_arg3":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 182
    .local v8, "_arg4":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->createVm(Landroid/system/virtualizationservice/VirtualMachineConfig;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v2

    .line 184
    .local v2, "_result":Landroid/system/virtualizationservice/IVirtualMachine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    nop

    .line 311
    .end local v2    # "_result":Landroid/system/virtualizationservice/IVirtualMachine;
    .end local v4    # "_arg0":Landroid/system/virtualizationservice/VirtualMachineConfig;
    .end local v5    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg3":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "_arg4":Landroid/os/ParcelFileDescriptor;
    :goto_145
    return v1

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_109
        :pswitch_fa
        :pswitch_e0
        :pswitch_ca
        :pswitch_af
        :pswitch_a3
        :pswitch_97
        :pswitch_8b
        :pswitch_7f
        :pswitch_6c
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_37
        :pswitch_22
    .end packed-switch
.end method
