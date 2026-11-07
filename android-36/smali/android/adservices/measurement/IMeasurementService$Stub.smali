.class public abstract Landroid/adservices/measurement/IMeasurementService$Stub;
.super Landroid/os/Binder;
.source "IMeasurementService.java"

# interfaces
.implements Landroid/adservices/measurement/IMeasurementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/IMeasurementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/IMeasurementService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteRegistrations:I = 0x6

.field static final blacklist TRANSACTION_getMeasurementApiStatus:I = 0x5

.field static final blacklist TRANSACTION_register:I = 0x1

.field static final blacklist TRANSACTION_registerSource:I = 0x4

.field static final blacklist TRANSACTION_registerWebSource:I = 0x2

.field static final blacklist TRANSACTION_registerWebTrigger:I = 0x3

.field static final blacklist TRANSACTION_schedulePeriodicJobs:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.adservices.measurement.IMeasurementService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/measurement/IMeasurementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.adservices.measurement.IMeasurementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/measurement/IMeasurementService;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/adservices/measurement/IMeasurementService;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/adservices/measurement/IMeasurementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/measurement/IMeasurementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string v0, "schedulePeriodicJobs"

    return-object v0

    .line 100
    :pswitch_8
    const-string v0, "deleteRegistrations"

    return-object v0

    .line 96
    :pswitch_b
    const-string v0, "getMeasurementApiStatus"

    return-object v0

    .line 92
    :pswitch_e
    const-string v0, "registerSource"

    return-object v0

    .line 88
    :pswitch_11
    const-string v0, "registerWebTrigger"

    return-object v0

    .line 84
    :pswitch_14
    const-string v0, "registerWebSource"

    return-object v0

    .line 80
    :pswitch_17
    const-string v0, "register"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 359
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/adservices/measurement/IMeasurementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    const-string v0, "android.adservices.measurement.IMeasurementService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_16
    packed-switch p1, :pswitch_data_ec

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 204
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/measurement/IMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementCallback;

    move-result-object v2

    .line 205
    .local v2, "_arg0":Landroid/adservices/measurement/IMeasurementCallback;
    invoke-virtual {p0, v2}, Landroid/adservices/measurement/IMeasurementService$Stub;->schedulePeriodicJobs(Landroid/adservices/measurement/IMeasurementCallback;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto/16 :goto_ea

    .line 192
    .end local v2    # "_arg0":Landroid/adservices/measurement/IMeasurementCallback;
    :pswitch_2e
    sget-object v2, Landroid/adservices/measurement/DeletionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/measurement/DeletionParam;

    .line 194
    .local v2, "_arg0":Landroid/adservices/measurement/DeletionParam;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 196
    .local v3, "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/measurement/IMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementCallback;

    move-result-object v4

    .line 197
    .local v4, "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/measurement/IMeasurementService$Stub;->deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto/16 :goto_ea

    .line 180
    .end local v2    # "_arg0":Landroid/adservices/measurement/DeletionParam;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    :pswitch_4e
    sget-object v2, Landroid/adservices/measurement/StatusParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/measurement/StatusParam;

    .line 182
    .local v2, "_arg0":Landroid/adservices/measurement/StatusParam;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 184
    .restart local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/measurement/IMeasurementApiStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementApiStatusCallback;

    move-result-object v4

    .line 185
    .local v4, "_arg2":Landroid/adservices/measurement/IMeasurementApiStatusCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/measurement/IMeasurementService$Stub;->getMeasurementApiStatus(Landroid/adservices/measurement/StatusParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementApiStatusCallback;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto/16 :goto_ea

    .line 168
    .end local v2    # "_arg0":Landroid/adservices/measurement/StatusParam;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementApiStatusCallback;
    :pswitch_6e
    sget-object v2, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/measurement/SourceRegistrationRequestInternal;

    .line 170
    .local v2, "_arg0":Landroid/adservices/measurement/SourceRegistrationRequestInternal;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 172
    .restart local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/measurement/IMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementCallback;

    move-result-object v4

    .line 173
    .local v4, "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/measurement/IMeasurementService$Stub;->registerSource(Landroid/adservices/measurement/SourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_ea

    .line 156
    .end local v2    # "_arg0":Landroid/adservices/measurement/SourceRegistrationRequestInternal;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    :pswitch_8d
    sget-object v2, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;

    .line 158
    .local v2, "_arg0":Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 160
    .restart local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/measurement/IMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementCallback;

    move-result-object v4

    .line 161
    .restart local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/measurement/IMeasurementService$Stub;->registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_ea

    .line 144
    .end local v2    # "_arg0":Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    :pswitch_ac
    sget-object v2, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;

    .line 146
    .local v2, "_arg0":Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 148
    .restart local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/measurement/IMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementCallback;

    move-result-object v4

    .line 149
    .restart local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/measurement/IMeasurementService$Stub;->registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_ea

    .line 132
    .end local v2    # "_arg0":Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    :pswitch_cb
    sget-object v2, Landroid/adservices/measurement/RegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/measurement/RegistrationRequest;

    .line 134
    .local v2, "_arg0":Landroid/adservices/measurement/RegistrationRequest;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 136
    .restart local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/measurement/IMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/measurement/IMeasurementCallback;

    move-result-object v4

    .line 137
    .restart local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/measurement/IMeasurementService$Stub;->register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    nop

    .line 214
    .end local v2    # "_arg0":Landroid/adservices/measurement/RegistrationRequest;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/measurement/IMeasurementCallback;
    :goto_ea
    return v1

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_ac
        :pswitch_8d
        :pswitch_6e
        :pswitch_4e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
