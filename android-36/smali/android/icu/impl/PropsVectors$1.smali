.class Landroid/icu/impl/PropsVectors$1;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/PropsVectors;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/PropsVectors;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/impl/PropsVectors;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 386
    iput-object p1, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 10
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;

    .line 389
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    .local v0, "indexOfRow1":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 391
    .local v1, "indexOfRow2":I
    iget-object v2, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v2}, Landroid/icu/impl/PropsVectors;->-$$Nest$fgetcolumns(Landroid/icu/impl/PropsVectors;)I

    move-result v2

    .line 395
    .local v2, "count":I
    const/4 v3, 0x2

    .line 397
    .local v3, "index":I
    :cond_f
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-$$Nest$fgetv(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v4

    add-int v5, v0, v3

    aget v4, v4, v5

    iget-object v5, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v5}, Landroid/icu/impl/PropsVectors;->-$$Nest$fgetv(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v5

    add-int v6, v1, v3

    aget v5, v5, v6

    if-eq v4, v5, :cond_3f

    .line 398
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-$$Nest$fgetv(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v4

    add-int v5, v0, v3

    aget v4, v4, v5

    iget-object v5, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v5}, Landroid/icu/impl/PropsVectors;->-$$Nest$fgetv(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v5

    add-int v6, v1, v3

    aget v5, v5, v6

    if-ge v4, v5, :cond_3d

    const/4 v4, -0x1

    goto :goto_3e

    .line 399
    :cond_3d
    const/4 v4, 0x1

    .line 398
    :goto_3e
    return v4

    .line 401
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-$$Nest$fgetcolumns(Landroid/icu/impl/PropsVectors;)I

    move-result v4

    if-ne v3, v4, :cond_4a

    .line 402
    const/4 v3, 0x0

    .line 404
    :cond_4a
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_f

    .line 406
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 386
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PropsVectors$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
