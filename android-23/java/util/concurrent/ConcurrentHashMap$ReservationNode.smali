.class final Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReservationNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReservationNode<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1561
    const v0, -0x7fffffff

    #@4
    invoke-direct {p0, v0, v1, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@7
    .line 1560
    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 1
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1565
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReservationNode<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
