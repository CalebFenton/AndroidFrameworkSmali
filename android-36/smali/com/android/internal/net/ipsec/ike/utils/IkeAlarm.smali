.class public abstract Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.super Ljava/lang/Object;
.source "IkeAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;
    }
.end annotation


# static fields
.field private static final blacklist sDeps:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;


# instance fields
.field protected final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field protected final blacklist mDelayMs:J

.field protected final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->sDeps:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V
    .registers 4
    .param p1, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->context:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 42
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->mTag:Ljava/lang/String;

    .line 43
    iget-wide v0, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    iput-wide v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->mDelayMs:J

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    return-void
.end method

.method public static blacklist buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "intentId"    # Ljava/lang/String;
    .param p3, "ikeSmMsg"    # Landroid/os/Message;

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "IkeAlarmReceiver.PARCELABLE_NAME_IKE_SESSION_MSG"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist newExactAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
    .registers 3
    .param p0, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 48
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;

    sget-object v1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->sDeps:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)V

    return-object v0
.end method

.method static blacklist newExactAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
    .registers 3
    .param p0, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .param p1, "deps"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    .line 54
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)V

    return-object v0
.end method

.method public static blacklist newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
    .registers 2
    .param p0, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 62
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->sDeps:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    invoke-static {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v0

    return-object v0
.end method

.method static blacklist newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
    .registers 4
    .param p0, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .param p1, "deps"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;->getMyUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 71
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)V

    return-object v0

    .line 73
    :cond_e
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public abstract blacklist schedule()V
.end method
