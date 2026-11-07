.class public final enum Landroid/audio/policy/configuration/V7_0/AudioUsage;
.super Ljava/lang/Enum;
.source "AudioUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/audio/policy/configuration/V7_0/AudioUsage;
    .registers 19

    .line 3
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v3, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v5, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v6, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v7, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v8, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v9, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v10, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v11, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v12, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v13, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v15, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v16, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v17, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    sget-object v18, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    filled-new-array/range {v1 .. v18}, [Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 5
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_MEDIA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 6
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_VOICE_COMMUNICATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 7
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 8
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_ALARM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 9
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_NOTIFICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 10
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 11
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 12
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 13
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_ASSISTANCE_SONIFICATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 14
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_GAME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 15
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_VIRTUAL_SOURCE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 16
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_ASSISTANT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 17
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_CALL_ASSISTANT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 18
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_EMERGENCY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 19
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_SAFETY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 20
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_VEHICLE_STATUS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 21
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_ANNOUNCEMENT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 3
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->$values()[Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v0

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioUsage;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->rawName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;
    .registers 6
    .param p0, "rawString"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->values()[Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 35
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/AudioUsage;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 36
    return-object v3

    .line 34
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/AudioUsage;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 39
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;
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
    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/AudioUsage;
    .registers 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioUsage;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->rawName:Ljava/lang/String;

    return-object v0
.end method
