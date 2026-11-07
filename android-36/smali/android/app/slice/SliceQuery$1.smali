.class Landroid/app/slice/SliceQuery$1;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/app/slice/SliceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$items:Ljava/util/Queue;


# direct methods
.method constructor blacklist <init>(Ljava/util/Queue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist next()Landroid/app/slice/SliceItem;
    .registers 4

    .line 163
    iget-object v0, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    .line 164
    .local v0, "item":Landroid/app/slice/SliceItem;
    const-string/jumbo v1, "slice"

    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 165
    const-string v1, "action"

    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 166
    :cond_19
    iget-object v1, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_26
    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 155
    invoke-virtual {p0}, Landroid/app/slice/SliceQuery$1;->next()Landroid/app/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method
