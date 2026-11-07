.class Ljava/util/stream/Nodes$EmptyNode$OfRef;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$EmptyNode<",
        "TT;[TT;",
        "Ljava/util/function/Consumer<",
        "-TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 584
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    .line 585
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/stream/Nodes-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copyInto([Ljava/lang/Object;I)V
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

    .line 582
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-super {p0, p1, p2}, Ljava/util/stream/Nodes$EmptyNode;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 582
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-super {p0, p1}, Ljava/util/stream/Nodes$EmptyNode;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
