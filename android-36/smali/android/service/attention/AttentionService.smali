.class public abstract Landroid/service/attention/AttentionService;
.super Landroid/app/Service;
.source "AttentionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/AttentionService$ProximityUpdateCallback;,
        Landroid/service/attention/AttentionService$AttentionCallback;,
        Landroid/service/attention/AttentionService$AttentionFailureCodes;,
        Landroid/service/attention/AttentionService$AttentionSuccessCodes;
    }
.end annotation


# static fields
.field public static final whitelist ATTENTION_FAILURE_CAMERA_PERMISSION_ABSENT:I = 0x6

.field public static final whitelist ATTENTION_FAILURE_CANCELLED:I = 0x3

.field public static final whitelist ATTENTION_FAILURE_PREEMPTED:I = 0x4

.field public static final whitelist ATTENTION_FAILURE_TIMED_OUT:I = 0x5

.field public static final whitelist ATTENTION_FAILURE_UNKNOWN:I = 0x2

.field public static final whitelist ATTENTION_SUCCESS_ABSENT:I = 0x0

.field public static final whitelist ATTENTION_SUCCESS_PRESENT:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AttentionService"

.field public static final whitelist PROXIMITY_UNKNOWN:D = -1.0

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.attention.AttentionService"


# instance fields
.field private final blacklist mBinder:Landroid/service/attention/IAttentionService$Stub;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    new-instance v0, Landroid/service/attention/AttentionService$1;

    invoke-direct {v0, p0}, Landroid/service/attention/AttentionService$1;-><init>(Landroid/service/attention/AttentionService;)V

    iput-object v0, p0, Landroid/service/attention/AttentionService;->mBinder:Landroid/service/attention/IAttentionService$Stub;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 147
    const-string v0, "android.service.attention.AttentionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 148
    iget-object v0, p0, Landroid/service/attention/AttentionService;->mBinder:Landroid/service/attention/IAttentionService$Stub;

    return-object v0

    .line 150
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onCancelAttentionCheck(Landroid/service/attention/AttentionService$AttentionCallback;)V
.end method

.method public abstract whitelist onCheckAttention(Landroid/service/attention/AttentionService$AttentionCallback;)V
.end method

.method public whitelist onStartProximityUpdates(Landroid/service/attention/AttentionService$ProximityUpdateCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/attention/AttentionService$ProximityUpdateCallback;

    .line 174
    const-string v0, "AttentionService"

    const-string v1, "Override this method."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public whitelist onStopProximityUpdates()V
    .registers 3

    .line 181
    const-string v0, "AttentionService"

    const-string v1, "Override this method."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method
