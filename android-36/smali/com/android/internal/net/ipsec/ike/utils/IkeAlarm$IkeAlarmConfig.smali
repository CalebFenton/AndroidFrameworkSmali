.class public Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
.super Ljava/lang/Object;
.source "IkeAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeAlarmConfig"
.end annotation


# instance fields
.field public final blacklist context:Landroid/content/Context;

.field public final blacklist delayMs:J

.field public final blacklist message:Landroid/os/Message;

.field public final blacklist pendingIntent:Landroid/app/PendingIntent;

.field public final blacklist tag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "delayMs"    # J
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "message"    # Landroid/os/Message;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->context:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->tag:Ljava/lang/String;

    .line 197
    iput-wide p3, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    .line 198
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->message:Landroid/os/Message;

    .line 199
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->pendingIntent:Landroid/app/PendingIntent;

    .line 200
    return-void
.end method


# virtual methods
.method public blacklist buildCopyWithDelayMs(J)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .registers 10
    .param p1, "updatedDelayMs"    # J

    .line 204
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->message:Landroid/os/Message;

    move-wide v3, p1

    .end local p1    # "updatedDelayMs":J
    .local v3, "updatedDelayMs":J
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    return-object v0
.end method
