.class Landroid/icu/impl/UnicodeMap$EntrySetX;
.super Ljava/lang/Object;
.source "UnicodeMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySetX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
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

    .line 935
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntrySetX;, "Landroid/icu/impl/UnicodeMap<TT;>.EntrySetX;"
    iput-object p1, p0, Landroid/icu/impl/UnicodeMap$EntrySetX;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeMap$EntrySetX;-><init>(Landroid/icu/impl/UnicodeMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .line 937
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntrySetX;, "Landroid/icu/impl/UnicodeMap<TT;>.EntrySetX;"
    new-instance v0, Landroid/icu/impl/UnicodeMap$IteratorX;

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntrySetX;->this$0:Landroid/icu/impl/UnicodeMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/UnicodeMap$IteratorX;-><init>(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 940
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntrySetX;, "Landroid/icu/impl/UnicodeMap<TT;>.EntrySetX;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 941
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap$EntrySetX;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 942
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 943
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 944
    .end local v2    # "item":Ljava/lang/Object;
    goto :goto_9

    .line 945
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
