.class Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/jank/InteractionJankMonitor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 181
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v1, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$sfgetDEFAULT_WORKER_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;-><init>(Landroid/os/HandlerThread;)V

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;->INSTANCE:Lcom/android/internal/jank/InteractionJankMonitor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
