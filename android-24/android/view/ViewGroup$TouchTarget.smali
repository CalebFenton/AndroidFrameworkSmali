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
    .line 7616
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    #@5
    .line 7614
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7631
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
    .line 7635
    if-nez p0, :cond_0

    #@2
    .line 7636
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "child must be non-null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 7640
    :cond_0
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    #@d
    monitor-enter v2

    #@e
    .line 7641
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 7642
    new-instance v0, Landroid/view/ViewGroup$TouchTarget;

    #@14
    invoke-direct {v0}, Landroid/view/ViewGroup$TouchTarget;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    monitor-exit v2

    #@18
    .line 7650
    iput-object p0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@1a
    .line 7651
    iput p1, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@1c
    .line 7652
    return-object v0

    #@1d
    .line 7644
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@1f
    .line 7645
    .restart local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@21
    sput-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@23
    .line 7646
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@25
    add-int/lit8 v1, v1, -0x1

    #@27
    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@29
    .line 7647
    const/4 v1, 0x0

    #@2a
    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 7640
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 7656
    iget-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7657
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "already recycled once"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 7660
    :cond_0
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    #@f
    monitor-enter v1

    #@10
    .line 7661
    :try_start_0
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@12
    const/16 v2, 0x20

    #@14
    if-ge v0, v2, :cond_1

    #@16
    .line 7662
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@18
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@1a
    .line 7663
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    #@1c
    .line 7664
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    sput v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    #@22
    .line 7668
    :goto_0
    const/4 v0, 0x0

    #@23
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 7655
    return-void

    #@27
    .line 7666
    :cond_1
    const/4 v0, 0x0

    #@28
    :try_start_1
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 7660
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method
