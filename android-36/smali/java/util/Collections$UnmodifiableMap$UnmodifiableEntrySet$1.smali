.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;


# direct methods
.method constructor blacklist <init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1902
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->this$0:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->this$0:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    iget-object v0, v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1916
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    invoke-static {p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1918
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1906
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1902
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1909
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1912
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
