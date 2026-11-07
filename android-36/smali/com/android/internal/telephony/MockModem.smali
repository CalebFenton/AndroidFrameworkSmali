.class public Lcom/android/internal/telephony/MockModem;
.super Ljava/lang/Object;
.source "MockModem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MockModem$MockModemConnection;
    }
.end annotation


# instance fields
.field private blacklist mConfigBinder:Landroid/os/IBinder;

.field private blacklist mConfigServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDataBinder:Landroid/os/IBinder;

.field private blacklist mDataServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mImsBinder:Landroid/os/IBinder;

.field private blacklist mImsServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mMessagingBinder:Landroid/os/IBinder;

.field private blacklist mMessagingServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mModemBinder:Landroid/os/IBinder;

.field private blacklist mModemServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mNetworkBinder:Landroid/os/IBinder;

.field private blacklist mNetworkServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPhoneId:B

.field private blacklist mServiceName:Ljava/lang/String;

.field private blacklist mSimBinder:Landroid/os/IBinder;

.field private blacklist mSimServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mVoiceBinder:Landroid/os/IBinder;

.field private blacklist mVoiceServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/telephony/MockModem;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mConfigBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mDataBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mImsBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMessagingBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mMessagingBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmModemBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mModemBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mNetworkBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSimBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mSimBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVoiceBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mVoiceBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetModuleName(Lcom/android/internal/telephony/MockModem;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MockModem;->getModuleName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/MockModem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p3, p3

    .line 87
    iput-byte p3, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockModem-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    .line 90
    const-string p1, "/"

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 91
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/android/internal/telephony/MockModem;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 92
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method private blacklist bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z
    .registers 8

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/telephony/MockModem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MockModem;->mServiceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string p2, "phone_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x1

    .line 163
    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private blacklist bindModuleToMockModemService(Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .registers 4

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0
.end method

.method private blacklist getModuleName(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1e

    .line 400
    const-string p0, "none"

    return-object p0

    .line 398
    :pswitch_6
    const-string p0, "config"

    return-object p0

    .line 396
    :pswitch_9
    const-string p0, "ims"

    return-object p0

    .line 394
    :pswitch_c
    const-string p0, "voice"

    return-object p0

    .line 386
    :pswitch_f
    const-string p0, "sim"

    return-object p0

    .line 392
    :pswitch_12
    const-string p0, "network"

    return-object p0

    .line 384
    :pswitch_15
    const-string p0, "modem"

    return-object p0

    .line 388
    :pswitch_18
    const-string p0, "messaging"

    return-object p0

    .line 390
    :pswitch_1b
    const-string p0, "data"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist bindAllMockModemService()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-gt v0, v1, :cond_a

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MockModem;->bindToMockModemService(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method public blacklist bindToMockModemService(I)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2a

    .line 202
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mConfigBinder:Landroid/os/IBinder;

    if-nez p1, :cond_22

    .line 203
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mConfigServiceConnection:Landroid/content/ServiceConnection;

    .line 205
    const-string v1, "android.telephony.mockmodem.iradioconfig"

    .line 206
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Config bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mConfigServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 212
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Config is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_54

    .line 215
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mModemBinder:Landroid/os/IBinder;

    if-nez p1, :cond_4c

    .line 216
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mModemServiceConnection:Landroid/content/ServiceConnection;

    .line 218
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v2, "android.telephony.mockmodem.iradiomodem"

    .line 219
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Modem bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mModemServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 226
    :cond_4c
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Modem is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_54
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7e

    .line 229
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mSimBinder:Landroid/os/IBinder;

    if-nez p1, :cond_76

    .line 230
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mSimServiceConnection:Landroid/content/ServiceConnection;

    .line 232
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v2, "android.telephony.mockmodem.iradiosim"

    .line 233
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 236
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Sim bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mSimServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 240
    :cond_76
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Sim is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a8

    .line 243
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mMessagingBinder:Landroid/os/IBinder;

    if-nez p1, :cond_a0

    .line 244
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mMessagingServiceConnection:Landroid/content/ServiceConnection;

    .line 246
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v2, "android.telephony.mockmodem.iradiomessaging"

    .line 247
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 250
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Messaging bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mMessagingServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 254
    :cond_a0
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Messaging is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d2

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mDataBinder:Landroid/os/IBinder;

    if-nez p1, :cond_ca

    .line 258
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mDataServiceConnection:Landroid/content/ServiceConnection;

    .line 260
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v2, "android.telephony.mockmodem.iradiodata"

    .line 261
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 264
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Data bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mDataServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 268
    :cond_ca
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Data is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_fc

    .line 271
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mNetworkBinder:Landroid/os/IBinder;

    if-nez p1, :cond_f4

    .line 272
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 274
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v2, "android.telephony.mockmodem.iradionetwork"

    .line 275
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 278
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Network bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mNetworkServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 282
    :cond_f4
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Network is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_fc
    const/4 v1, 0x6

    if-ne p1, v1, :cond_126

    .line 285
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mVoiceBinder:Landroid/os/IBinder;

    if-nez p1, :cond_11e

    .line 286
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mVoiceServiceConnection:Landroid/content/ServiceConnection;

    .line 288
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v2, "android.telephony.mockmodem.iradiovoice"

    .line 289
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 292
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string v1, "IRadio Voice bind fail"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mVoiceServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 296
    :cond_11e
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "IRadio Voice is bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_126
    const/4 v1, 0x7

    if-ne p1, v1, :cond_14d

    .line 299
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mImsBinder:Landroid/os/IBinder;

    const-string v2, "MockModem"

    if-nez p1, :cond_148

    .line 300
    new-instance p1, Lcom/android/internal/telephony/MockModem$MockModemConnection;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/telephony/MockModem$MockModemConnection;-><init>(Lcom/android/internal/telephony/MockModem;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/MockModem;->mImsServiceConnection:Landroid/content/ServiceConnection;

    .line 302
    iget-byte v1, p0, Lcom/android/internal/telephony/MockModem;->mPhoneId:B

    const-string v3, "android.telephony.mockmodem.iradioims"

    .line 303
    invoke-direct {p0, v1, v3, p1}, Lcom/android/internal/telephony/MockModem;->bindModuleToMockModemService(BLjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_14d

    .line 306
    const-string p1, "IRadio Ims bind fail"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput-object v0, p0, Lcom/android/internal/telephony/MockModem;->mImsServiceConnection:Landroid/content/ServiceConnection;

    return-void

    .line 310
    :cond_148
    const-string p0, "IRadio Ims is bound"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14d
    return-void
.end method

.method public blacklist getServiceBinder(I)Landroid/os/IBinder;
    .registers 2

    packed-switch p1, :pswitch_data_1e

    const/4 p0, 0x0

    return-object p0

    .line 186
    :pswitch_5
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mConfigBinder:Landroid/os/IBinder;

    return-object p0

    .line 184
    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mImsBinder:Landroid/os/IBinder;

    return-object p0

    .line 182
    :pswitch_b
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mVoiceBinder:Landroid/os/IBinder;

    return-object p0

    .line 174
    :pswitch_e
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mSimBinder:Landroid/os/IBinder;

    return-object p0

    .line 180
    :pswitch_11
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mNetworkBinder:Landroid/os/IBinder;

    return-object p0

    .line 172
    :pswitch_14
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mModemBinder:Landroid/os/IBinder;

    return-object p0

    .line 176
    :pswitch_17
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mMessagingBinder:Landroid/os/IBinder;

    return-object p0

    .line 178
    :pswitch_1a
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mDataBinder:Landroid/os/IBinder;

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist unbindMockModemService(I)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1a

    .line 319
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mConfigServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 321
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mConfigServiceConnection:Landroid/content/ServiceConnection;

    .line 322
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mConfigBinder:Landroid/os/IBinder;

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Config"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_32

    .line 326
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mModemServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 328
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mModemServiceConnection:Landroid/content/ServiceConnection;

    .line 329
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mModemBinder:Landroid/os/IBinder;

    .line 330
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Modem"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4a

    .line 333
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mSimServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 335
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mSimServiceConnection:Landroid/content/ServiceConnection;

    .line 336
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mSimBinder:Landroid/os/IBinder;

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Sim"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_62

    .line 340
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mMessagingServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 342
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mMessagingServiceConnection:Landroid/content/ServiceConnection;

    .line 343
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mMessagingBinder:Landroid/os/IBinder;

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Messaging"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_62
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7a

    .line 347
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mDataServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 349
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mDataServiceConnection:Landroid/content/ServiceConnection;

    .line 350
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mDataBinder:Landroid/os/IBinder;

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Data"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_92

    .line 354
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mNetworkServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 356
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 357
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mNetworkBinder:Landroid/os/IBinder;

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Network"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_92
    const/4 v0, 0x6

    if-ne p1, v0, :cond_aa

    .line 361
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mVoiceServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 363
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mVoiceServiceConnection:Landroid/content/ServiceConnection;

    .line 364
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mVoiceBinder:Landroid/os/IBinder;

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem;->mTag:Ljava/lang/String;

    const-string p1, "unbind IRadio Voice"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_aa
    const/4 v0, 0x7

    if-ne p1, v0, :cond_c1

    .line 368
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem;->mImsServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_c1

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/MockModem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mImsServiceConnection:Landroid/content/ServiceConnection;

    .line 371
    iput-object v1, p0, Lcom/android/internal/telephony/MockModem;->mImsBinder:Landroid/os/IBinder;

    .line 372
    const-string p0, "MockModem"

    const-string p1, "unbind IRadio Ims"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    return-void
.end method
