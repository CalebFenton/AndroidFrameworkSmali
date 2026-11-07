.class Ljava/util/ReverseOrderListView$Rand;
.super Ljava/util/ReverseOrderListView;
.source "ReverseOrderListView.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ReverseOrderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ReverseOrderListView<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/List;Z)V
    .registers 4
    .param p2, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Ljava/util/ReverseOrderListView$Rand;, "Ljava/util/ReverseOrderListView$Rand<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/ReverseOrderListView;-><init>(Ljava/util/List;ZLjava/util/ReverseOrderListView-IA;)V

    .line 58
    return-void
.end method
