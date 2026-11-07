.class Landroid/icu/impl/UnicodeMap$IteratorX;
.super Ljava/lang/Object;
.source "UnicodeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/icu/impl/UnicodeMap;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 949
    .local p0, "this":Landroid/icu/impl/UnicodeMap$IteratorX;, "Landroid/icu/impl/UnicodeMap<TT;>.IteratorX;"
    iput-object p1, p0, Landroid/icu/impl/UnicodeMap$IteratorX;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    iget-object p1, p0, Landroid/icu/impl/UnicodeMap$IteratorX;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {p1}, Landroid/icu/impl/UnicodeMap;->keySet()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/UnicodeMap$IteratorX;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeMap$IteratorX;-><init>(Landroid/icu/impl/UnicodeMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 956
    .local p0, "this":Landroid/icu/impl/UnicodeMap$IteratorX;, "Landroid/icu/impl/UnicodeMap<TT;>.IteratorX;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$IteratorX;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 949
    .local p0, "this":Landroid/icu/impl/UnicodeMap$IteratorX;, "Landroid/icu/impl/UnicodeMap<TT;>.IteratorX;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap$IteratorX;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 963
    .local p0, "this":Landroid/icu/impl/UnicodeMap$IteratorX;, "Landroid/icu/impl/UnicodeMap<TT;>.IteratorX;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$IteratorX;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ImmutableEntry;

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap$IteratorX;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {v2, v0}, Landroid/icu/impl/UnicodeMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/icu/impl/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 971
    .local p0, "this":Landroid/icu/impl/UnicodeMap$IteratorX;, "Landroid/icu/impl/UnicodeMap<TT;>.IteratorX;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
