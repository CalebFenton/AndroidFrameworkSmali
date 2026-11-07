.class Ljava/util/LinkedHashMap$Entry;
.super Ljava/util/HashMap$Node;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field blacklist after:Ljava/util/LinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field blacklist before:Ljava/util/LinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 227
    return-void
.end method
