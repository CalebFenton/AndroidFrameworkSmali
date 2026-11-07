.class public final enum Landroid/audio/policy/configuration/V7_0/AudioSource;
.super Ljava/lang/Enum;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_CAMCORDER:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_DEFAULT:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_ECHO_REFERENCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_FM_TUNER:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_MIC:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_REMOTE_SUBMIX:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_UNPROCESSED:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_VOICE_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_VOICE_PERFORMANCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_VOICE_RECOGNITION:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum blacklist AUDIO_SOURCE_VOICE_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 14

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_DEFAULT:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_MIC:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v3, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v4, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v5, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_CAMCORDER:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v6, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_RECOGNITION:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v7, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v8, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_REMOTE_SUBMIX:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v9, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_UNPROCESSED:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v10, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_PERFORMANCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v11, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_ECHO_REFERENCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v12, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_FM_TUNER:Landroid/audio/policy/configuration/V7_0/AudioSource;

    sget-object v13, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioSource;

    filled-new-array/range {v0 .. v13}, [Landroid/audio/policy/configuration/V7_0/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_DEFAULT:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 5
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_MIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_MIC:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 6
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_VOICE_UPLINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 7
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_VOICE_DOWNLINK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 8
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_VOICE_CALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 9
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_CAMCORDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_CAMCORDER:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 10
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_VOICE_RECOGNITION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_RECOGNITION:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 11
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_VOICE_COMMUNICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 12
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_REMOTE_SUBMIX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_REMOTE_SUBMIX:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 13
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_UNPROCESSED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_UNPROCESSED:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 14
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_VOICE_PERFORMANCE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_PERFORMANCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 15
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_ECHO_REFERENCE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_ECHO_REFERENCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 16
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_FM_TUNER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_FM_TUNER:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 17
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_HOTWORD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioSource;

    .line 3
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioSource;->$values()[Landroid/audio/policy/configuration/V7_0/AudioSource;

    move-result-object v0

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioSource;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioSource;->rawName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 6
    .param p0, "rawString"    # Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioSource;->values()[Landroid/audio/policy/configuration/V7_0/AudioSource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 31
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/AudioSource;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioSource;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 32
    return-object v3

    .line 30
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/AudioSource;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 35
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioSource;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioSource;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioSource;->rawName:Ljava/lang/String;

    return-object v0
.end method
