.class Ljava/io/ObjectOutputStream$DebugTraceInfoStack;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugTraceInfoStack"
.end annotation


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2507
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@a
    .line 2506
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    #@0
    .prologue
    .line 2514
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 2513
    return-void
.end method

.method pop()V
    .locals 2

    #@0
    .prologue
    .line 2521
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@d
    .line 2520
    return-void
.end method

.method push(Ljava/lang/String;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2528
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "\t- "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 2527
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2536
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_1

    #@d
    .line 2537
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@f
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@12
    move-result v1

    #@13
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    #@15
    .line 2538
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    #@17
    add-int/lit8 v3, v1, -0x1

    #@19
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const/4 v2, 0x1

    #@24
    if-eq v1, v2, :cond_0

    #@26
    const-string/jumbo v2, "\n"

    #@29
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 2537
    add-int/lit8 v1, v1, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2538
    :cond_0
    const-string/jumbo v2, ""

    #@32
    goto :goto_1

    #@33
    .line 2541
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    return-object v2
.end method
