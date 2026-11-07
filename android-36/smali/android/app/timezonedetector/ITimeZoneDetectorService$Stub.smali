.class public abstract Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.super Landroid/os/Binder;
.source "ITimeZoneDetectorService.java"

# interfaces
.implements Landroid/app/timezonedetector/ITimeZoneDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/ITimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addListener:I = 0x2

.field static final blacklist TRANSACTION_confirmTimeZone:I = 0x6

.field static final blacklist TRANSACTION_getCapabilitiesAndConfig:I = 0x1

.field static final blacklist TRANSACTION_getTimeZoneState:I = 0x5

.field static final blacklist TRANSACTION_removeListener:I = 0x3

.field static final blacklist TRANSACTION_setManualTimeZone:I = 0x7

.field static final blacklist TRANSACTION_suggestManualTimeZone:I = 0x8

.field static final blacklist TRANSACTION_suggestTelephonyTimeZone:I = 0x9

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_4

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_4
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/timezonedetector/ITimeZoneDetectorService;

    if-eqz v1, :cond_14

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/app/timezonedetector/ITimeZoneDetectorService;

    return-object v1

    .line 89
    :cond_14
    new-instance v1, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_26

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "suggestTelephonyTimeZone"

    return-object v0

    .line 130
    :pswitch_9
    const-string/jumbo v0, "suggestManualTimeZone"

    return-object v0

    .line 126
    :pswitch_d
    const-string/jumbo v0, "setManualTimeZone"

    return-object v0

    .line 122
    :pswitch_11
    const-string v0, "confirmTimeZone"

    return-object v0

    .line 118
    :pswitch_14
    const-string/jumbo v0, "getTimeZoneState"

    return-object v0

    .line 114
    :pswitch_18
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 110
    :pswitch_1c
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 106
    :pswitch_20
    const-string v0, "addListener"

    return-object v0

    .line 102
    :pswitch_23
    const-string v0, "getCapabilitiesAndConfig"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 426
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 157
    :cond_16
    packed-switch p1, :pswitch_data_c2

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 234
    :pswitch_1e
    sget-object v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 235
    .local v2, "_arg0":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_c0

    .line 224
    .end local v2    # "_arg0":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :pswitch_31
    sget-object v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 225
    .local v2, "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v3

    .line 227
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 229
    goto/16 :goto_c0

    .line 214
    .end local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .end local v3    # "_result":Z
    :pswitch_48
    sget-object v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 215
    .restart local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->setManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v3

    .line 217
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_c0

    .line 204
    .end local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .end local v3    # "_result":Z
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->confirmTimeZone(Ljava/lang/String;)Z

    move-result v3

    .line 207
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    goto :goto_c0

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_70
    invoke-virtual {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getTimeZoneState()Landroid/app/time/TimeZoneState;

    move-result-object v2

    .line 197
    .local v2, "_result":Landroid/app/time/TimeZoneState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    goto :goto_c0

    .line 187
    .end local v2    # "_result":Landroid/app/time/TimeZoneState;
    :pswitch_7b
    sget-object v2, Landroid/app/time/TimeZoneConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/TimeZoneConfiguration;

    .line 188
    .local v2, "_arg0":Landroid/app/time/TimeZoneConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    .line 190
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_c0

    .line 178
    .end local v2    # "_arg0":Landroid/app/time/TimeZoneConfiguration;
    .end local v3    # "_result":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeZoneDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeZoneDetectorListener;

    move-result-object v2

    .line 179
    .local v2, "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_c0

    .line 169
    .end local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeZoneDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeZoneDetectorListener;

    move-result-object v2

    .line 170
    .restart local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->addListener(Landroid/app/time/ITimeZoneDetectorListener;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_c0

    .line 161
    .end local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    :pswitch_b5
    invoke-virtual {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 162
    .local v2, "_result":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    nop

    .line 245
    .end local v2    # "_result":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    :goto_c0
    return v1

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_a3
        :pswitch_91
        :pswitch_7b
        :pswitch_70
        :pswitch_5e
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
