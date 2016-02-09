.class final Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComparableUsingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final actualKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 622
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ComparableUsingComparator<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 623
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->actualKey:Ljava/lang/Object;

    #@5
    .line 624
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->cmp:Ljava/util/Comparator;

    #@7
    .line 622
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 627
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ComparableUsingComparator<TK;>;"
    .local p1, "k2":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->cmp:Ljava/util/Comparator;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->actualKey:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
