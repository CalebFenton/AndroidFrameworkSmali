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
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

.field final synthetic blacklist val$i:Ljava/util/Iterator;


# direct methods
.method public static synthetic blacklist $r8$lambda$GDxzLd_bAgQeO1-ApT9uxvr0oSo(Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->lambda$forEachRemaining$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Collections$CheckedMap$CheckedEntrySet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4156
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->this$0:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$forEachRemaining$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "e"    # Ljava/util/Map$Entry;

    .line 4166
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->this$0:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    invoke-static {v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->-$$Nest$fgetvalueType(Ljava/util/Collections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    .line 4164
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 4167
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 4157
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 4156
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

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

    .line 4161
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->this$0:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    invoke-static {v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->-$$Nest$fgetvalueType(Ljava/util/Collections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 4158
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
