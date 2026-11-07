.class public final Landroid/ranging/RangingManager;
.super Ljava/lang/Object;
.source "RangingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingManager$RangingCapabilitiesCallback;,
        Landroid/ranging/RangingManager$RangingTechnology;
    }
.end annotation


# static fields
.field public static final whitelist BLE_CS:I = 0x1

.field public static final whitelist BLE_RSSI:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "RangingManager"

.field public static final whitelist UWB:I = 0x0

.field public static final whitelist WIFI_NAN_RTT:I = 0x2


# instance fields
.field private final blacklist mCapabilitiesListener:Landroid/ranging/CapabilitiesListener;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mRangingAdapter:Landroid/ranging/IRangingAdapter;

.field private final blacklist mRangingSessionManager:Landroid/ranging/RangingSessionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/ranging/IRangingAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/ranging/IRangingAdapter;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/ranging/RangingManager;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Landroid/ranging/RangingManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    .line 100
    new-instance v0, Landroid/ranging/CapabilitiesListener;

    invoke-direct {v0, p2}, Landroid/ranging/CapabilitiesListener;-><init>(Landroid/ranging/IRangingAdapter;)V

    iput-object v0, p0, Landroid/ranging/RangingManager;->mCapabilitiesListener:Landroid/ranging/CapabilitiesListener;

    .line 101
    new-instance v0, Landroid/ranging/RangingSessionManager;

    invoke-direct {v0, p2}, Landroid/ranging/RangingSessionManager;-><init>(Landroid/ranging/IRangingAdapter;)V

    iput-object v0, p0, Landroid/ranging/RangingManager;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    .line 102
    return-void
.end method

.method private blacklist createRangingSessionInternal(Landroid/content/AttributionSource;Landroid/ranging/RangingSession$Callback;Ljava/util/concurrent/Executor;)Landroid/ranging/RangingSession;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "callback"    # Landroid/ranging/RangingSession$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 171
    iget-object v0, p0, Landroid/ranging/RangingManager;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/ranging/RangingSessionManager;->createRangingSessionInstance(Landroid/content/AttributionSource;Landroid/ranging/RangingSession$Callback;Ljava/util/concurrent/Executor;)Landroid/ranging/RangingSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist createRangingSession(Ljava/util/concurrent/Executor;Landroid/ranging/RangingSession$Callback;)Landroid/ranging/RangingSession;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/ranging/RangingSession$Callback;

    .line 164
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Landroid/ranging/RangingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Landroid/ranging/RangingManager;->createRangingSessionInternal(Landroid/content/AttributionSource;Landroid/ranging/RangingSession$Callback;Ljava/util/concurrent/Executor;)Landroid/ranging/RangingSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerCapabilitiesCallback(Ljava/util/concurrent/Executor;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 118
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "Capabilities callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Landroid/ranging/RangingManager;->mCapabilitiesListener:Landroid/ranging/CapabilitiesListener;

    invoke-virtual {v0, p1, p2}, Landroid/ranging/CapabilitiesListener;->register(Ljava/util/concurrent/Executor;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    .line 121
    return-void
.end method

.method public whitelist unregisterCapabilitiesCallback(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 133
    const-string v0, "Capabilities callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Landroid/ranging/RangingManager;->mCapabilitiesListener:Landroid/ranging/CapabilitiesListener;

    invoke-virtual {v0, p1}, Landroid/ranging/CapabilitiesListener;->unregister(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    .line 135
    return-void
.end method
