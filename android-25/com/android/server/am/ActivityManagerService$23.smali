.class final Lcom/android/server/am/ActivityManagerService$23;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "object1":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;"
    .local p2, "object2":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    .line 15530
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@6
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@8
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@c
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@e
    if-eq v3, v0, :cond_1

    #@10
    .line 15531
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@14
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@16
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@18
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@1a
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@1c
    if-le v3, v0, :cond_0

    #@1e
    move v0, v1

    #@1f
    :goto_0
    return v0

    #@20
    :cond_0
    move v0, v2

    #@21
    goto :goto_0

    #@22
    .line 15533
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@24
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@26
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@28
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2a
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@2c
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@2e
    if-eq v3, v0, :cond_3

    #@30
    .line 15534
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@32
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@34
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@36
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@38
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@3a
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@3c
    if-le v3, v0, :cond_2

    #@3e
    :goto_1
    return v1

    #@3f
    :cond_2
    move v1, v2

    #@40
    goto :goto_1

    #@41
    .line 15536
    :cond_3
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@43
    check-cast v0, Ljava/lang/Integer;

    #@45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@48
    move-result v3

    #@49
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@4b
    check-cast v0, Ljava/lang/Integer;

    #@4d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v0

    #@51
    if-eq v3, v0, :cond_5

    #@53
    .line 15537
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@55
    check-cast v0, Ljava/lang/Integer;

    #@57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5a
    move-result v3

    #@5b
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@5d
    check-cast v0, Ljava/lang/Integer;

    #@5f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@62
    move-result v0

    #@63
    if-le v3, v0, :cond_4

    #@65
    :goto_2
    return v1

    #@66
    :cond_4
    move v1, v2

    #@67
    goto :goto_2

    #@68
    .line 15539
    :cond_5
    const/4 v0, 0x0

    #@69
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 15528
    check-cast p1, Landroid/util/Pair;

    #@2
    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Landroid/util/Pair;

    #@4
    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$23;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
