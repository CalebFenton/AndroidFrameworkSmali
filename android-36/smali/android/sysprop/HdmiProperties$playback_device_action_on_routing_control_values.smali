.class public final enum Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
.super Ljava/lang/Enum;
.source "HdmiProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/HdmiProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "playback_device_action_on_routing_control_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public static final enum blacklist NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public static final enum blacklist WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public static final enum blacklist WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
    .registers 3

    .line 207
    sget-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    sget-object v2, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    filled-new-array {v0, v1, v2}, [Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 208
    new-instance v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 209
    new-instance v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    const/4 v1, 0x1

    const-string/jumbo v2, "wake_up_only"

    const-string v3, "WAKE_UP_ONLY"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 210
    new-instance v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    const/4 v1, 0x2

    const-string/jumbo v2, "wake_up_and_send_active_source"

    const-string v3, "WAKE_UP_AND_SEND_ACTIVE_SOURCE"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 207
    invoke-static {}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->$values()[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    move-result-object v0

    sput-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->$VALUES:[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

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

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    iput-object p3, p0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->propValue:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
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

    .line 207
    const-class v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    return-object v0
.end method

.method public static blacklist values()[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
    .registers 1

    .line 207
    sget-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->$VALUES:[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-virtual {v0}, [Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
