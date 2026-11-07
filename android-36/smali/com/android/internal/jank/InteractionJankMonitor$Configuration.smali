.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCujType:I

.field private final blacklist mDeferMonitor:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSessionName:Ljava/lang/String;

.field private final blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceOnly:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mTimeout:J

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object p0
.end method

.method private constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;)V
    .registers 14
    .param p1, "cuj"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "surfaceOnly"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p9, "deferMonitor"    # Z
    .param p10, "handler"    # Landroid/os/Handler;

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    .line 839
    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    .line 840
    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    .line 841
    iput-wide p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    .line 842
    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 843
    iput-boolean p6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    .line 844
    if-eqz p7, :cond_1b

    .line 845
    move-object v0, p7

    goto :goto_27

    .line 846
    :cond_1b
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    .line 847
    iput-object p8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 848
    iput-boolean p9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    .line 849
    if-eqz p10, :cond_32

    .line 850
    iput-object p10, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    goto :goto_69

    .line 851
    :cond_32
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v0, :cond_61

    .line 852
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UIThread provided for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (surface only). Defaulting to app main thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    goto :goto_69

    .line 856
    :cond_61
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    .line 858
    :goto_69
    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->validate()V

    .line 859
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;Lcom/android/internal/jank/InteractionJankMonitor-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;)V

    return-void
.end method

.method public static blacklist generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "cujName"    # Ljava/lang/String;
    .param p1, "cujPostfix"    # Ljava/lang/String;

    .line 864
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 865
    .local v0, "hasPostfix":Z
    if-eqz v0, :cond_21

    .line 866
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 867
    .local v1, "remaining":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_21

    .line 868
    add-int/lit8 v2, v1, -0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 873
    .end local v1    # "remaining":I
    :cond_21
    if-eqz v0, :cond_2e

    .line 874
    const-string v1, "J<%s::%s>"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 875
    :cond_2e
    const-string v1, "J<%s>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 873
    :goto_38
    return-object v1
.end method

.method private blacklist validate()V
    .registers 9

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "shouldThrow":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .local v1, "msg":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 883
    const/4 v0, 0x1

    .line 884
    const-string v2, "Invalid tag; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_10
    iget-wide v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    .line 887
    const/4 v0, 0x1

    .line 888
    const-string v2, "Invalid timeout value; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :cond_1e
    iget-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v2, :cond_49

    .line 891
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2c

    .line 892
    const/4 v0, 0x1

    .line 893
    const-string v2, "Must pass in a context if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 896
    :cond_38
    const/4 v0, 0x1

    .line 897
    const-string v2, "Must pass in a valid surface control if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_ac

    .line 900
    const/4 v0, 0x1

    .line 901
    const-string v2, "Must pass a UI thread handler when only a surface control is provided."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 906
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->hasValidView()Z

    move-result v2

    if-nez v2, :cond_ac

    .line 907
    const/4 v0, 0x1

    .line 908
    const/4 v2, 0x0

    .line 909
    .local v2, "attached":Z
    const/4 v3, 0x0

    .line 910
    .local v3, "hasViewRoot":Z
    const/4 v4, 0x0

    .line 911
    .local v4, "hasRenderer":Z
    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v5, :cond_76

    .line 912
    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    .line 913
    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_69

    move v5, v6

    goto :goto_6a

    :cond_69
    move v5, v7

    :goto_6a
    move v3, v5

    .line 914
    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v5

    if-eqz v5, :cond_74

    goto :goto_75

    :cond_74
    move v6, v7

    :goto_75
    move v4, v6

    .line 916
    :cond_76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid view: view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasViewRoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasRenderer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 918
    .local v5, "err":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .end local v2    # "attached":Z
    .end local v3    # "hasViewRoot":Z
    .end local v4    # "hasRenderer":Z
    .end local v5    # "err":Ljava/lang/String;
    :cond_ac
    :goto_ac
    if-nez v0, :cond_af

    .line 924
    return-void

    .line 922
    :cond_af
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist getCujType()I
    .registers 2

    .line 993
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 971
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 963
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getPerfettoTrigger()Ljava/lang/String;
    .registers 3

    .line 988
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    .line 989
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 988
    const-string v1, "com.android.telemetry.interaction-jank-monitor-%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSessionName()Ljava/lang/String;
    .registers 2

    .line 975
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatsdInteractionType()I
    .registers 2

    .line 979
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->getStatsdInteractionType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 943
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 951
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object v0
.end method

.method blacklist hasValidView()Z
    .registers 2

    .line 927
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 929
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 927
    :goto_24
    return v0
.end method

.method public blacklist isSurfaceOnly()Z
    .registers 2

    .line 936
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    return v0
.end method

.method public blacklist logToStatsd()Z
    .registers 2

    .line 984
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->logToStatsd(I)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldDeferMonitor()Z
    .registers 2

    .line 958
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    return v0
.end method
