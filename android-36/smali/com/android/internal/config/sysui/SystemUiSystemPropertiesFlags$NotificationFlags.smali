.class public final Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationFlags"
.end annotation


# static fields
.field public static final blacklist DEBUG_SHORT_BITMAP_DURATION:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist NOTIF_AVALANCHE_TIMEOUT:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist NOTIF_COOLDOWN_COUNTER_RESET:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist NOTIF_COOLDOWN_T1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist NOTIF_COOLDOWN_T2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist NOTIF_VOLUME1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist NOTIF_VOLUME2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist PROPAGATE_CHANNEL_UPDATES_TO_CONVERSATIONS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public static final blacklist RANKING_UPDATE_ASHMEM:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    nop

    .line 59
    const-string v0, "persist.sysui.notification.log_dnd_state_events"

    invoke-static {v0}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->releasedFlag(Ljava/lang/String;)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 62
    const-string v0, "persist.sysui.notification.ranking_update_ashmem"

    invoke-static {v0}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->RANKING_UPDATE_ASHMEM:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 65
    const-string v0, "persist.sysui.notification.propagate_channel_updates_to_conversations"

    invoke-static {v0}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->releasedFlag(Ljava/lang/String;)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->PROPAGATE_CHANNEL_UPDATES_TO_CONVERSATIONS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 70
    const-string v0, "persist.debug.sysui.notification.notif_cooldown_t1"

    const v1, 0xea60

    invoke-static {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;I)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 73
    const-string v0, "persist.debug.sysui.notification.notif_cooldown_t2"

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;I)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 76
    const-string v0, "persist.debug.sysui.notification.notif_volume1"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;I)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 78
    const-string v0, "persist.debug.sysui.notification.notif_volume2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;I)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 81
    const-string v0, "persist.debug.sysui.notification.notif_cooldown_counter_reset"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;I)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_COUNTER_RESET:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 85
    const-string v0, "persist.debug.sysui.notification.notif_avalanche_timeout"

    const v1, 0x1d4c0

    invoke-static {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;I)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_AVALANCHE_TIMEOUT:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 89
    const-string v0, "persist.sysui.notification.debug_short_bitmap_duration"

    invoke-static {v0}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->devFlag(Ljava/lang/String;)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->DEBUG_SHORT_BITMAP_DURATION:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
