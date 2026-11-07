.class public Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;
.super Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
.source "EapAkaPrimeMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;
    }
.end annotation


# static fields
.field private static final blacklist AKA_PRIME_IDENTITY_PREFIX:Ljava/lang/String; = "6"

.field private static final blacklist CK_PRIME_LENGTH:I = 0x10

.field private static final blacklist FC:I = 0x20

.field private static final blacklist IK_PRIME_LENGTH:I = 0x10

.field public static final blacklist K_AUT_LEN:I = 0x20

.field public static final blacklist K_RE_LEN:I = 0x20

.field private static final blacklist MAC_ALGORITHM_STRING:Ljava/lang/String; = "HmacSHA256"

.field private static final blacklist MK_DATA_PREFIX:Ljava/lang/String; = "EAP-AKA\'"

.field private static final blacklist MK_LEN_BYTES:I = 0xd0

.field private static final blacklist SQN_XOR_AK_LEN:I = 0x6

.field private static final blacklist SUPPORTED_KDF:I = 0x1


# instance fields
.field private final blacklist mEapAkaPrimeConfig:Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

.field private final blacklist mEapAkaPrimeTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

.field public final blacklist mKRe:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEapAkaPrimeConfig(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mEapAkaPrimeConfig:Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapAkaPrimeConfig"    # Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    .line 106
    nop

    .line 110
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;->getEapAkaPrimeTypeDataDecoder()Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    move-result-object v0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;-><init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;)V

    .line 111
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapAkaPrimeConfig"    # Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    .param p4, "eapAkaPrimeTypeDataDecoder"    # Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;-><init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->getKReLen()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKRe:[B

    .line 120
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mEapAkaPrimeConfig:Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    .line 121
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mEapAkaPrimeTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    .line 123
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist buildChallengeState()Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->buildChallengeState()Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist buildChallengeState([B)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->buildChallengeState([B)Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist buildChallengeState()Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;
    .registers 2

    .line 153
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;)V

    return-object v0
.end method

.method protected blacklist buildChallengeState([B)Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;
    .registers 3
    .param p1, "identity"    # [B

    .line 158
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;[B)V

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

    .line 143
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mEapAkaPrimeTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method blacklist getEapMethod()I
    .registers 2

    .line 129
    const/16 v0, 0x32

    return v0
.end method

.method blacklist getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;
    .registers 4
    .param p1, "eapSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)",
            "Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;"
        }
    .end annotation

    .line 343
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method blacklist getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;
    .registers 5
    .param p1, "clientErrorCode"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 339
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method bridge synthetic blacklist getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
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

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    move-result-object p1

    return-object p1
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

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

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

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getIdentityPrefix()Ljava/lang/String;
    .registers 2

    .line 148
    const-string v0, "6"

    return-object v0
.end method

.method protected blacklist getKAutLength()I
    .registers 2

    .line 134
    const/16 v0, 0x20

    return v0
.end method

.method protected blacklist getKReLen()I
    .registers 2

    .line 138
    const/16 v0, 0x20

    return v0
.end method

.method protected blacklist getMacAlgorithm()Ljava/lang/String;
    .registers 2

    .line 163
    const-string v0, "HmacSHA256"

    return-object v0
.end method
