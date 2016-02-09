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
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;


# direct methods
.method constructor <init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V
    .locals 1

    #@0
    .prologue
    .line 1198
    .local p1, "this$2":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->this$2:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1199
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->this$2:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    #@7
    iget-object v0, v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->iterator:Ljava/util/Iterator;

    #@f
    .line 1198
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1202
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->iterator:Ljava/util/Iterator;

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
    .line 1205
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->next()Ljava/util/Map$Entry;

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
    .line 1206
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableMapEntry;

    #@2
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;->iterator:Ljava/util/Iterator;

    #@4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Map$Entry;

    #@a
    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableMapEntry;-><init>(Ljava/util/Map$Entry;)V

    #@d
    return-object v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 1210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
