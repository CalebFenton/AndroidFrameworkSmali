.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

.field final synthetic val$i:Ljava/util/Iterator;

.field final synthetic val$valueType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;Ljava/lang/Class;)V
    .locals 0

    #@0
    .prologue
    .line 3204
    .local p1, "this$2":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p2, "val$i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p3, "val$valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->this$2:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    #@2
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    #@4
    iput-object p3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 3205
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3208
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3209
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Map$Entry;

    #@8
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    #@a
    invoke-static {v0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 3206
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    return-void
.end method
