.class Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
.super Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;
.source "EapAkaMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;,
        Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;,
        Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;,
        Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;
    }
.end annotation


# static fields
.field private static final blacklist AKA_IDENTITY_PREFIX:Ljava/lang/String; = "0"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mEapAkaTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

.field private final blacklist mEapSimAkaIdentityTracker:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

.field private final blacklist mSupportsEapAkaPrime:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSupportsEapAkaPrime(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mSupportsEapAkaPrime:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAvailableReauthInfo(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B[B)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getAvailableReauthInfo([B[B)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetReauthIdentity(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)[B
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getReauthIdentity()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessEapSuccess(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[BI)Lcom/android/internal/net/eap/EapResult$EapSuccess;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->processEapSuccess([BI)Lcom/android/internal/net/eap/EapResult$EapSuccess;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapAkaConfig"    # Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    .line 123
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "eapIdentity":[B
    .end local p3    # "eapAkaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .local v1, "context":Landroid/content/Context;
    .local v2, "eapIdentity":[B
    .local v3, "eapAkaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;-><init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;ZLjava/security/SecureRandom;)V

    .line 124
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;ZLjava/security/SecureRandom;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapAkaConfig"    # Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .param p4, "supportsEapAkaPrime"    # Z
    .param p5, "secureRandom"    # Ljava/security/SecureRandom;

    .line 132
    nop

    .line 133
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 136
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->getEapAkaTypeDataDecoder()Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

    move-result-object v5

    .line 132
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    .end local p2    # "eapIdentity":[B
    .end local p3    # "eapAkaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .end local p4    # "supportsEapAkaPrime":Z
    .end local p5    # "secureRandom":Ljava/security/SecureRandom;
    .local v3, "eapIdentity":[B
    .local v4, "eapAkaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .local v6, "supportsEapAkaPrime":Z
    .local v7, "secureRandom":Ljava/security/SecureRandom;
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;-><init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;ZLjava/security/SecureRandom;)V

    .line 139
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;ZLjava/security/SecureRandom;)V
    .registers 8
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapAkaConfig"    # Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .param p4, "eapAkaTypeDataDecoder"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;
    .param p5, "supportsEapAkaPrime"    # Z
    .param p6, "secureRandom"    # Ljava/security/SecureRandom;

    .line 149
    nop

    .line 150
    invoke-virtual {p3}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;-><init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapUiccConfig;)V

    .line 153
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapAkaTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

    .line 154
    iput-boolean p5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mSupportsEapAkaPrime:Z

    .line 155
    invoke-static {}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->getInstance()Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapSimAkaIdentityTracker:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    .line 156
    iput-object p6, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    .line 157
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 158
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAvailableReauthInfo([B[B)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    .registers 8
    .param p1, "reauthId"    # [B
    .param p2, "eapId"    # [B

    .line 170
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_6

    goto :goto_29

    .line 174
    :cond_6
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 175
    .local v1, "reauthIdentity":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 176
    .local v2, "permanentIdentity":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapSimAkaIdentityTracker:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    .line 177
    invoke-virtual {v3, v1, v2}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->getReauthInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    move-result-object v3

    .line 178
    .local v3, "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapSimAkaIdentityTracker:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->deleteReauthInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 180
    return-object v3

    .line 182
    :cond_28
    return-object v0

    .line 171
    .end local v1    # "reauthIdentity":Ljava/lang/String;
    .end local v2    # "permanentIdentity":Ljava/lang/String;
    .end local v3    # "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    :cond_29
    :goto_29
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->TAG:Ljava/lang/String;

    const-string v3, "getAvailableReauthInfo with NULL ID"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v0
.end method

.method private blacklist getReauthIdentity()[B
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    .line 162
    .local v0, "akaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 163
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig$EapAkaOption;->getReauthId()[B

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 164
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig$EapAkaOption;->getReauthId()[B

    move-result-object v1

    return-object v1

    .line 166
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist processEapSuccess([BI)Lcom/android/internal/net/eap/EapResult$EapSuccess;
    .registers 10
    .param p1, "nextReauthId"    # [B
    .param p2, "reauthCounter"    # I

    .line 930
    if-eqz p1, :cond_35

    .line 931
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapSimAkaIdentityTracker:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapIdentity:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mMk:[B

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mKEncr:[B

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mKAut:[B

    move v3, p2

    .end local p2    # "reauthCounter":I
    .local v3, "reauthCounter":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->registerReauthCredentials(Ljava/lang/String;Ljava/lang/String;I[B[B[B)V

    .line 938
    new-instance p2, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mMsk:[B

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEmsk:[B

    new-instance v2, Landroid/net/eap/EapAkaInfo$Builder;

    invoke-direct {v2}, Landroid/net/eap/EapAkaInfo$Builder;-><init>()V

    .line 942
    invoke-virtual {v2, p1}, Landroid/net/eap/EapAkaInfo$Builder;->setReauthId([B)Landroid/net/eap/EapAkaInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/eap/EapAkaInfo$Builder;->build()Landroid/net/eap/EapAkaInfo;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/android/internal/net/eap/EapResult$EapSuccess;-><init>([B[BLandroid/net/eap/EapInfo;)V

    .local p2, "eapSuccess":Lcom/android/internal/net/eap/EapResult$EapSuccess;
    goto :goto_3f

    .line 944
    .end local v3    # "reauthCounter":I
    .local p2, "reauthCounter":I
    :cond_35
    move v3, p2

    .end local p2    # "reauthCounter":I
    .restart local v3    # "reauthCounter":I
    new-instance p2, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mMsk:[B

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEmsk:[B

    invoke-direct {p2, v0, v1}, Lcom/android/internal/net/eap/EapResult$EapSuccess;-><init>([B[B)V

    .line 946
    .local p2, "eapSuccess":Lcom/android/internal/net/eap/EapResult$EapSuccess;
    :goto_3f
    return-object p2
.end method


# virtual methods
.method protected blacklist buildChallengeState()Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
    .registers 2

    .line 205
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V

    return-object v0
.end method

.method protected blacklist buildChallengeState([B)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
    .registers 3
    .param p1, "identity"    # [B

    .line 209
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B)V

    return-object v0
.end method

.method protected blacklist buildReauthState()Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;
    .registers 2

    .line 213
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V

    return-object v0
.end method

.method protected blacklist buildReauthState([BLcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;
    .registers 4
    .param p1, "identity"    # [B
    .param p2, "reauthInfo"    # Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 217
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[BLcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;)V

    return-object v0
.end method

.method protected blacklist decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;
    .registers 3
    .param p1, "typeData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<",
            "Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapAkaTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method blacklist getEapMethod()I
    .registers 2

    .line 188
    const/16 v0, 0x17

    return v0
.end method

.method blacklist getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    .registers 4
    .param p1, "eapSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)",
            "Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;"
        }
    .end annotation

    .line 954
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method blacklist getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    .registers 5
    .param p1, "clientErrorCode"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 950
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method bridge synthetic blacklist getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getIdentityPrefix()Ljava/lang/String;
    .registers 2

    .line 201
    const-string v0, "0"

    return-object v0
.end method
