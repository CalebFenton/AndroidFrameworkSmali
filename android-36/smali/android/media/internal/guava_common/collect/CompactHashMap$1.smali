.class Landroid/media/internal/guava_common/collect/CompactHashMap$1;
.super Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/CompactHashMap<",
        "TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 720
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;Landroid/media/internal/guava_common/collect/CompactHashMap$1;)V

    return-void
.end method


# virtual methods
.method blacklist getOutput(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 724
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$100(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
