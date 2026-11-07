.class Ljava/util/ImmutableCollections$MapN$1;
.super Ljava/util/AbstractSet;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ImmutableCollections$MapN;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/ImmutableCollections$MapN;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$MapN;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/ImmutableCollections$MapN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1317
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1333
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1325
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN$MapNIterator;

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN$MapNIterator;-><init>(Ljava/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1320
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget v0, v0, Ljava/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
