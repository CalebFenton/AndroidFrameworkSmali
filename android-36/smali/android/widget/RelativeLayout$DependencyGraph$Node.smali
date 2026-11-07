.class Landroid/widget/RelativeLayout$DependencyGraph$Node;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout$DependencyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# static fields
.field private static final greylist-max-o POOL_LIMIT:I = 0x64

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o dependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o dependents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            "Landroid/widget/RelativeLayout$DependencyGraph;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o view:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2057
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 2

    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2043
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    .line 2049
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 2032
    return-void
.end method

.method static greylist-max-o acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2061
    sget-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 2062
    .local v0, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v0, :cond_10

    .line 2063
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-direct {v1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;-><init>()V

    move-object v0, v1

    .line 2065
    :cond_10
    iput-object p0, v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 2066
    return-object v0
.end method


# virtual methods
.method greylist-max-o release()V
    .registers 2

    .line 2070
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 2071
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2072
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2074
    sget-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2075
    return-void
.end method
