.class public Lcom/android/internal/telephony/uicc/PinStorage;
.super Landroid/os/Handler;
.source "PinStorage.java"


# static fields
.field private static final blacklist VDBG:Z


# instance fields
.field private final blacklist mBootCount:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsDeviceLocked:Z

.field private blacklist mIsDeviceSecure:Z

.field private final blacklist mKeyStore:Ljava/security/KeyStore;

.field private blacklist mLastCommitResult:Z

.field private blacklist mLongTermSecretKey:Ljavax/crypto/SecretKey;

.field private final blacklist mRamStorage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mShortTermSecretKey:Ljavax/crypto/SecretKey;

.field public blacklist mShortTermSecretKeyDurationMinutes:I


# direct methods
.method public static synthetic blacklist $r8$lambda$uBfmLTkhH1NJWPPTJUyLNDh4i5g(Lcom/android/internal/telephony/uicc/PinStorage;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/PinStorage;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateSlotId(Lcom/android/internal/telephony/uicc/PinStorage;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->validateSlotId(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 93
    const-string v0, "PinStorage"

    const/4 v1, 0x2

    .line 94
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/PinStorage;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLastCommitResult:Z

    .line 163
    new-instance v1, Lcom/android/internal/telephony/uicc/PinStorage$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/PinStorage$1;-><init>(Lcom/android/internal/telephony/uicc/PinStorage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getBootCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mBootCount:I

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/uicc/PinStorage;->initializeKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mKeyStore:Ljava/security/KeyStore;

    const/16 v2, 0xf

    .line 185
    iput v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKeyDurationMinutes:I

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->isDeviceSecure()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceSecure:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->isDeviceLocked()Z

    move-result v2

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    .line 191
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    const-string v4, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v4, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_5e

    .line 200
    new-instance v1, Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/uicc/PinStorage;)V

    new-instance v2, Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/uicc/PinStorage;)V

    invoke-virtual {p1, v1, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 209
    :cond_5e
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceSecure:Z

    if-eqz p1, :cond_6a

    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    if-eqz p1, :cond_67

    goto :goto_6a

    .line 210
    :cond_67
    const-string p1, "PinStorage_longTerm_ua_key"

    goto :goto_6c

    :cond_6a
    :goto_6a
    const-string p1, "PinStorage_longTerm_always_key"

    .line 211
    :goto_6c
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->initializeSecretKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    .line 215
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceSecure:Z

    if-eqz p1, :cond_8a

    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    if-nez p1, :cond_7b

    goto :goto_8a

    .line 219
    :cond_7b
    const-string p1, "Device is locked - Postponing initialization"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    return-void

    :cond_8a
    :goto_8a
    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->onDeviceReady()V

    return-void
.end method

.method private blacklist cleanRamStorage()V
    .registers 3

    .line 855
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_d

    .line 857
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->cleanRamStorage(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method private blacklist cleanRamStorage(I)V
    .registers 4

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    if-eqz v0, :cond_15

    .line 864
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 866
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 868
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_15
    return-void
.end method

.method private blacklist createSecretKey(Ljava/lang/String;Ljava/util/Date;Z)Ljavax/crypto/SecretKey;
    .registers 6

    .line 1103
    :try_start_0
    const-string p0, "AES"

    const-string v0, "AndroidKeyStore"

    .line 1104
    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    .line 1105
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p1, "GCM"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string v0, "NoPadding"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1108
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    if-eqz p2, :cond_28

    .line 1111
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    :cond_28
    if-eqz p3, :cond_36

    const/4 p2, 0x1

    .line 1115
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const p3, 0x7fffffff

    .line 1116
    invoke-virtual {p1, p3, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 1118
    :cond_36
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1119
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception p0

    .line 1121
    const-string p1, "Create key exception"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist decrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_d

    .line 1178
    const-string p1, "Decrypt: Secret key is null"

    new-array p2, p0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    new-array p0, p0, [B

    return-object p0

    .line 1183
    :cond_d
    :try_start_d
    invoke-static {p2}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->parseFrom([B)Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    move-result-object p2

    .line 1184
    iget-object v0, p2, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p2, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    .line 1185
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1186
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1187
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    iget-object v2, p2, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    const/16 v3, 0x80

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v2, 0x2

    .line 1189
    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1190
    iget-object p1, p2, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    move-exception p1

    .line 1193
    const-string p2, "Decrypt exception"

    invoke-static {p2, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 1194
    const-string p2, ""

    const/16 v0, 0x150

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    .line 1197
    :cond_4b
    new-array p0, p0, [B

    return-object p0
.end method

.method private blacklist decryptStoredPin([BLjavax/crypto/SecretKey;)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;
    .registers 4

    if-nez p2, :cond_d

    const/4 p0, 0x1

    .line 732
    const-string p1, ""

    const/16 p2, 0x150

    const/16 v0, 0xa

    invoke-static {p2, v0, p0, p1}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    goto :goto_1f

    .line 737
    :cond_d
    :try_start_d
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    .line 738
    array-length p1, p0

    if-lez p1, :cond_1f

    .line 739
    invoke-static {p0}, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->parseFrom([B)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 742
    const-string p1, "cannot decrypt/parse PIN information"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist deleteSecretKey(Ljava/lang/String;)V
    .registers 4

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1b

    .line 1142
    const-string v0, "Delete key: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    :try_start_d
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    const/4 p0, 0x0

    .line 1147
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Delete key exception"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method private blacklist encrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_d

    .line 1155
    const-string p1, "Encrypt: Secret key is null"

    new-array p2, p0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    new-array p0, p0, [B

    return-object p0

    :cond_d
    const/4 v0, 0x1

    .line 1160
    :try_start_e
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1161
    invoke-virtual {v1, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1163
    new-instance p1, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    invoke-direct {p1}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;-><init>()V

    .line 1164
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    .line 1165
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    .line 1166
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p1

    .line 1168
    const-string p2, "Encrypt exception"

    invoke-static {p2, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x9

    .line 1169
    const-string p2, ""

    const/16 v1, 0x150

    invoke-static {v1, p1, v0, p2}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    .line 1172
    new-array p0, p0, [B

    return-object p0
.end method

.method private blacklist getBootCount()I
    .registers 3

    .line 911
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    .line 912
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    const/4 v1, -0x1

    .line 911
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getIccid(I)Ljava/lang/String;
    .registers 2

    .line 949
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 6

    const/4 v0, 0x0

    .line 1078
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mKeyStore:Ljava/security/KeyStore;

    .line 1079
    invoke-virtual {v1, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v1, :cond_28

    .line 1081
    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception v1

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with getting the key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1087
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->deleteSecretKey(Ljava/lang/String;)V

    :cond_28
    return-object v0
.end method

.method private blacklist getShortLivedKeyValidityEnd()Ljava/util/Date;
    .registers 3

    .line 1129
    iget v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKeyDurationMinutes:I

    if-lez v0, :cond_1c

    .line 1130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1131
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xc

    .line 1132
    iget p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKeyDurationMinutes:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 1133
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSlotCount()I
    .registers 1

    .line 923
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length p0, p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return p0

    .line 925
    :catch_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method private static blacklist initializeKeyStore()Ljava/security/KeyStore;
    .registers 3

    const/4 v0, 0x0

    .line 1026
    :try_start_1
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1027
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_13

    const/4 v0, 0x0

    .line 1033
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "KeyStore ready"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :catch_13
    move-exception v1

    .line 1030
    const-string v2, "Error loading KeyStore"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private blacklist initializeSecretKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;
    .registers 6

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1050
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1052
    const-string p0, "KeyStore: alias %s exists"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_16
    if-eqz p2, :cond_50

    .line 1056
    const-string p2, "PinStorage_shortTerm_key"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getShortLivedKeyValidityEnd()Ljava/util/Date;

    move-result-object v1

    .line 1057
    :cond_24
    const-string p2, "PinStorage_longTerm_always_key"

    .line 1058
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->isDeviceSecure()Z

    move-result p2

    if-eqz p2, :cond_34

    const/4 p2, 0x1

    goto :goto_35

    :cond_34
    const/4 p2, 0x0

    :goto_35
    if-eqz v1, :cond_3c

    .line 1060
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_3c
    const-string v0, ""

    :goto_3e
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1059
    const-string v2, "KeyStore: alias %s does not exist - Creating (exp=%s, auth=%s)"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->createSecretKey(Ljava/lang/String;Ljava/util/Date;Z)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 1064
    :cond_50
    const-string p0, "KeyStore: alias %s does not exist - Nothing to do"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private blacklist isCacheAllowed(I)Z
    .registers 3

    .line 987
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->isCacheAllowedByDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->isCacheAllowedByCarrier(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isCacheAllowedByCarrier(I)Z
    .registers 4

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 1004
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1005
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1006
    const-string v1, "store_sim_pin_for_unattended_reboot_bool"

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    .line 1007
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    .line 1010
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-static {p0, p1, v0}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-eqz p0, :cond_2c

    .line 1013
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1014
    :cond_2c
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    :cond_30
    const/4 p1, 0x1

    .line 1017
    invoke-virtual {p0, v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist isCacheAllowedByDevice()Z
    .registers 3

    .line 992
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111002f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_18

    .line 994
    const-string p0, "Pin caching disabled in resources"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isDeviceLocked()Z
    .registers 3

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    .line 628
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method

.method private blacklist isDeviceSecure()Z
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_11

    .line 621
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPinState(ILcom/android/internal/telephony/uicc/IccCardStatus$PinState;)Z
    .registers 5

    .line 967
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_21

    move v0, p1

    :goto_c
    const/4 v1, 0x3

    if-ge v0, v1, :cond_21

    .line 976
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 978
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object p0

    if-ne p0, p2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return p1
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->onCarrierConfigurationChanged(I)V

    return-void
.end method

.method private blacklist loadPinInformation()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 635
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 637
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 639
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method private blacklist loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;
    .registers 6

    .line 656
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLastCommitResult:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    .line 658
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Last commit failed - returning empty values"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 664
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    if-eqz v0, :cond_2b

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    if-eqz v0, :cond_46

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->decryptStoredPin([BLjavax/crypto/SecretKey;)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object p0

    goto :goto_47

    .line 673
    :cond_2b
    const-string v0, "encrypted_pin_available_"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformationFromDisk(ILjava/lang/String;Ljavax/crypto/SecretKey;)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object v0

    .line 675
    const-string v2, "encrypted_pin_reboot_"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformationFromDisk(ILjava/lang/String;Ljavax/crypto/SecretKey;)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object p0

    if-eqz v0, :cond_41

    if-nez p0, :cond_41

    move-object p0, v0

    goto :goto_47

    :cond_41
    if-nez v0, :cond_46

    if-eqz p0, :cond_46

    goto :goto_47

    :cond_46
    move-object p0, v1

    :goto_47
    if-eqz p0, :cond_5f

    .line 685
    iget v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->slotId:I

    if-eq v0, p1, :cond_5f

    .line 686
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Load PIN: slot ID does not match (%d != %d)"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_60

    :cond_5f
    move-object v1, p0

    :goto_60
    if-eqz v1, :cond_70

    .line 691
    invoke-virtual {v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Load PIN: %s"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 693
    :cond_70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Load PIN for slot %d: null"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private blacklist loadPinInformationFromDisk(ILjava/lang/String;Ljavax/crypto/SecretKey;)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;
    .registers 7

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    .line 710
    const-string v1, "pinstorage_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 711
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    .line 714
    :try_start_24
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 715
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/uicc/PinStorage;->decryptStoredPin([BLjavax/crypto/SecretKey;)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs blacklist logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    .line 1207
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PinStorage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1215
    const-string v0, "PinStorage"

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static varargs blacklist loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    .line 1211
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PinStorage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static varargs blacklist logv(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1201
    sget-boolean v0, Lcom/android/internal/telephony/uicc/PinStorage;->VDBG:Z

    if-eqz v0, :cond_d

    .line 1202
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PinStorage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private blacklist onCarrierConfigurationChanged(I)V
    .registers 4

    .line 572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCarrierConfigChanged[%d]"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->isCacheAllowed(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCarrierConfigChanged[%d] - PIN caching not allowed"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V

    :cond_23
    return-void
.end method

.method private blacklist onDeviceReady()V
    .registers 8

    const/4 v0, 0x0

    .line 422
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onDeviceReady"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    const-string v1, "PinStorage_shortTerm_key"

    .line 427
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->initializeSecretKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_59

    .line 433
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object v4

    if-nez v4, :cond_1f

    goto :goto_56

    .line 441
    :cond_1f
    iget v5, v4, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_49

    .line 442
    iget v5, v4, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->bootCount:I

    iget v6, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mBootCount:I

    if-eq v5, v6, :cond_3c

    .line 443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Boot count [%d] does not match - remove PIN"

    invoke-static {v5, v4}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 444
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    goto :goto_56

    .line 447
    :cond_3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Boot count [%d] matches - keep stored PIN"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :cond_49
    iget v5, v4, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_56

    const/4 v5, 0x3

    .line 454
    iput v5, v4, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    .line 455
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_59
    if-lez v3, :cond_60

    const/16 v1, 0x4e20

    .line 460
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->startTimer(I)Z

    .line 466
    :cond_60
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->saveNumberOfCachedPins(I)I

    move-result p0

    if-le p0, v3, :cond_6f

    sub-int/2addr p0, v3

    .line 468
    const-string v0, ""

    const/16 v1, 0x150

    const/4 v2, 0x7

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    :cond_6f
    return-void
.end method

.method private declared-synchronized blacklist onSimStatusChange(II)V
    .registers 6

    monitor-enter p0

    .line 529
    :try_start_1
    const-string v0, "SIM card/application changed[%d]: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 530
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_3e

    :pswitch_16
    goto :goto_3a

    .line 557
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 558
    iget p2, p2, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3a

    .line 559
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    goto :goto_3a

    :catchall_26
    move-exception p1

    goto :goto_3c

    .line 548
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V

    goto :goto_3a

    .line 537
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 538
    iget p2, p2, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3a

    .line 539
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_26

    .line 569
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_26

    throw p1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_28
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_28
        :pswitch_28
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist onSupplyPinComplete(IZ)V
    .registers 5

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSupplyPinComplete[%d] - success: %s"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_16

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V

    :cond_16
    const/4 p0, 0x1

    if-eqz p2, :cond_1b

    move p1, p0

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x2

    .line 591
    :goto_1c
    const-string p2, ""

    const/16 v0, 0x150

    .line 587
    invoke-static {v0, p1, p0, p2}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized blacklist onTimerExpiration()V
    .registers 9

    monitor-enter p0

    .line 480
    :try_start_1
    const-string v0, "onTimerExpiration"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_f
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ge v2, v0, :cond_4c

    .line 486
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object v6

    if-nez v6, :cond_1a

    goto :goto_49

    .line 493
    :cond_1a
    iget v7, v6, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    if-ne v7, v5, :cond_33

    .line 494
    const-string v5, "onTimerExpiration - Discarding PIN in slot %d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :catchall_31
    move-exception v0

    goto :goto_61

    :cond_33
    const/4 v4, 0x2

    if-ne v7, v4, :cond_49

    .line 503
    const-string v4, "onTimerExpiration - Moving PIN in slot %d back to AVAILABLE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 504
    iput v4, v6, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    .line 505
    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 513
    :cond_4c
    const-string v0, "PinStorage_shortTerm_key"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->deleteSecretKey(Ljava/lang/String;)V

    .line 514
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    .line 517
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->saveNumberOfCachedPins(I)I

    if-lez v3, :cond_5f

    .line 521
    const-string v0, ""

    const/16 v1, 0x150

    invoke-static {v1, v5, v3, v0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_31

    .line 525
    :cond_5f
    monitor-exit p0

    return-void

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_31

    throw v0
.end method

.method private declared-synchronized blacklist onUserUnlocked()V
    .registers 5

    monitor-enter p0

    .line 380
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    if-nez v0, :cond_7

    .line 383
    monitor-exit p0

    return-void

    .line 386
    :cond_7
    :try_start_7
    const-string v0, "onUserUnlocked - Device is unlocked"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation()Landroid/util/SparseArray;

    move-result-object v0

    .line 391
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->cleanRamStorage()V

    .line 394
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    .line 399
    const-string v2, "PinStorage_longTerm_ua_key"

    const/4 v3, 0x1

    .line 400
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->initializeSecretKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    .line 403
    :goto_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 404
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :catchall_37
    move-exception v0

    goto :goto_41

    .line 408
    :cond_39
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->onDeviceReady()V

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->verifyPendingPins()V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_37

    .line 412
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_37

    throw v0
.end method

.method private blacklist saveNumberOfCachedPins(I)I
    .registers 4

    .line 934
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    .line 935
    const-string v0, "pinstorage_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 937
    const-string v0, "stored_pins"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 938
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method

.method private blacklist savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z
    .registers 12

    if-eqz p2, :cond_6

    .line 762
    iget v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mBootCount:I

    iput v0, p2, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->bootCount:I

    .line 767
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    if-eqz v0, :cond_f

    .line 768
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformationToRam(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    move-result p0

    return p0

    .line 772
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mContext:Landroid/content/Context;

    const-string v1, "pinstorage_prefs"

    const/4 v2, 0x0

    .line 773
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypted_pin_available_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypted_pin_reboot_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v0, 0x1

    if-eqz p2, :cond_72

    .line 782
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Saving PIN for slot %d"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    iget v1, p2, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    if-ne v1, v0, :cond_66

    .line 784
    const-string v7, "encrypted_pin_available_"

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(Landroid/content/SharedPreferences$Editor;ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;Ljava/lang/String;Ljavax/crypto/SecretKey;)Z

    move-result p0

    goto :goto_82

    :cond_66
    move-object v3, p0

    move v5, p1

    move-object v6, p2

    .line 787
    const-string v7, "encrypted_pin_reboot_"

    iget-object v8, v3, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(Landroid/content/SharedPreferences$Editor;ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;Ljava/lang/String;Ljavax/crypto/SecretKey;)Z

    move-result p0

    goto :goto_82

    :cond_72
    move-object v3, p0

    move v5, p1

    .line 791
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Deleting PIN for slot %d (if existed)"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v0

    .line 794
    :goto_82
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_8b

    if-eqz p0, :cond_8b

    move v2, v0

    :cond_8b
    iput-boolean v2, v3, Lcom/android/internal/telephony/uicc/PinStorage;->mLastCommitResult:Z

    return v2
.end method

.method private blacklist savePinInformation(Landroid/content/SharedPreferences$Editor;ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;Ljava/lang/String;Ljavax/crypto/SecretKey;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p5, :cond_4

    return v0

    .line 815
    :cond_4
    iget v1, p3, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->slotId:I

    if-eq p2, v1, :cond_1c

    .line 816
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p3, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->slotId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Save PIN: the slotId does not match (%d != %d)"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 820
    :cond_1c
    invoke-virtual {p3}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Save PIN: %s"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    invoke-static {p3}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    invoke-direct {p0, p5, p3}, Lcom/android/internal/telephony/uicc/PinStorage;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    .line 823
    array-length p3, p0

    if-lez p3, :cond_4c

    .line 824
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 825
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 824
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x1

    return p0

    :cond_4c
    return v0
.end method

.method private blacklist savePinInformationToRam(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z
    .registers 6

    .line 835
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->cleanRamStorage(I)V

    const/4 v0, 0x1

    if-nez p2, :cond_7

    return v0

    .line 841
    :cond_7
    iget v1, p2, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    if-ne v1, v0, :cond_2d

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    invoke-static {p2}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 843
    array-length v1, p2

    if-lez v1, :cond_2d

    .line 844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Saving PIN for slot %d in RAM"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mRamStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startTimer(I)Z
    .registers 5

    const/4 v0, 0x3

    .line 943
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-lez p1, :cond_c

    int-to-long v1, p1

    .line 944
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist validateIccid(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xc

    if-lt p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist validatePin(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_13

    .line 954
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist validateSlotId(I)Z
    .registers 2

    if-ltz p1, :cond_a

    .line 962
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result p0

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist verifyPendingPin(I)V
    .registers 5

    .line 891
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->getPin(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 897
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Perform automatic verification of PIN in slot %d"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v2, 0x5

    .line 901
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 902
    iput p1, p0, Landroid/os/Message;->arg2:I

    .line 903
    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 905
    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Perform automatic verification of PIN in slot %d not possible"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist verifyPendingPins()V
    .registers 4

    .line 879
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 881
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->isPinState(ILcom/android/internal/telephony/uicc/IccCardStatus$PinState;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 882
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->verifyPendingPin(I)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist clearPin(I)V
    .registers 4

    monitor-enter p0

    .line 252
    :try_start_1
    const-string v0, "clearPin[%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->validateSlotId(I)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    if-nez v0, :cond_16

    .line 255
    monitor-exit p0

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 257
    :try_start_17
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    .line 258
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1219
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1220
    const-string p2, "PinStorage:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsDeviceSecure="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceSecure:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsDeviceLocked="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isLongTermSecretKey="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mLongTermSecretKey:Ljavax/crypto/SecretKey;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4d

    move p3, v1

    goto :goto_4e

    :cond_4d
    move p3, v0

    :goto_4e
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isShortTermSecretKey="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    if-eqz p3, :cond_67

    goto :goto_68

    :cond_67
    move v1, v0

    :goto_68
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isCacheAllowedByDevice="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->isCacheAllowedByDevice()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result p2

    move p3, v0

    :goto_8f
    if-ge p3, p2, :cond_b4

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCacheAllowedByCarrier["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/PinStorage;->isCacheAllowedByCarrier(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8f

    .line 1231
    :cond_b4
    sget-boolean p2, Lcom/android/internal/telephony/uicc/PinStorage;->VDBG:Z

    if-eqz p2, :cond_e3

    .line 1232
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation()Landroid/util/SparseArray;

    move-result-object p0

    .line 1233
    :goto_bc
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_e3

    .line 1234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " pin="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    invoke-virtual {p3}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 1237
    :cond_e3
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public declared-synchronized blacklist getPin(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 269
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->validateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->validateIccid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4b

    .line 273
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation(I)Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 275
    iget-object v1, v0, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->iccid:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_2c

    const/4 p2, 0x0

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    .line 279
    const-string p1, ""

    const/16 p2, 0x150

    const/4 v0, 0x6

    invoke-static {p2, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    goto :goto_47

    :catchall_2a
    move-exception p1

    goto :goto_4f

    .line 282
    :cond_2c
    iget p2, v0, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_47

    .line 283
    const-string p2, "getPin[%d] - Found PIN ready for verification"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iput v1, v0, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    .line 287
    iget-object p1, v0, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->pin:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_2a

    monitor-exit p0

    return-object p1

    .line 290
    :cond_47
    :goto_47
    :try_start_47
    const-string p1, ""
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_2a

    monitor-exit p0

    return-object p1

    .line 270
    :cond_4b
    :goto_4b
    :try_start_4b
    const-string p1, ""
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_2a

    monitor-exit p0

    return-object p1

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_2a

    throw p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v2, 0x3

    if-eq v0, v2, :cond_25

    const/4 v2, 0x4

    if-eq v0, v2, :cond_21

    const/4 v2, 0x5

    if-eq v0, v2, :cond_f

    return-void

    .line 608
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_1a

    .line 609
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 610
    :goto_1b
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->onSupplyPinComplete(IZ)V

    return-void

    .line 605
    :cond_21
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->onUserUnlocked()V

    return-void

    .line 602
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->onTimerExpiration()V

    return-void

    .line 599
    :cond_29
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->onSimStatusChange(II)V

    return-void
.end method

.method public declared-synchronized blacklist prepareUnattendedReboot(Landroid/os/WorkSource;)I
    .registers 12

    monitor-enter p0

    .line 304
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mIsDeviceLocked:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 305
    const-string p1, "prepareUnattendedReboot - Device is locked"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 306
    monitor-exit p0

    return v1

    :catchall_10
    move-exception p1

    goto/16 :goto_b0

    :cond_13
    const/16 v0, 0x4e20

    .line 310
    :try_start_15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->startTimer(I)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_10

    if-nez v0, :cond_1d

    .line 311
    monitor-exit p0

    return v1

    .line 314
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->getSlotCount()I

    move-result v0

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PinStorage;->loadPinInformation()Landroid/util/SparseArray;

    move-result-object v3

    .line 318
    const-string v4, "PinStorage_shortTerm_key"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/PinStorage;->deleteSecretKey(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 319
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    .line 323
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_3c

    .line 324
    const-string v4, "PinStorage_shortTerm_key"

    .line 325
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/uicc/PinStorage;->initializeSecretKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/PinStorage;->mShortTermSecretKey:Ljavax/crypto/SecretKey;

    :cond_3c
    move v4, v2

    move v6, v4

    move v7, v6

    move v8, v7

    :goto_40
    if-ge v4, v0, :cond_71

    .line 334
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    if-eqz v9, :cond_56

    .line 336
    iput v1, v9, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    .line 337
    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z

    move-result v9

    if-nez v9, :cond_53

    goto :goto_72

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 342
    :cond_56
    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/uicc/PinStorage;->isPinState(ILcom/android/internal/telephony/uicc/IccCardStatus$PinState;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 345
    const-string v7, "Slot %d requires PIN and is not cached"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move v7, v5

    :cond_6e
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_71
    move v1, v7

    :goto_72
    if-eqz p1, :cond_80

    .line 352
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_80

    .line 353
    :cond_7b
    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_82

    :cond_80
    :goto_80
    const-string p1, ""

    :goto_82
    const/16 v0, 0x150

    if-nez v1, :cond_98

    .line 355
    const-string v2, "prepareUnattendedReboot - Stored %d PINs"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 356
    invoke-static {v0, v2, v6, p1}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    goto :goto_ab

    :cond_98
    if-ne v1, v5, :cond_ab

    .line 360
    const-string v2, "prepareUnattendedReboot - Required %d PINs after reboot"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 361
    invoke-static {v0, v2, v8, p1}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIILjava/lang/String;)V

    .line 367
    :cond_ab
    :goto_ab
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/PinStorage;->saveNumberOfCachedPins(I)I
    :try_end_ae
    .catchall {:try_start_1d .. :try_end_ae} :catchall_10

    .line 369
    monitor-exit p0

    return v1

    :goto_b0
    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_10

    throw p1
.end method

.method public declared-synchronized blacklist storePin(Ljava/lang/String;I)V
    .registers 6

    monitor-enter p0

    .line 226
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->validatePin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->validateIccid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->validateSlotId(I)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4f

    .line 234
    :cond_18
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->isCacheAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 235
    const-string p1, "storePin[%d]: caching it not allowed"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 236
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    goto :goto_61

    .line 239
    :cond_2f
    :try_start_2f
    const-string v1, "storePin[%d]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/PinStorage;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    new-instance v1, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;-><init>()V

    .line 242
    iput-object v0, v1, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->iccid:Ljava/lang/String;

    .line 243
    iput-object p1, v1, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->pin:Ljava/lang/String;

    .line 244
    iput p2, v1, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->slotId:I

    const/4 p1, 0x1

    .line 245
    iput p1, v1, Lcom/android/internal/telephony/nano/StoredPinProto$StoredPin;->status:I

    .line 247
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->savePinInformation(ILcom/android/internal/telephony/nano/StoredPinProto$StoredPin;)Z
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_2d

    .line 248
    monitor-exit p0

    return-void

    .line 230
    :cond_4f
    :goto_4f
    :try_start_4f
    const-string p1, "storePin[%d] - Invalid PIN, slotId or ICCID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/PinStorage;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_2d

    .line 232
    monitor-exit p0

    return-void

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_2d

    throw p1
.end method
