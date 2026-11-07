.class Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver$CopyOnWriteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmData(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSize(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1375
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1380
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<TT;>;"
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o size()I
    .registers 2

    .line 1384
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<TT;>;"
    iget v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I

    return v0
.end method
