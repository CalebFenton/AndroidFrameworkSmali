.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$ConnectionState;,
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;
    }
.end annotation


# static fields
.field public static final blacklist ALL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final greylist-max-o CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field public static final whitelist FLAG_DONT_USE_ACCESSIBILITY:I = 0x2

.field public static final blacklist FLAG_NOT_ACCESSIBILITY_TOOL:I = 0x4

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field public static final whitelist ROTATION_FREEZE_0:I = 0x0

.field public static final whitelist ROTATION_FREEZE_180:I = 0x2

.field public static final whitelist ROTATION_FREEZE_270:I = 0x3

.field public static final whitelist ROTATION_FREEZE_90:I = 0x1

.field public static final whitelist ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final whitelist ROTATION_UNFREEZE:I = -0x2

.field private static final blacklist VERBOSE:Z = false


# instance fields
.field private greylist-max-o mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private greylist-max-o mConnectionId:I

.field private blacklist mConnectionState:I

.field private blacklist mCurrentEventWatchersCount:I

.field private final blacklist mDisplayId:I

.field private final greylist-max-o mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFlags:I

.field private blacklist mGenerationId:I

.field private greylist-max-o mIsDestroyed:Z

.field private greylist-max-o mLastEventTimeMillis:J

.field private final greylist-max-o mLocalCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private greylist-max-o mRemoteCallbackThread:Landroid/os/HandlerThread;

.field private final greylist-max-o mUiAutomationConnection:Landroid/app/IUiAutomationConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentEventWatchersCount(Landroid/app/UiAutomation;)I
    .registers 1

    iget p0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventQueue(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGenerationId(Landroid/app/UiAutomation;)I
    .registers 1

    iget p0, p0, Landroid/app/UiAutomation;->mGenerationId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastEventTimeMillis(Landroid/app/UiAutomation;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalCallbackHandler(Landroid/app/UiAutomation;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnAccessibilityEventListener(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/app/UiAutomation;I)V
    .registers 2

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionState(Landroid/app/UiAutomation;I)V
    .registers 2

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastEventTimeMillis(Landroid/app/UiAutomation;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 205
    const-string v0, "_ALL_PERMISSIONS_"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->ALL_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "connection"    # Landroid/app/IUiAutomationConnection;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    .line 230
    iput v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 236
    iput v0, p0, Landroid/app/UiAutomation;->mGenerationId:I

    .line 311
    const/4 v1, 0x1

    if-eqz p2, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    move v2, v0

    :goto_21
    const-string v3, "Looper cannot be null!"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 312
    if-eqz p3, :cond_29

    move v0, v1

    :cond_29
    const-string v1, "Connection cannot be null!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    .line 315
    iput-object p3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 316
    iput p1, p0, Landroid/app/UiAutomation;->mDisplayId:I

    .line 318
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/IUiAutomationConnection;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    .line 288
    invoke-static {p1}, Landroid/app/UiAutomation;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/UiAutomation;-><init>(ILandroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    .line 289
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/UiAutomation;-><init>(ILandroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    .line 307
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Created with deprecatead constructor, assumes DEFAULT_DISPLAY"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private blacklist executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "includeStderr"    # Z

    .line 1723
    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, "source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 1728
    .local v1, "sink_read":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 1729
    .local v2, "source_write":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 1731
    .local v3, "sink_write":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 1732
    .local v4, "stderr_source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 1735
    .local v5, "stderr_sink_read":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 1736
    .local v8, "pipe_read":[Landroid/os/ParcelFileDescriptor;
    aget-object v9, v8, v7

    move-object v0, v9

    .line 1737
    aget-object v9, v8, v6

    move-object v1, v9

    .line 1739
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 1740
    .local v9, "pipe_write":[Landroid/os/ParcelFileDescriptor;
    aget-object v10, v9, v7

    move-object v2, v10

    .line 1741
    aget-object v10, v9, v6

    move-object v3, v10

    .line 1743
    if-eqz p2, :cond_2b

    .line 1744
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 1745
    .local v10, "stderr_read":[Landroid/os/ParcelFileDescriptor;
    aget-object v11, v10, v7

    move-object v4, v11

    .line 1746
    aget-object v11, v10, v6

    move-object v5, v11

    .line 1750
    .end local v10    # "stderr_read":[Landroid/os/ParcelFileDescriptor;
    :cond_2b
    iget-object v10, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v10, p1, v1, v2, v5}, Landroid/app/IUiAutomationConnection;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_30} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_30} :catch_33
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_30} :catch_33
    .catchall {:try_start_b .. :try_end_30} :catchall_31

    .line 1762
    .end local v8    # "pipe_read":[Landroid/os/ParcelFileDescriptor;
    .end local v9    # "pipe_write":[Landroid/os/ParcelFileDescriptor;
    goto :goto_48

    :catchall_31
    move-exception v6

    goto :goto_63

    .line 1754
    :catch_33
    move-exception v6

    .line 1757
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_34
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1758
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1759
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1760
    nop

    .end local v0    # "source_read":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "sink_read":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "source_write":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "sink_write":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "stderr_source_read":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "stderr_sink_read":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "includeStderr":Z
    throw v6

    .line 1752
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "source_read":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "sink_read":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "source_write":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "sink_write":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "stderr_source_read":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "stderr_sink_read":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "includeStderr":Z
    :catch_3f
    move-exception v8

    .line 1753
    .local v8, "e":Ljava/lang/Exception;
    sget-object v9, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Error executing shell command!"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_31

    .line 1762
    nop

    .end local v8    # "e":Ljava/lang/Exception;
    :goto_48
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1763
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1764
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1765
    nop

    .line 1767
    const/4 v8, 0x2

    if-eqz p2, :cond_57

    const/4 v9, 0x3

    goto :goto_58

    :cond_57
    move v9, v8

    :goto_58
    new-array v9, v9, [Landroid/os/ParcelFileDescriptor;

    .line 1768
    .local v9, "result":[Landroid/os/ParcelFileDescriptor;
    aput-object v0, v9, v7

    .line 1769
    aput-object v3, v9, v6

    .line 1770
    if-eqz p2, :cond_62

    .line 1771
    aput-object v4, v9, v8

    .line 1773
    :cond_62
    return-object v9

    .line 1762
    .end local v9    # "result":[Landroid/os/ParcelFileDescriptor;
    :goto_63
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1763
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1764
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1765
    throw v6
.end method

.method private static blacklist getDisplayId(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1826
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "Context cannot be null!"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1828
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1831
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1832
    return v0

    .line 1835
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1836
    .local v0, "displayId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    .line 1838
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "UiAutomation created UI context with invalid display id, assuming it\'s running in the display assigned to the user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-static {p0, v1}, Landroid/app/UiAutomation;->getMainDisplayIdAssignedToUser(Landroid/content/Context;Landroid/os/UserManager;)I

    move-result v2

    return v2

    .line 1843
    :cond_2d
    if-eqz v0, :cond_30

    .line 1848
    return v0

    .line 1851
    :cond_30
    invoke-static {p0, v1}, Landroid/app/UiAutomation;->getMainDisplayIdAssignedToUser(Landroid/content/Context;Landroid/os/UserManager;)I

    move-result v2

    .line 1855
    .local v2, "userDisplayId":I
    return v2
.end method

.method private static blacklist getMainDisplayIdAssignedToUser(Landroid/content/Context;Landroid/os/UserManager;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 1859
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserVisible()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1861
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not visible, using DEFAULT_DISPLAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const/4 v0, 0x0

    return v0

    .line 1865
    :cond_2a
    invoke-virtual {p1}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result v0

    return v0
.end method

.method private greylist-max-o throwIfConnectedLocked()V
    .registers 4

    .line 1789
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1792
    return-void

    .line 1790
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiAutomation connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfNotConnectedLocked()V
    .registers 4

    .line 1796
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 1797
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1798
    const-string v0, "UiAutomation not connected, "

    goto :goto_10

    .line 1799
    :cond_e
    const-string v0, "UiAutomation not connected: Accessibility-dependent method called with FLAG_DONT_USE_ACCESSIBILITY set, "

    :goto_10
    nop

    .line 1801
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1803
    .end local v0    # "msg":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method private blacklist useAccessibility()Z
    .registers 2

    .line 1816
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o warnIfBetterCommand(Ljava/lang/String;)V
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1806
    const-string/jumbo v0, "pm grant "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1807
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UiAutomation.grantRuntimePermission() is more robust and should be used instead of \'pm grant\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1809
    :cond_11
    const-string/jumbo v0, "pm revoke "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1810
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UiAutomation.revokeRuntimePermission() is more robust and should be used instead of \'pm revoke\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public blacklist addOverridePermissionState(ILjava/lang/String;I)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "result"    # I

    .line 675
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->addOverridePermissionState(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 678
    goto :goto_a

    .line 676
    :catch_6
    move-exception v0

    .line 677
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 679
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist adoptShellPermissionIdentity()V
    .registers 4

    .line 592
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IUiAutomationConnection;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 595
    nop

    .line 596
    return-void

    .line 593
    :catch_c
    move-exception v0

    .line 594
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public varargs whitelist adoptShellPermissionIdentity([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 617
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 620
    nop

    .line 621
    return-void

    .line 618
    :catch_b
    move-exception v0

    .line 619
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearAllOverridePermissionStates()V
    .registers 2

    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearAllOverridePermissionStates()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 729
    goto :goto_a

    .line 727
    :catch_6
    move-exception v0

    .line 728
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 730
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist clearCache()Z
    .registers 4

    .line 526
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 528
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 529
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 530
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 531
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_11

    .line 532
    const/4 v2, 0x0

    return v2

    .line 534
    :cond_11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 535
    const/4 v2, 0x1

    return v2

    .line 529
    .end local v0    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v1    # "connectionId":I
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist clearOverridePermissionStates(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 711
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearOverridePermissionStates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 714
    goto :goto_a

    .line 712
    :catch_6
    move-exception v0

    .line 713
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 715
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist clearWindowAnimationFrameStats()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1496
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1499
    goto :goto_e

    .line 1497
    :catch_6
    move-exception v0

    .line 1498
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1500
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist clearWindowContentFrameStats(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .line 1415
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1417
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 1423
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 1424
    :catch_e
    move-exception v0

    .line 1425
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1427
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 1417
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-p connect()V
    .registers 4

    .line 331
    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    :try_start_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    .line 334
    nop

    .line 335
    return-void

    .line 332
    :catch_8
    move-exception v0

    .line 333
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o connect(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 344
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_7

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_7
    move-exception v0

    .line 346
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist connectWithTimeout(IJ)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 371
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 373
    monitor-exit v0

    return-void

    .line 376
    :cond_d
    iput v2, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 377
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "UiAutomation"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 378
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 380
    new-instance v1, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    iget-object v3, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 381
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Landroid/app/UiAutomation;->mGenerationId:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/app/UiAutomation;->mGenerationId:I

    invoke-direct {v1, p0, v3, v4}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 382
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_a1

    .line 386
    :try_start_30
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 387
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I

    .line 390
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_43

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionState:I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_42} :catch_87

    .line 393
    return-void

    .line 397
    :cond_43
    nop

    .line 399
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 402
    .local v1, "startTimeMillis":J
    :goto_4b
    iget v3, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_53

    .line 403
    nop

    .line 418
    .end local v1    # "startTimeMillis":J
    monitor-exit v0

    .line 419
    return-void

    .line 405
    .restart local v1    # "startTimeMillis":J
    :cond_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_84

    sub-long/2addr v3, v1

    .line 406
    .local v3, "elapsedTimeMillis":J
    sub-long v5, p2, v3

    .line 407
    .local v5, "remainingTimeMillis":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_68

    .line 413
    :try_start_60
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_84

    .line 416
    goto :goto_67

    .line 414
    :catch_66
    move-exception v7

    .line 417
    .end local v3    # "elapsedTimeMillis":J
    .end local v5    # "remainingTimeMillis":J
    :goto_67
    goto :goto_4b

    .line 409
    .restart local v3    # "elapsedTimeMillis":J
    .restart local v5    # "remainingTimeMillis":J
    :cond_68
    const/4 v7, 0x3

    :try_start_69
    iput v7, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 410
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout while connecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "flags":I
    .end local p2    # "timeoutMillis":J
    throw v7

    .line 418
    .end local v1    # "startTimeMillis":J
    .end local v3    # "elapsedTimeMillis":J
    .end local v5    # "remainingTimeMillis":J
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "flags":I
    .restart local p2    # "timeoutMillis":J
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_69 .. :try_end_86} :catchall_84

    throw v1

    .line 395
    :catch_87
    move-exception v0

    .line 396
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 382
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public blacklist destroy()V
    .registers 2

    .line 514
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    .line 516
    return-void
.end method

.method public greylist-max-p disconnect()V
    .registers 6

    .line 439
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    .line 444
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    if-nez v1, :cond_14

    .line 445
    monitor-exit v0

    return-void

    .line 447
    :cond_14
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 448
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 450
    iget v1, p0, Landroid/app/UiAutomation;->mGenerationId:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/app/UiAutomation;->mGenerationId:I

    .line 451
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_73

    .line 454
    const/4 v0, 0x0

    :try_start_21
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_34
    .catchall {:try_start_21 .. :try_end_26} :catchall_32

    .line 458
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_31

    .line 459
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 460
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 463
    :cond_31
    return-void

    .line 458
    :catchall_32
    move-exception v1

    goto :goto_4e

    .line 455
    :catch_34
    move-exception v1

    .line 456
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_35
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while disconnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    throw v2
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_32

    .line 458
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiAutomation;
    :goto_4e
    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_59

    .line 459
    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 460
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 462
    :cond_59
    throw v1

    .line 441
    :cond_5a
    :try_start_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call disconnect() while connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    throw v1

    .line 451
    .restart local p0    # "this":Landroid/app/UiAutomation;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_73

    throw v1
.end method

.method public whitelist dropShellPermissionIdentity()V
    .registers 3

    .line 633
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->dropShellPermissionIdentity()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 636
    nop

    .line 637
    return-void

    .line 634
    :catch_7
    move-exception v0

    .line 635
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .registers 21
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1154
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1155
    :try_start_5
    invoke-direct {v1}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1156
    iget v0, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    move v3, v0

    .line 1157
    .local v3, "watchersDepth":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1158
    .local v4, "executionStartTimeMillis":J
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    .line 1159
    .local v6, "eventQueueStartIndex":I
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_120

    .line 1167
    :try_start_1b
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 1168
    iget-object v2, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_103

    .line 1169
    :try_start_21
    iget v0, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    if-ne v3, v0, :cond_d3

    .line 1173
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_fa

    .line 1174
    :try_start_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1175
    .local v7, "startTimeMillis":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_103

    move-object v2, v0

    .line 1176
    .local v2, "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    const-wide/16 v9, 0x0

    .line 1177
    .local v9, "elapsedTimeMillis":J
    const/4 v0, 0x0

    move-wide v10, v9

    move v9, v6

    move v6, v0

    .line 1178
    .local v6, "currentQueueSize":I
    .local v9, "eventQueueStartIndex":I
    .local v10, "elapsedTimeMillis":J
    :goto_36
    cmp-long v0, p3, v10

    if-lez v0, :cond_ad

    .line 1179
    const/4 v12, 0x0

    .line 1180
    .local v12, "event":Landroid/view/accessibility/AccessibilityEvent;
    :try_start_3b
    iget-object v13, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_a8

    .line 1181
    :try_start_3e
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    .line 1182
    if-ge v9, v6, :cond_59

    .line 1183
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_a1

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "eventQueueStartIndex":I
    .local v14, "eventQueueStartIndex":I
    :try_start_4b
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_54

    move-object v12, v0

    move v9, v14

    goto :goto_62

    .line 1191
    :catchall_54
    move-exception v0

    move v9, v14

    move-object/from16 v14, p2

    goto :goto_a4

    .line 1186
    .end local v14    # "eventQueueStartIndex":I
    .restart local v9    # "eventQueueStartIndex":I
    :cond_59
    :try_start_59
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    sub-long v14, p3, v10

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_60} :catch_61
    .catchall {:try_start_59 .. :try_end_60} :catchall_a1

    .line 1189
    goto :goto_62

    .line 1187
    :catch_61
    move-exception v0

    .line 1191
    :goto_62
    :try_start_62
    monitor-exit v13
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_a1

    .line 1192
    :try_start_63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v10, v13, v7

    .line 1193
    if-eqz v12, :cond_9e

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v13
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_a8

    cmp-long v0, v13, v4

    if-gez v0, :cond_76

    .line 1194
    move-object/from16 v14, p2

    goto :goto_36

    .line 1196
    :cond_76
    move-object/from16 v14, p2

    :try_start_78
    invoke-interface {v14, v12}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_d1

    if-eqz v0, :cond_99

    .line 1197
    nop

    .line 1207
    iget-object v13, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1208
    :try_start_82
    iget v0, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    if-nez v0, :cond_8f

    .line 1209
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1211
    :cond_8f
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1212
    monitor-exit v13

    .line 1197
    return-object v12

    .line 1212
    :catchall_96
    move-exception v0

    monitor-exit v13
    :try_end_98
    .catchall {:try_start_82 .. :try_end_98} :catchall_96

    throw v0

    .line 1199
    :cond_99
    :try_start_99
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_d1

    .line 1200
    nop

    .end local v12    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_36

    .line 1193
    .restart local v12    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_9e
    move-object/from16 v14, p2

    goto :goto_36

    .line 1191
    :catchall_a1
    move-exception v0

    move-object/from16 v14, p2

    :goto_a4
    :try_start_a4
    monitor-exit v13
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a6

    .end local v3    # "watchersDepth":I
    .end local v4    # "executionStartTimeMillis":J
    .end local v9    # "eventQueueStartIndex":I
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    :try_start_a5
    throw v0

    .restart local v3    # "watchersDepth":I
    .restart local v4    # "executionStartTimeMillis":J
    .restart local v9    # "eventQueueStartIndex":I
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :catchall_a6
    move-exception v0

    goto :goto_a4

    .line 1207
    .end local v2    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v6    # "currentQueueSize":I
    .end local v7    # "startTimeMillis":J
    .end local v10    # "elapsedTimeMillis":J
    .end local v12    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_a8
    move-exception v0

    move-object/from16 v14, p2

    :goto_ab
    move v6, v9

    goto :goto_106

    .line 1201
    .restart local v2    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v6    # "currentQueueSize":I
    .restart local v7    # "startTimeMillis":J
    .restart local v10    # "elapsedTimeMillis":J
    :cond_ad
    move-object/from16 v14, p2

    if-ge v9, v6, :cond_b8

    .line 1202
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Timed out before reading all events from the queue"

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_b8
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected event not received before timeout, events: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local v3    # "watchersDepth":I
    .end local v4    # "executionStartTimeMillis":J
    .end local v9    # "eventQueueStartIndex":I
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    throw v0
    :try_end_d1
    .catchall {:try_start_a5 .. :try_end_d1} :catchall_d1

    .line 1207
    .end local v2    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v6    # "currentQueueSize":I
    .end local v7    # "startTimeMillis":J
    .end local v10    # "elapsedTimeMillis":J
    .restart local v3    # "watchersDepth":I
    .restart local v4    # "executionStartTimeMillis":J
    .restart local v9    # "eventQueueStartIndex":I
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :catchall_d1
    move-exception v0

    goto :goto_ab

    .line 1170
    .end local v9    # "eventQueueStartIndex":I
    .local v6, "eventQueueStartIndex":I
    :cond_d3
    move-object/from16 v14, p2

    :try_start_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected event watchers count, expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", actual: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "watchersDepth":I
    .end local v4    # "executionStartTimeMillis":J
    .end local v6    # "eventQueueStartIndex":I
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    throw v0

    .line 1173
    .restart local v3    # "watchersDepth":I
    .restart local v4    # "executionStartTimeMillis":J
    .restart local v6    # "eventQueueStartIndex":I
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :catchall_fa
    move-exception v0

    move-object/from16 v14, p2

    :goto_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_d5 .. :try_end_fe} :catchall_101

    .end local v3    # "watchersDepth":I
    .end local v4    # "executionStartTimeMillis":J
    .end local v6    # "eventQueueStartIndex":I
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    :try_start_fe
    throw v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    .line 1207
    .restart local v3    # "watchersDepth":I
    .restart local v4    # "executionStartTimeMillis":J
    .restart local v6    # "eventQueueStartIndex":I
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :catchall_ff
    move-exception v0

    goto :goto_106

    .line 1173
    :catchall_101
    move-exception v0

    goto :goto_fd

    .line 1207
    :catchall_103
    move-exception v0

    move-object/from16 v14, p2

    :goto_106
    iget-object v7, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1208
    :try_start_109
    iget v2, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    if-nez v2, :cond_116

    .line 1209
    iget-object v2, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1211
    :cond_116
    iget-object v2, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1212
    monitor-exit v7
    :try_end_11c
    .catchall {:try_start_109 .. :try_end_11c} :catchall_11d

    .line 1216
    throw v0

    .line 1212
    :catchall_11d
    move-exception v0

    :try_start_11e
    monitor-exit v7
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v0

    .line 1159
    .end local v3    # "watchersDepth":I
    .end local v4    # "executionStartTimeMillis":J
    .end local v6    # "eventQueueStartIndex":I
    :catchall_120
    move-exception v0

    move-object/from16 v14, p2

    :goto_123
    :try_start_123
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_125

    throw v0

    :catchall_125
    move-exception v0

    goto :goto_123
.end method

.method public whitelist executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "command"    # Ljava/lang/String;

    .line 1650
    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1652
    const/4 v0, 0x0

    .line 1653
    .local v0, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 1656
    .local v1, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1657
    .local v2, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    move-object v0, v3

    .line 1658
    const/4 v3, 0x1

    aget-object v3, v2, v3

    move-object v1, v3

    .line 1661
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v1, v4}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_17} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_17} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_17} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_17} :catch_1a
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    .line 1670
    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    goto :goto_29

    :catchall_18
    move-exception v2

    goto :goto_2e

    .line 1664
    :catch_1a
    move-exception v2

    .line 1667
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1668
    nop

    .end local v0    # "source":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "sink":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/String;
    throw v2

    .line 1662
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "source":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "sink":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/String;
    :catch_20
    move-exception v2

    .line 1663
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error executing shell command!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_18

    .line 1670
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_29
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1671
    nop

    .line 1673
    return-object v0

    .line 1670
    :goto_2e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1671
    throw v2
.end method

.method public whitelist executeShellCommandRw(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1691
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/UiAutomation;->executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist executeShellCommandRwe(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1710
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/UiAutomation;->executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "focus"    # I

    .line 785
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 787
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    .line 788
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v4, -0x2

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v7, p1

    .end local p1    # "focus":I
    .local v7, "focus":I
    invoke-virtual/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 787
    .end local v7    # "focus":I
    .restart local p1    # "focus":I
    :catchall_16
    move-exception v0

    move v7, p1

    move-object p1, v0

    .end local p1    # "focus":I
    .restart local v7    # "focus":I
    :goto_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    throw p1

    :catchall_1b
    move-exception v0

    move-object p1, v0

    goto :goto_19
.end method

.method public blacklist getAdoptedShellPermissions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getAdoptedShellPermissions()Ljava/util/List;

    move-result-object v0

    .line 651
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_b

    sget-object v1, Landroid/app/UiAutomation;->ALL_PERMISSIONS:Ljava/util/Set;

    goto :goto_10

    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v1

    .line 652
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_11
    move-exception v0

    .line 653
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCache()Landroid/view/accessibility/AccessibilityCache;
    .registers 3

    .line 568
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 570
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 571
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 572
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    return-object v0

    .line 571
    .end local v1    # "connectionId":I
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o getConnectionId()I
    .registers 3

    .line 473
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 475
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v0

    return v1

    .line 476
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 1718
    iget v0, p0, Landroid/app/UiAutomation;->mDisplayId:I

    return v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 429
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public whitelist getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 925
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .param p1, "prefetchingStrategy"    # I

    .line 942
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 944
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 945
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 947
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 948
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 947
    return-object v0

    .line 945
    .end local v1    # "connectionId":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final whitelist getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5

    .line 805
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 807
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 808
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 809
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 811
    if-eqz v1, :cond_1f

    .line 813
    :try_start_12
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 814
    :catch_17
    move-exception v0

    .line 815
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 809
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1537
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1538
    :catch_7
    move-exception v0

    .line 1539
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .registers 5
    .param p1, "windowId"    # I

    .line 1462
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1464
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 1470
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 1471
    :catch_e
    move-exception v0

    .line 1472
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1474
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0

    .line 1464
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getWindows()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 879
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 880
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 882
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v2, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnDisplay(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 880
    .end local v1    # "connectionId":I
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 910
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 911
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 913
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 914
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 913
    return-object v0

    .line 911
    .end local v1    # "connectionId":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1552
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1553
    return-void
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1564
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1565
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1583
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1584
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1583
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1587
    nop

    .line 1588
    return-void

    .line 1585
    :catch_b
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error granting runtime permission"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;Z)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .line 964
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;ZZ)Z
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z
    .param p3, "waitForAnimations"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 997
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 998
    :catch_7
    move-exception v0

    .line 999
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1022
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1025
    goto :goto_e

    .line 1023
    :catch_6
    move-exception v0

    .line 1024
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event to input filter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public greylist-max-o isDestroyed()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public blacklist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 549
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 551
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 552
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 553
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 554
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_11

    .line 555
    const/4 v2, 0x0

    return v2

    .line 557
    :cond_11
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    return v2

    .line 552
    .end local v0    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v1    # "connectionId":I
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final whitelist performGlobalAction(I)Z
    .registers 6
    .param p1, "action"    # I

    .line 749
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 751
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 752
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 753
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 755
    if-eqz v1, :cond_1f

    .line 757
    :try_start_12
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return v0

    .line 758
    :catch_17
    move-exception v0

    .line 759
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 753
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist removeOverridePermissionState(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2}, Landroid/app/IUiAutomationConnection;->removeOverridePermissionState(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 696
    goto :goto_a

    .line 694
    :catch_6
    move-exception v0

    .line 695
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 697
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1598
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1599
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1610
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1611
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1628
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1629
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1628
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1632
    nop

    .line 1633
    return-void

    .line 1630
    :catch_b
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error granting runtime permission"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setAnimationScale(F)V
    .registers 5
    .param p1, "scale"    # F

    .line 1045
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1046
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_16

    .line 1048
    :try_start_b
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAnimationScale(F)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1051
    goto :goto_16

    .line 1049
    :catch_f
    move-exception v1

    .line 1050
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1053
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 500
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 502
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist setRotation(I)Z
    .registers 5
    .param p1, "rotation"    # I

    .line 1107
    packed-switch p1, :pswitch_data_1c

    .line 1123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :pswitch_b
    :try_start_b
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1117
    const/4 v0, 0x1

    return v0

    .line 1118
    :catch_12
    move-exception v0

    .line 1119
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    :pswitch_data_1c
    .packed-switch -0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist setRunAsMonkey(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1392
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1395
    goto :goto_10

    .line 1393
    :catch_8
    move-exception v0

    .line 1394
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1396
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public final whitelist setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 833
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 835
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 836
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 837
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 838
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_28

    .line 840
    if-eqz v1, :cond_27

    .line 842
    :try_start_1b
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 845
    goto :goto_27

    .line 843
    :catch_1f
    move-exception v0

    .line 844
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void

    .line 838
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist syncInputTransactions()V
    .registers 4

    .line 1065
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IUiAutomationConnection;->syncInputTransactions(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1068
    goto :goto_f

    .line 1066
    :catch_7
    move-exception v0

    .line 1067
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while syncing input transactions!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public blacklist syncInputTransactions(Z)V
    .registers 5
    .param p1, "waitForAnimations"    # Z

    .line 1084
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->syncInputTransactions(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1087
    goto :goto_e

    .line 1085
    :catch_6
    move-exception v0

    .line 1086
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while syncing input transactions!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist takeScreenshot()Landroid/graphics/Bitmap;
    .registers 10

    .line 1280
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1281
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1282
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1286
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v2

    .line 1288
    .local v2, "syncScreenCapture":Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    const/4 v3, 0x0

    :try_start_17
    iget-object v4, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-interface {v4, v5, v2, v6}, Landroid/app/IUiAutomationConnection;->takeScreenshot(Landroid/graphics/Rect;Landroid/window/ScreenCapture$ScreenCaptureListener;I)Z

    move-result v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_29} :catch_8f

    if-nez v4, :cond_2c

    .line 1290
    return-object v3

    .line 1295
    :cond_2c
    nop

    .line 1297
    invoke-virtual {v2}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v4

    .line 1298
    .local v4, "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    const-string v5, "Failed to take screenshot for display="

    if-nez v4, :cond_4e

    .line 1299
    sget-object v6, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-object v3

    .line 1302
    :cond_4e
    invoke-virtual {v4}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1303
    .local v6, "screenShot":Landroid/graphics/Bitmap;
    if-nez v6, :cond_6d

    .line 1304
    sget-object v7, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-object v3

    .line 1308
    :cond_6d
    invoke-virtual {v4}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    .line 1309
    .local v3, "buffer":Landroid/hardware/HardwareBuffer;
    :try_start_71
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v5, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_83

    .line 1310
    .local v5, "swBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1311
    .end local v3    # "buffer":Landroid/hardware/HardwareBuffer;
    :cond_7c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1314
    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1315
    return-object v5

    .line 1308
    .end local v5    # "swBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "buffer":Landroid/hardware/HardwareBuffer;
    :catchall_83
    move-exception v5

    if-eqz v3, :cond_8e

    :try_start_86
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw v5

    .line 1292
    .end local v3    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v4    # "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .end local v6    # "screenShot":Landroid/graphics/Bitmap;
    :catch_8f
    move-exception v4

    .line 1293
    .local v4, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while taking screenshot of display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    return-object v3
.end method

.method public whitelist takeScreenshot(Landroid/view/Window;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "window"    # Landroid/view/Window;

    .line 1330
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1331
    return-object v0

    .line 1334
    :cond_4
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 1335
    .local v1, "decorView":Landroid/view/View;
    if-nez v1, :cond_b

    .line 1336
    return-object v0

    .line 1339
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1340
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_12

    .line 1341
    return-object v0

    .line 1344
    :cond_12
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1345
    .local v3, "sc":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1346
    return-object v0

    .line 1351
    :cond_1d
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 1353
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v4

    .line 1355
    .local v4, "syncScreenCapture":Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    :try_start_2a
    iget-object v5, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v5, v3, v4}, Landroid/app/IUiAutomationConnection;->takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenCaptureListener;)Z

    move-result v5
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_30} :catch_a6

    const-string v6, "Failed to take screenshot for window="

    if-nez v5, :cond_4b

    .line 1356
    :try_start_34
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_4a} :catch_a6

    .line 1357
    return-object v0

    .line 1362
    :cond_4b
    nop

    .line 1363
    invoke-virtual {v4}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v5

    .line 1364
    .local v5, "captureBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v5, :cond_69

    .line 1365
    sget-object v7, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-object v0

    .line 1368
    :cond_69
    invoke-virtual {v5}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1369
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    if-nez v7, :cond_86

    .line 1370
    sget-object v8, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-object v0

    .line 1374
    :cond_86
    invoke-virtual {v5}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 1375
    .local v0, "buffer":Landroid/hardware/HardwareBuffer;
    :try_start_8a
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_9a

    .line 1376
    .local v6, "swBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_96

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1378
    .end local v0    # "buffer":Landroid/hardware/HardwareBuffer;
    :cond_96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1379
    return-object v6

    .line 1374
    .end local v6    # "swBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "buffer":Landroid/hardware/HardwareBuffer;
    :catchall_9a
    move-exception v6

    if-eqz v0, :cond_a5

    :try_start_9d
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_a5

    :catchall_a1
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a5
    :goto_a5
    throw v6

    .line 1359
    .end local v0    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v5    # "captureBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .end local v7    # "screenShot":Landroid/graphics/Bitmap;
    :catch_a6
    move-exception v5

    .line 1360
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error while taking screenshot!"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1779
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "UiAutomation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1781
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1782
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1783
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist waitForIdle(JJ)V
    .registers 26
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1237
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    iget-object v6, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1238
    :try_start_9
    invoke-direct {v1}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1241
    .local v7, "startTimeMillis":J
    iget-wide v9, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gtz v0, :cond_1a

    .line 1242
    iput-wide v7, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 1246
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1248
    .local v9, "currentTimeMillis":J
    sub-long v13, v9, v7

    .line 1249
    .local v13, "elapsedGlobalTimeMillis":J
    sub-long v15, v4, v13

    .line 1251
    .local v15, "remainingGlobalTimeMillis":J
    cmp-long v0, v15, v11

    if-lez v0, :cond_42

    .line 1257
    move-wide/from16 v17, v11

    iget-wide v11, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    sub-long v11, v9, v11

    .line 1258
    .local v11, "elapsedIdleTimeMillis":J
    move-wide/from16 v19, v7

    .end local v7    # "startTimeMillis":J
    .local v19, "startTimeMillis":J
    sub-long v7, v2, v11

    .line 1259
    .local v7, "remainingIdleTimeMillis":J
    cmp-long v0, v7, v17

    if-gtz v0, :cond_36

    .line 1260
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_67

    return-void

    .line 1263
    :cond_36
    :try_start_36
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_67

    .line 1266
    goto :goto_3d

    .line 1264
    :catch_3c
    move-exception v0

    .line 1267
    .end local v7    # "remainingIdleTimeMillis":J
    .end local v9    # "currentTimeMillis":J
    .end local v11    # "elapsedIdleTimeMillis":J
    .end local v13    # "elapsedGlobalTimeMillis":J
    .end local v15    # "remainingGlobalTimeMillis":J
    :goto_3d
    move-wide/from16 v11, v17

    move-wide/from16 v7, v19

    goto :goto_1a

    .line 1252
    .end local v19    # "startTimeMillis":J
    .local v7, "startTimeMillis":J
    .restart local v9    # "currentTimeMillis":J
    .restart local v13    # "elapsedGlobalTimeMillis":J
    .restart local v15    # "remainingGlobalTimeMillis":J
    :cond_42
    move-wide/from16 v19, v7

    .end local v7    # "startTimeMillis":J
    .restart local v19    # "startTimeMillis":J
    :try_start_44
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No idle state with idle timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " within global timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "idleTimeoutMillis":J
    .end local p3    # "globalTimeoutMillis":J
    throw v0

    .line 1268
    .end local v9    # "currentTimeMillis":J
    .end local v13    # "elapsedGlobalTimeMillis":J
    .end local v15    # "remainingGlobalTimeMillis":J
    .end local v19    # "startTimeMillis":J
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "idleTimeoutMillis":J
    .restart local p3    # "globalTimeoutMillis":J
    :catchall_67
    move-exception v0

    monitor-exit v6
    :try_end_69
    .catchall {:try_start_44 .. :try_end_69} :catchall_67

    throw v0
.end method
