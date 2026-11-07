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
.field public static final greylist-max-o ALL_POINTER_IDS:I = -0x1

.field private static final greylist-max-o MAX_RECYCLED:I = 0x20

.field private static greylist-max-o sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist child:Landroid/view/View;

.field public greylist-max-o next:Landroid/view/ViewGroup$TouchTarget;

.field public greylist-max-o pointerIdBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9014
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 9031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9032
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "pointerIdBits"    # I

    .line 9035
    if-eqz p0, :cond_27

    .line 9040
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9041
    :try_start_5
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_f

    .line 9042
    new-instance v1, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v1}, Landroid/view/ViewGroup$TouchTarget;-><init>()V

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_1e

    .line 9044
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_f
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 9045
    .restart local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 9046
    sget v2, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 9047
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 9049
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 9050
    iput-object p0, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 9051
    iput p1, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 9052
    return-object v1

    .line 9049
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 9036
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist isRecycled()Z
    .registers 2

    .line 9056
    iget-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o recycle()V
    .registers 5

    .line 9060
    iget-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 9064
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9065
    :try_start_7
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1b

    .line 9066
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 9067
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 9068
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    goto :goto_1d

    .line 9070
    :cond_1b
    iput-object v3, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 9072
    :goto_1d
    iput-object v3, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 9073
    monitor-exit v0

    .line 9074
    return-void

    .line 9073
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 9061
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already recycled once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
