.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$TouchTarget;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 7452
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    #@5
    .line 7450
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "pointerIdBits"    # I

    #@0
    .prologue
    .line 7472
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 7473
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 7474
    new-instance v0, Landroid/view/ViewGroup$TouchTarget;

    #@9
    invoke-direct {v0}, Landroid/view/ViewGroup$TouchTarget;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    monitor-exit v2

    #@d
    .line 7482
    iput-object p0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@f
    .line 7483
    iput p1, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@11
    .line 7484
    return-object v0

    #@12
    .line 7476
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@14
    .line 7477
    .restart local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@16
    sput-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@18
    .line 7478
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@1e
    .line 7479
    const/4 v1, 0x0

    #@1f
    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 7472
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 7488
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 7489
    :try_start_0
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@5
    const/16 v2, 0x20

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 7490
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@b
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@d
    .line 7491
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@f
    .line 7492
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    sput v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@15
    .line 7496
    :goto_0
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 7487
    return-void

    #@1a
    .line 7494
    :cond_0
    const/4 v0, 0x0

    #@1b
    :try_start_1
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 7488
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
