.class final Ljava/util/LinkedHashMap$LinkedKeyIterator;
.super Ljava/util/LinkedHashMap$LinkedHashIterator;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>.",
        "LinkedHashIterator;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;Z)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1083
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeyIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeyIterator;"
    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1084
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeyIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeyIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedKeyIterator;->nextNode()Ljava/util/LinkedHashMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
