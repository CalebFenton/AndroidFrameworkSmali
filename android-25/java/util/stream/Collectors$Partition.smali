.class final Ljava/util/stream/Collectors$Partition;
.super Ljava/util/AbstractMap;
.source "Collectors.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final forFalse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final forTrue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1546
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    .local p1, "forTrue":Ljava/lang/Object;, "TT;"
    .local p2, "forFalse":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1547
    iput-object p1, p0, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    #@5
    .line 1548
    iput-object p2, p0, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    #@7
    .line 1546
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Boolean;",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1553
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$Partition$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$Partition$1;-><init>(Ljava/util/stream/Collectors$Partition;)V

    #@5
    return-object v0
.end method
