.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttrContext:Landroid/content/Context;

.field private final blacklist mAttrCujType:I

.field private blacklist mAttrDeferMonitor:Z

.field private blacklist mAttrSurfaceControl:Landroid/view/SurfaceControl;

.field private blacklist mAttrSurfaceOnly:Z

.field private blacklist mAttrTag:Ljava/lang/String;

.field private blacklist mAttrTimeout:J

.field private blacklist mAttrView:Landroid/view/View;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "cuj"    # I

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    .line 700
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    .line 701
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$sfgetDEFAULT_TIMEOUT_MS()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    .line 702
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    .line 706
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    .line 707
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mHandler:Landroid/os/Handler;

    .line 739
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrCujType:I

    .line 740
    return-void
.end method

.method private blacklist setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 800
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    .line 801
    return-object p0
.end method

.method private blacklist setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 808
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceControl:Landroid/view/SurfaceControl;

    .line 809
    return-object p0
.end method

.method private blacklist setSurfaceOnly(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "surfaceOnly"    # Z

    .line 792
    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceOnly:Z

    .line 793
    return-object p0
.end method

.method private blacklist setView(Landroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 760
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    .line 761
    return-object p0
.end method

.method public static blacklist withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 6
    .param p0, "cuj"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;

    .line 719
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;-><init>(I)V

    .line 720
    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 721
    invoke-direct {v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 722
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setSurfaceOnly(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 723
    invoke-virtual {v0, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setHandler(Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 719
    return-object v0
.end method

.method public static blacklist withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 4
    .param p0, "cuj"    # I
    .param p1, "view"    # Landroid/view/View;

    .line 733
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;-><init>(I)V

    .line 734
    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setView(Landroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 733
    return-object v0
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 828
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrCujType:I

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    iget-boolean v6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceOnly:Z

    iget-object v7, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    iget-object v10, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;Lcom/android/internal/jank/InteractionJankMonitor-IA;)V

    return-object v0
.end method

.method public blacklist setDeferMonitorForAnimationStart(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "defer"    # Z

    .line 818
    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    .line 819
    return-object p0
.end method

.method public blacklist setHandler(Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "uiThreadHandler"    # Landroid/os/Handler;

    .line 750
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mHandler:Landroid/os/Handler;

    .line 751
    return-object p0
.end method

.method public blacklist setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 780
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    .line 781
    return-object p0
.end method

.method public blacklist setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 3
    .param p1, "timeout"    # J

    .line 769
    iput-wide p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    .line 770
    return-object p0
.end method
