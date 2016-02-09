.class final Landroid/view/ViewGroup$HoverTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoverTarget"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$HoverTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 7504
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    sput-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    #@5
    .line 7502
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 7519
    sget-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 7520
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 7521
    new-instance v0, Landroid/view/ViewGroup$HoverTarget;

    #@9
    invoke-direct {v0}, Landroid/view/ViewGroup$HoverTarget;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v0, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    monitor-exit v2

    #@d
    .line 7529
    iput-object p0, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@f
    .line 7530
    return-object v0

    #@10
    .line 7523
    .end local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    #@12
    .line 7524
    .restart local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@14
    sput-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    #@16
    .line 7525
    sget v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    sput v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    #@1c
    .line 7526
    const/4 v1, 0x0

    #@1d
    iput-object v1, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 7519
    .end local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 7534
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 7535
    :try_start_0
    sget v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    #@5
    const/16 v2, 0x20

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 7536
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    #@b
    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@d
    .line 7537
    sput-object p0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    #@f
    .line 7538
    sget v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    sput v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    #@15
    .line 7542
    :goto_0
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 7533
    return-void

    #@1a
    .line 7540
    :cond_0
    const/4 v0, 0x0

    #@1b
    :try_start_1
    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 7534
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
