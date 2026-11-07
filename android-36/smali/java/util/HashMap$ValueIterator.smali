.class final Ljava/util/HashMap$ValueIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "TK;TV;>.HashIterator;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/HashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1629
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1631
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$ValueIterator;->nextNode()Ljava/util/HashMap$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method
