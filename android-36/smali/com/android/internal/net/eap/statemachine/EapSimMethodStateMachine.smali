.class Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
.super Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;
.source "EapSimMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;,
        Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;,
        Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;
    }
.end annotation


# instance fields
.field private final blacklist mEapSimTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEapSimTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mEapSimTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapSimConfig;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapSimConfig"    # Landroid/net/eap/EapSessionConfig$EapSimConfig;
    .param p4, "secureRandom"    # Ljava/security/SecureRandom;

    .line 100
    nop

    .line 101
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 105
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->getEapSimTypeDataDecoder()Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    move-result-object v6

    .line 100
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "eapIdentity":[B
    .end local p3    # "eapSimConfig":Landroid/net/eap/EapSessionConfig$EapSimConfig;
    .end local p4    # "secureRandom":Ljava/security/SecureRandom;
    .local v3, "eapIdentity":[B
    .local v4, "eapSimConfig":Landroid/net/eap/EapSessionConfig$EapSimConfig;
    .local v5, "secureRandom":Ljava/security/SecureRandom;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;-><init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapSimConfig;Ljava/security/SecureRandom;Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;)V

    .line 106
    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapSimConfig;Ljava/security/SecureRandom;Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;)V
    .registers 8
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapSimConfig"    # Landroid/net/eap/EapSessionConfig$EapSimConfig;
    .param p4, "secureRandom"    # Ljava/security/SecureRandom;
    .param p5, "eapSimTypeDataDecoder"    # Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    .line 115
    nop

    .line 116
    invoke-virtual {p3}, Landroid/net/eap/EapSessionConfig$EapSimConfig;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;-><init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapUiccConfig;)V

    .line 120
    if-eqz p5, :cond_1b

    .line 124
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    .line 125
    iput-object p5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mEapSimTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    .line 126
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;-><init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 127
    return-void

    .line 121
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EapSimTypeDataDecoder must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist getEapMethod()I
    .registers 2

    .line 132
    const/16 v0, 0x12

    return v0
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

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

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

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    move-result-object p1

    return-object p1
.end method

.method blacklist getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    .registers 4
    .param p1, "eapSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)",
            "Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;"
        }
    .end annotation

    .line 608
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method blacklist getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    .registers 5
    .param p1, "clientErrorCode"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 604
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;-><init>(ILjava/util/List;)V

    return-object v0
.end method
