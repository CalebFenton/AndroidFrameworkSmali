.class public final enum Landroid/sysprop/HdmiProperties$cec_device_types_values;
.super Ljava/lang/Enum;
.source "HdmiProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/HdmiProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "cec_device_types_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/HdmiProperties$cec_device_types_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum blacklist VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;
    .registers 8

    .line 169
    sget-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v2, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v3, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v4, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v5, Landroid/sysprop/HdmiProperties$cec_device_types_values;->AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v6, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    sget-object v7, Landroid/sysprop/HdmiProperties$cec_device_types_values;->VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    filled-new-array/range {v0 .. v7}, [Landroid/sysprop/HdmiProperties$cec_device_types_values;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 170
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x0

    const-string/jumbo v2, "tv"

    const-string v3, "TV"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 171
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x1

    const-string/jumbo v2, "recording_device"

    const-string v3, "RECORDING_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 172
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x2

    const-string/jumbo v2, "reserved"

    const-string v3, "RESERVED"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 173
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x3

    const-string/jumbo v2, "tuner"

    const-string v3, "TUNER"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 174
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x4

    const-string/jumbo v2, "playback_device"

    const-string v3, "PLAYBACK_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 175
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x5

    const-string v2, "audio_system"

    const-string v3, "AUDIO_SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 176
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x6

    const-string/jumbo v2, "pure_cec_switch"

    const-string v3, "PURE_CEC_SWITCH"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 177
    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/4 v1, 0x7

    const-string/jumbo v2, "video_processor"

    const-string v3, "VIDEO_PROCESSOR"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 169
    invoke-static {}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->$values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    move-result-object v0

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->$VALUES:[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "propValue"    # Ljava/lang/String;
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

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput-object p3, p0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->propValue:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/sysprop/HdmiProperties$cec_device_types_values;
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

    .line 169
    const-class v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    return-object v0
.end method

.method public static blacklist values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;
    .registers 1

    .line 169
    sget-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->$VALUES:[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v0}, [Landroid/sysprop/HdmiProperties$cec_device_types_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/HdmiProperties$cec_device_types_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
