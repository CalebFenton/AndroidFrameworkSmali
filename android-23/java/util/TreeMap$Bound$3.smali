.class final enum Ljava/util/TreeMap$Bound$3;
.super Ljava/util/TreeMap$Bound;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$Bound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    #@0
    .prologue
    .line 1080
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/TreeMap$Bound;-><init>(Ljava/lang/String;ILjava/util/TreeMap$Bound;)V

    #@4
    return-void
.end method


# virtual methods
.method public leftCap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1082
    const-string/jumbo v0, "."

    #@3
    return-object v0
.end method

.method public rightCap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "to"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1085
    const-string/jumbo v0, "."

    #@3
    return-object v0
.end method
