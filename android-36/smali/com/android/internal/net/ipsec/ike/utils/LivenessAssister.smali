.class public Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;
.super Ljava/lang/Object;
.source "LivenessAssister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;,
        Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;,
        Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessRequestType;
    }
.end annotation


# static fields
.field public static final blacklist REQ_TYPE_BACKGROUND:I = 0x2

.field public static final blacklist REQ_TYPE_INITIAL:I = 0x0

.field public static final blacklist REQ_TYPE_ON_DEMAND:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

.field private blacklist mLivenessCheckRequested:I

.field private blacklist mLivenessMetricHelper:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;

.field private final blacklist mUserCbExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$JHfV-zmMTh6wso6ssDMEFMGqQss(Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->lambda$invokeUserCallback$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/ipsec/ike/IkeSessionCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "metricsCallback"    # Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    .line 84
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    .line 86
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;

    invoke-direct {v0, p3}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;-><init>(Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessMetricHelper:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;

    .line 87
    return-void
.end method

.method private blacklist invokeUserCallback(I)V
    .registers 6
    .param p1, "status"    # I

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessMetricHelper:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->recordLivenessStatus(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 175
    goto :goto_1c

    .line 173
    :catch_10
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->TAG:Ljava/lang/String;

    const-string v3, "onLivenessStatusChanged execution failed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method private synthetic blacklist lambda$invokeUserCallback$0(I)V
    .registers 3
    .param p1, "status"    # I

    .line 171
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    invoke-interface {v0, p1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onLivenessStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist isLivenessCheckRequested()Z
    .registers 2

    .line 161
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist livenessCheckRequested(I)V
    .registers 4
    .param p1, "requestType"    # I

    .line 108
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_22

    goto :goto_21

    .line 122
    :pswitch_7
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->invokeUserCallback(I)V

    goto :goto_21

    .line 119
    :pswitch_c
    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->invokeUserCallback(I)V

    .line 120
    goto :goto_21

    .line 110
    :pswitch_10
    if-ne p1, v1, :cond_19

    .line 111
    iput v1, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->invokeUserCallback(I)V

    goto :goto_21

    .line 113
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 114
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    .line 115
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->invokeUserCallback(I)V

    .line 125
    :cond_21
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist markPeerAsAlive()V
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    if-nez v0, :cond_5

    .line 134
    return-void

    .line 137
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    .line 138
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->invokeUserCallback(I)V

    .line 139
    return-void
.end method

.method public blacklist markPeerAsDead()V
    .registers 2

    .line 147
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    if-nez v0, :cond_5

    .line 148
    return-void

    .line 151
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->mLivenessCheckRequested:I

    .line 152
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->invokeUserCallback(I)V

    .line 153
    return-void
.end method
