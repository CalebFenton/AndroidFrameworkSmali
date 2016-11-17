.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field public static final FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mIsConnecting:Z

.field private mIsDestroyed:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static synthetic -get0(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/app/UiAutomation;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/app/UiAutomation;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/UiAutomation;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    #@2
    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    const-class v0, Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@a
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@11
    .line 124
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@14
    .line 186
    if-nez p1, :cond_0

    #@16
    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Looper cannot be null!"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 189
    :cond_0
    if-nez p2, :cond_1

    #@21
    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v1, "Connection cannot be null!"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 192
    :cond_1
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@2c
    .line 193
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    #@2e
    invoke-direct {v0, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    #@31
    iput-object v0, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@33
    .line 185
    return-void
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1007
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1017
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1009
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    #@7
    return v0

    #@8
    .line 1012
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    #@a
    return v0

    #@b
    .line 1015
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    #@d
    return v0

    #@e
    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .locals 2

    #@0
    .prologue
    .line 1023
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    #@0
    .prologue
    .line 1027
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "UiAutomation not connected!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1026
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    #@0
    .prologue
    .line 1033
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1034
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "UiAutomation not connected!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1032
    :cond_0
    return-void
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 3

    #@0
    .prologue
    .line 853
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 854
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 861
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    .line 852
    :goto_0
    return-void

    #@d
    .line 853
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v1

    #@f
    throw v2

    #@10
    .line 862
    :catch_0
    move-exception v0

    #@11
    .line 863
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "Error clearing window animation frame stats!"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 3
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 783
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 784
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 791
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 783
    :catchall_0
    move-exception v2

    #@f
    monitor-exit v1

    #@10
    throw v2

    #@11
    .line 792
    :catch_0
    move-exception v0

    #@12
    .line 793
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Error clearing window content frame stats!"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 795
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public connect()V
    .locals 1

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->connect(I)V

    #@4
    .line 201
    return-void
.end method

.method public connect(I)V
    .locals 12
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 213
    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    #@6
    .line 215
    iget-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v8, :cond_0

    #@a
    monitor-exit v9

    #@b
    .line 216
    return-void

    #@c
    .line 218
    :cond_0
    const/4 v8, 0x1

    #@d
    :try_start_1
    iput-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v9

    #@10
    .line 223
    :try_start_2
    iget-object v8, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@12
    iget-object v9, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@14
    invoke-interface {v8, v9, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    #@17
    .line 224
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@19
    .line 229
    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v9

    #@1c
    .line 230
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1f
    move-result-wide v6

    #@20
    .line 233
    .local v6, "startTimeMillis":J
    :goto_0
    :try_start_4
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_1

    #@26
    .line 248
    const/4 v8, 0x0

    #@27
    :try_start_5
    iput-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@29
    monitor-exit v9

    #@2a
    .line 212
    return-void

    #@2b
    .line 213
    .end local v6    # "startTimeMillis":J
    :catchall_0
    move-exception v8

    #@2c
    monitor-exit v9

    #@2d
    throw v8

    #@2e
    .line 225
    :catch_0
    move-exception v3

    #@2f
    .line 226
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@31
    const-string/jumbo v9, "Error while connecting UiAutomation"

    #@34
    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v8

    #@38
    .line 236
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v6    # "startTimeMillis":J
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3b
    move-result-wide v10

    #@3c
    sub-long v0, v10, v6

    #@3e
    .line 237
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v10, 0x1388

    #@40
    sub-long v4, v10, v0

    #@42
    .line 238
    .local v4, "remainingTimeMillis":J
    const-wide/16 v10, 0x0

    #@44
    cmp-long v8, v4, v10

    #@46
    if-gtz v8, :cond_2

    #@48
    .line 239
    new-instance v8, Ljava/lang/RuntimeException;

    #@4a
    const-string/jumbo v10, "Error while connecting UiAutomation"

    #@4d
    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@51
    .line 247
    .end local v0    # "elapsedTimeMillis":J
    .end local v4    # "remainingTimeMillis":J
    :catchall_1
    move-exception v8

    #@52
    .line 248
    const/4 v10, 0x0

    #@53
    :try_start_7
    iput-boolean v10, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    #@55
    .line 247
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@56
    .line 229
    .end local v6    # "startTimeMillis":J
    :catchall_2
    move-exception v8

    #@57
    monitor-exit v9

    #@58
    throw v8

    #@59
    .line 242
    .restart local v0    # "elapsedTimeMillis":J
    .restart local v4    # "remainingTimeMillis":J
    .restart local v6    # "startTimeMillis":J
    :cond_2
    :try_start_8
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@5b
    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@5e
    goto :goto_0

    #@5f
    .line 243
    :catch_1
    move-exception v2

    #@60
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    #@3
    .line 331
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    #@6
    .line 329
    return-void
.end method

.method public disconnect()V
    .locals 4

    #@0
    .prologue
    .line 270
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 271
    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 272
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    .line 273
    const-string/jumbo v3, "Cannot call disconnect() while connecting!"

    #@c
    .line 272
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 270
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 275
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@16
    .line 276
    const/4 v1, -0x1

    #@17
    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 280
    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@1c
    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1f
    .line 269
    return-void

    #@20
    .line 281
    :catch_0
    move-exception v0

    #@21
    .line 282
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v2, "Error while disconnecting UiAutomation"

    #@26
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 17
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 566
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v13

    #@5
    .line 567
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@8
    .line 568
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    #@f
    .line 570
    const/4 v12, 0x1

    #@10
    move-object/from16 v0, p0

    #@12
    iput-boolean v12, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v13

    #@15
    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v6

    #@19
    .line 580
    .local v6, "executionStartTimeMillis":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    #@1c
    .line 583
    move-object/from16 v0, p0

    #@1e
    iget-object v13, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@20
    monitor-enter v13

    #@21
    .line 586
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@24
    move-result-wide v10

    #@25
    .line 589
    .local v10, "startTimeMillis":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@27
    iget-object v12, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    #@2c
    move-result v12

    #@2d
    if-nez v12, :cond_2

    #@2f
    .line 590
    move-object/from16 v0, p0

    #@31
    iget-object v12, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@33
    const/4 v14, 0x0

    #@34
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    #@3a
    .line 592
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    #@3d
    move-result-wide v14

    #@3e
    cmp-long v12, v14, v6

    #@40
    if-ltz v12, :cond_0

    #@42
    .line 595
    move-object/from16 v0, p2

    #@44
    invoke-interface {v0, v4}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@47
    move-result v12

    #@48
    if-eqz v12, :cond_1

    #@4a
    .line 614
    const/4 v12, 0x0

    #@4b
    :try_start_2
    move-object/from16 v0, p0

    #@4d
    iput-boolean v12, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    #@4f
    .line 615
    move-object/from16 v0, p0

    #@51
    iget-object v12, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    #@56
    .line 616
    move-object/from16 v0, p0

    #@58
    iget-object v12, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@5a
    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@5d
    monitor-exit v13

    #@5e
    .line 596
    return-object v4

    #@5f
    .line 566
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v6    # "executionStartTimeMillis":J
    .end local v10    # "startTimeMillis":J
    :catchall_0
    move-exception v12

    #@60
    monitor-exit v13

    #@61
    throw v12

    #@62
    .line 598
    .restart local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v6    # "executionStartTimeMillis":J
    .restart local v10    # "startTimeMillis":J
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@65
    goto :goto_0

    #@66
    .line 613
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v10    # "startTimeMillis":J
    :catchall_1
    move-exception v12

    #@67
    .line 614
    const/4 v14, 0x0

    #@68
    :try_start_4
    move-object/from16 v0, p0

    #@6a
    iput-boolean v14, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    #@6c
    .line 615
    move-object/from16 v0, p0

    #@6e
    iget-object v14, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@73
    .line 616
    move-object/from16 v0, p0

    #@75
    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@77
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    #@7a
    .line 613
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@7b
    .line 583
    :catchall_2
    move-exception v12

    #@7c
    monitor-exit v13

    #@7d
    throw v12

    #@7e
    .line 601
    .restart local v10    # "startTimeMillis":J
    :cond_2
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@81
    move-result-wide v14

    #@82
    sub-long v2, v14, v10

    #@84
    .line 602
    .local v2, "elapsedTimeMillis":J
    sub-long v8, p3, v2

    #@86
    .line 603
    .local v8, "remainingTimeMillis":J
    const-wide/16 v14, 0x0

    #@88
    cmp-long v12, v8, v14

    #@8a
    if-gtz v12, :cond_3

    #@8c
    .line 604
    new-instance v12, Ljava/util/concurrent/TimeoutException;

    #@8e
    new-instance v14, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v15, "Expected event not received within: "

    #@96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v14

    #@9a
    move-wide/from16 v0, p3

    #@9c
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v14

    #@a0
    .line 605
    const-string/jumbo v15, " ms."

    #@a3
    .line 604
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v14

    #@a7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v14

    #@ab
    invoke-direct {v12, v14}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@af
    .line 608
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    #@b1
    iget-object v12, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@b3
    invoke-virtual {v12, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b6
    goto/16 :goto_0

    #@b8
    .line 609
    :catch_0
    move-exception v5

    #@b9
    .local v5, "ie":Ljava/lang/InterruptedException;
    goto/16 :goto_0
.end method

.method public executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 981
    iget-object v5, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 982
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v5

    #@7
    .line 985
    const/4 v4, 0x0

    #@8
    .line 986
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    #@9
    .line 989
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@c
    move-result-object v1

    #@d
    .line 990
    .local v1, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    #@e
    aget-object v4, v1, v5

    #@10
    .line 991
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x1

    #@11
    aget-object v3, v1, v5

    #@13
    .line 994
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@15
    invoke-interface {v5, p1, v3}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    .line 1000
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b
    .line 1003
    .end local v1    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "sink":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "source":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v4

    #@1c
    .line 981
    :catchall_0
    move-exception v6

    #@1d
    monitor-exit v5

    #@1e
    throw v6

    #@1f
    .line 997
    :catch_0
    move-exception v2

    #@20
    .line 998
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@22
    const-string/jumbo v6, "Error executing shell command!"

    #@25
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    .line 1000
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2b
    goto :goto_0

    #@2c
    .line 995
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@2d
    .line 996
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@2f
    const-string/jumbo v6, "Error executing shell command!"

    #@32
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@35
    .line 1000
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@38
    goto :goto_0

    #@39
    .line 999
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    #@3a
    .line 1000
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 999
    throw v5
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "focus"    # I

    #@0
    .prologue
    .line 383
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v1

    #@4
    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@6
    .line 384
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@8
    const/4 v3, -0x2

    #@9
    move v6, p1

    #@a
    .line 383
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getConnectionId()I
    .locals 2

    #@0
    .prologue
    .line 294
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 295
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@6
    .line 296
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 294
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 261
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    #@2
    return v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    #@0
    .prologue
    .line 474
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 475
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@6
    .line 476
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .local v0, "connectionId":I
    monitor-exit v2

    #@9
    .line 479
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 474
    .end local v0    # "connectionId":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 398
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@7
    .line 400
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@a
    move-result-object v2

    #@b
    .line 401
    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@d
    .line 400
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v0

    #@11
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3

    #@12
    .line 404
    if-eqz v0, :cond_0

    #@14
    .line 406
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 398
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .line 407
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    #@1d
    .line 408
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@1f
    const-string/jumbo v3, "Error while getting AccessibilityServiceInfo"

    #@22
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 411
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v5
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 3

    #@0
    .prologue
    .line 895
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 896
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 903
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 895
    :catchall_0
    move-exception v2

    #@f
    monitor-exit v1

    #@10
    throw v2

    #@11
    .line 904
    :catch_0
    move-exception v0

    #@12
    .line 905
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Error getting window animation frame stats!"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 907
    const/4 v1, 0x0

    #@1b
    return-object v1
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 3
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 828
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 829
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 836
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 828
    :catchall_0
    move-exception v2

    #@f
    monitor-exit v1

    #@10
    throw v2

    #@11
    .line 837
    :catch_0
    move-exception v0

    #@12
    .line 838
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Error getting window content frame stats!"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 840
    const/4 v1, 0x0

    #@1b
    return-object v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 458
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 459
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@6
    .line 460
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .local v0, "connectionId":I
    monitor-exit v2

    #@9
    .line 463
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 458
    .end local v0    # "connectionId":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 921
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 922
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 929
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    .line 930
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@c
    move-result v2

    #@d
    .line 929
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@10
    .line 932
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 921
    :catchall_0
    move-exception v2

    #@13
    monitor-exit v1

    #@14
    throw v2

    #@15
    .line 933
    :catch_0
    move-exception v0

    #@16
    .line 934
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@18
    const-string/jumbo v2, "Error granting runtime permission"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 936
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 493
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 494
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 501
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    invoke-interface {v1, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 493
    :catchall_0
    move-exception v2

    #@f
    monitor-exit v1

    #@10
    throw v2

    #@11
    .line 502
    :catch_0
    move-exception v0

    #@12
    .line 503
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Error while injecting input event!"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 505
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    #@2
    return v0
.end method

.method public final performGlobalAction(I)Z
    .locals 5
    .param p1, "action"    # I

    #@0
    .prologue
    .line 349
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 350
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@6
    .line 351
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@9
    move-result-object v2

    #@a
    .line 352
    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@c
    .line 351
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3

    #@11
    .line 355
    if-eqz v0, :cond_0

    #@13
    .line 357
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    move-result v2

    #@17
    return v2

    #@18
    .line 349
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 358
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    #@1c
    .line 359
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@1e
    const-string/jumbo v3, "Error while calling performGlobalAction"

    #@21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 362
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 950
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 951
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 958
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@9
    .line 959
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@c
    move-result v2

    #@d
    .line 958
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@10
    .line 961
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 950
    :catchall_0
    move-exception v2

    #@13
    monitor-exit v1

    #@14
    throw v2

    #@15
    .line 962
    :catch_0
    move-exception v0

    #@16
    .line 963
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@18
    const-string/jumbo v2, "Error revoking runtime permission"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 965
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 318
    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 316
    return-void

    #@7
    .line 317
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setRotation(I)Z
    .locals 3
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 525
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 526
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 528
    packed-switch p1, :pswitch_data_0

    #@a
    .line 544
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "Invalid rotation."

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 525
    :catchall_0
    move-exception v2

    #@14
    monitor-exit v1

    #@15
    throw v2

    #@16
    .line 537
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@18
    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1b
    .line 538
    const/4 v1, 0x1

    #@1c
    return v1

    #@1d
    .line 539
    :catch_0
    move-exception v0

    #@1e
    .line 540
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@20
    const-string/jumbo v2, "Error while setting rotation!"

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 542
    const/4 v1, 0x0

    #@27
    return v1

    #@28
    .line 528
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 758
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 759
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 762
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@e
    .line 757
    :goto_0
    return-void

    #@f
    .line 758
    :catchall_0
    move-exception v2

    #@10
    monitor-exit v1

    #@11
    throw v2

    #@12
    .line 763
    :catch_0
    move-exception v0

    #@13
    .line 764
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@15
    const-string/jumbo v2, "Error while setting run as monkey!"

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 424
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 425
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@6
    .line 426
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    #@d
    .line 427
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v2

    #@11
    .line 428
    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    #@13
    .line 427
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3

    #@18
    .line 431
    if-eqz v0, :cond_0

    #@1a
    .line 433
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1d
    .line 422
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 424
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2

    #@21
    .line 434
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    #@22
    .line 435
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@24
    const-string/jumbo v3, "Error while setting AccessibilityServiceInfo"

    #@27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    #@0
    .prologue
    .line 677
    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 678
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v11

    #@7
    .line 680
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@a
    move-result-object v11

    #@b
    .line 681
    const/4 v12, 0x0

    #@c
    .line 680
    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    #@f
    move-result-object v1

    #@10
    .line 682
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    #@12
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    #@15
    .line 683
    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@18
    .line 684
    iget v4, v3, Landroid/graphics/Point;->x:I

    #@1a
    .line 685
    .local v4, "displayWidth":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    #@1c
    .line 690
    .local v2, "displayHeight":I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    #@1f
    move-result v6

    #@20
    .line 691
    .local v6, "rotation":I
    packed-switch v6, :pswitch_data_0

    #@23
    .line 709
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v12, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v13, "Invalid rotation: "

    #@2d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v12

    #@31
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v12

    #@35
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v12

    #@39
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v11

    #@3d
    .line 677
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displayHeight":I
    .end local v3    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "displayWidth":I
    .end local v6    # "rotation":I
    :catchall_0
    move-exception v12

    #@3e
    monitor-exit v11

    #@3f
    throw v12

    #@40
    .line 693
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displayHeight":I
    .restart local v3    # "displaySize":Landroid/graphics/Point;
    .restart local v4    # "displayWidth":I
    .restart local v6    # "rotation":I
    :pswitch_0
    int-to-float v9, v4

    #@41
    .line 694
    .local v9, "screenshotWidth":F
    int-to-float v8, v2

    #@42
    .line 715
    .local v8, "screenshotHeight":F
    :goto_0
    const/4 v7, 0x0

    #@43
    .line 718
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@45
    float-to-int v12, v9

    #@46
    .line 719
    float-to-int v13, v8

    #@47
    .line 718
    invoke-interface {v11, v12, v13}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    move-result-object v7

    #@4b
    .line 720
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    #@4d
    .line 721
    const/4 v11, 0x0

    #@4e
    return-object v11

    #@4f
    .line 697
    .end local v7    # "screenShot":Landroid/graphics/Bitmap;
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_1
    int-to-float v9, v2

    #@50
    .line 698
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    #@51
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    #@52
    .line 701
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_2
    int-to-float v9, v4

    #@53
    .line 702
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v2

    #@54
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    #@55
    .line 705
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_3
    int-to-float v9, v2

    #@56
    .line 706
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    #@57
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    #@58
    .line 723
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    #@59
    .line 724
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    #@5b
    const-string/jumbo v12, "Error while taking screnshot!"

    #@5e
    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@61
    .line 725
    const/4 v11, 0x0

    #@62
    return-object v11

    #@63
    .line 729
    .end local v5    # "re":Landroid/os/RemoteException;
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v6, :cond_1

    #@65
    .line 731
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@67
    .line 730
    invoke-static {v4, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@6a
    move-result-object v10

    #@6b
    .line 732
    .local v10, "unrotatedScreenShot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@6d
    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@70
    .line 733
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    #@73
    move-result v11

    #@74
    div-int/lit8 v11, v11, 0x2

    #@76
    int-to-float v11, v11

    #@77
    .line 734
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    #@7a
    move-result v12

    #@7b
    div-int/lit8 v12, v12, 0x2

    #@7d
    int-to-float v12, v12

    #@7e
    .line 733
    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@81
    .line 735
    invoke-static {v6}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    #@84
    move-result v11

    #@85
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->rotate(F)V

    #@88
    .line 736
    neg-float v11, v9

    #@89
    const/high16 v12, 0x40000000    # 2.0f

    #@8b
    div-float/2addr v11, v12

    #@8c
    neg-float v12, v8

    #@8d
    const/high16 v13, 0x40000000    # 2.0f

    #@8f
    div-float/2addr v12, v13

    #@90
    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@93
    .line 737
    const/4 v11, 0x0

    #@94
    const/4 v12, 0x0

    #@95
    const/4 v13, 0x0

    #@96
    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@99
    .line 738
    const/4 v11, 0x0

    #@9a
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@9d
    .line 739
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    #@a0
    .line 740
    move-object v7, v10

    #@a1
    .line 744
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "unrotatedScreenShot":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v11, 0x0

    #@a2
    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    #@a5
    .line 746
    return-object v7

    #@a6
    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public waitForIdle(JJ)V
    .locals 25
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 637
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v18, v0

    #@6
    monitor-enter v18

    #@7
    .line 638
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    #@a
    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v16

    #@e
    .line 641
    .local v16, "startTimeMillis":J
    move-object/from16 v0, p0

    #@10
    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    #@12
    move-wide/from16 v20, v0

    #@14
    const-wide/16 v22, 0x0

    #@16
    cmp-long v11, v20, v22

    #@18
    if-gtz v11, :cond_0

    #@1a
    .line 642
    move-wide/from16 v0, v16

    #@1c
    move-object/from16 v2, p0

    #@1e
    iput-wide v0, v2, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    #@20
    .line 646
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@23
    move-result-wide v4

    #@24
    .line 648
    .local v4, "currentTimeMillis":J
    sub-long v6, v4, v16

    #@26
    .line 650
    .local v6, "elapsedGlobalTimeMillis":J
    sub-long v12, p3, v6

    #@28
    .line 651
    .local v12, "remainingGlobalTimeMillis":J
    const-wide/16 v20, 0x0

    #@2a
    cmp-long v11, v12, v20

    #@2c
    if-gtz v11, :cond_1

    #@2e
    .line 652
    new-instance v11, Ljava/util/concurrent/TimeoutException;

    #@30
    new-instance v19, Ljava/lang/StringBuilder;

    #@32
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v20, "No idle state with idle timeout: "

    #@38
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v19

    #@3c
    move-object/from16 v0, v19

    #@3e
    move-wide/from16 v1, p1

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@43
    move-result-object v19

    #@44
    .line 653
    const-string/jumbo v20, " within global timeout: "

    #@47
    .line 652
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v19

    #@4b
    move-object/from16 v0, v19

    #@4d
    move-wide/from16 v1, p3

    #@4f
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@52
    move-result-object v19

    #@53
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v19

    #@57
    move-object/from16 v0, v19

    #@59
    invoke-direct {v11, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 637
    .end local v4    # "currentTimeMillis":J
    .end local v6    # "elapsedGlobalTimeMillis":J
    .end local v12    # "remainingGlobalTimeMillis":J
    .end local v16    # "startTimeMillis":J
    :catchall_0
    move-exception v11

    #@5e
    monitor-exit v18

    #@5f
    throw v11

    #@60
    .line 657
    .restart local v4    # "currentTimeMillis":J
    .restart local v6    # "elapsedGlobalTimeMillis":J
    .restart local v12    # "remainingGlobalTimeMillis":J
    .restart local v16    # "startTimeMillis":J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@62
    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    #@64
    move-wide/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    sub-long v8, v4, v20

    #@68
    .line 658
    .local v8, "elapsedIdleTimeMillis":J
    sub-long v14, p1, v8

    #@6a
    .line 659
    .local v14, "remainingIdleTimeMillis":J
    const-wide/16 v20, 0x0

    #@6c
    cmp-long v11, v14, v20

    #@6e
    if-gtz v11, :cond_2

    #@70
    monitor-exit v18

    #@71
    .line 660
    return-void

    #@72
    .line 663
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@74
    iget-object v11, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    #@76
    invoke-virtual {v11, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    goto :goto_0

    #@7a
    .line 664
    :catch_0
    move-exception v10

    #@7b
    .local v10, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
