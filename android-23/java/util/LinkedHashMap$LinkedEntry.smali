.class Ljava/util/LinkedHashMap$LinkedEntry;
.super Ljava/util/HashMap$HashMapEntry;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$HashMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nxt:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prv:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 149
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v1, v1, v0, v1}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    #@5
    .line 150
    iput-object p0, p0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@7
    iput-object p0, p0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@9
    .line 148
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 156
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .local p5, "nxt":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    .local p6, "prv":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    #@3
    .line 157
    iput-object p5, p0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@5
    .line 158
    iput-object p6, p0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@7
    .line 155
    return-void
.end method
