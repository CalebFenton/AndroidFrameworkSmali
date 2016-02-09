.class Ljava/util/TreeMap$AscendingSubMap;
.super Ljava/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AscendingSubMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcab946d1f0fab1cL


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .locals 0
    .param p3, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p5, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1735
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "from":Ljava/lang/Object;, "TK;"
    .local p4, "to":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/TreeMap$NavigableSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@3
    .line 1734
    return-void
.end method
