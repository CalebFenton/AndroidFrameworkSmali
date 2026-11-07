.class public final enum Landroid/audio/policy/configuration/V7_0/AudioStreamType;
.super Ljava/lang/Enum;
.source "AudioStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_ALARM:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_BLUETOOTH_SCO:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_DTMF:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_ENFORCED_AUDIBLE:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_PATCH:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_REROUTING:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_RING:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_SYSTEM:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_TTS:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

.field public static final enum blacklist AUDIO_STREAM_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioStreamType;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    .registers 15

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_SYSTEM:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_RING:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v3, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v4, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ALARM:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v5, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v6, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_BLUETOOTH_SCO:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v7, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ENFORCED_AUDIBLE:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v8, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_DTMF:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v9, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_TTS:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v10, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v11, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v12, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_REROUTING:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v13, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_PATCH:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    filled-new-array/range {v0 .. v14}, [Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_VOICE_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 5
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_SYSTEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_SYSTEM:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 6
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_RING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_RING:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 7
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_MUSIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 8
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_ALARM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ALARM:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 9
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_NOTIFICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 10
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_BLUETOOTH_SCO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_BLUETOOTH_SCO:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 11
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_ENFORCED_AUDIBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ENFORCED_AUDIBLE:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 12
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_DTMF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_DTMF:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 13
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_TTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_TTS:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 14
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_ACCESSIBILITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 15
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_ASSISTANT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 16
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_REROUTING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_REROUTING:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 17
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_PATCH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_PATCH:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 18
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    const-string v1, "AUDIO_STREAM_CALL_ASSISTANT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->AUDIO_STREAM_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 3
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->$values()[Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    move-result-object v0

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioStreamType;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->rawName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    .registers 6
    .param p0, "rawString"    # Ljava/lang/String;

    .line 31
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->values()[Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 32
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 33
    return-object v3

    .line 31
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 36
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioStreamType;
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
    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    .registers 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->rawName:Ljava/lang/String;

    return-object v0
.end method
