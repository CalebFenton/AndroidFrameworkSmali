.class abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayAdapter$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_DEVICE_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_DEVICE_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_DEVICE_EVENT_REMOVED:I = 0x3

.field private static final NEXT_COLOR_TRANSFORM_ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field private final mName:Ljava/lang/String;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayAdapter;)Lcom/android/server/display/DisplayAdapter$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@d
    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_COLOR_TRANSFORM_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V
    .locals 0
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    .line 63
    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    #@7
    .line 64
    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    #@9
    .line 65
    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    #@b
    .line 66
    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    #@d
    .line 61
    return-void
.end method

.method public static createColorTransform(I)Landroid/view/Display$ColorTransform;
    .locals 2
    .param p0, "colorTransform"    # I

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/view/Display$ColorTransform;

    #@2
    .line 146
    sget-object v1, Lcom/android/server/display/DisplayAdapter;->NEXT_COLOR_TRANSFORM_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@7
    move-result v1

    #@8
    .line 145
    invoke-direct {v0, v1, p0}, Landroid/view/Display$ColorTransform;-><init>(II)V

    #@b
    return-object v0
.end method

.method public static createMode(IIF)Landroid/view/Display$Mode;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "refreshRate"    # F

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/view/Display$Mode;

    #@2
    .line 141
    sget-object v1, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@7
    move-result v1

    #@8
    .line 140
    invoke-direct {v0, v1, p0, p1, p2}, Landroid/view/Display$Mode;-><init>(IIIF)V

    #@b
    return-object v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 111
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    return-object v0
.end method

.method public registerLocked()V
    .locals 0

    #@0
    .prologue
    .line 105
    return-void
.end method

.method protected final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/display/DisplayAdapter$1;

    #@4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 118
    return-void
.end method

.method protected final sendTraversalRequestLocked()V
    .locals 2

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/display/DisplayAdapter$2;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$2;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 130
    return-void
.end method
