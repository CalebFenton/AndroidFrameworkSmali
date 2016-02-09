.class final Lcom/android/server/am/ActivityManagerService$19;
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
    .line 14190
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
    .line 14194
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
    .line 14195
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
    .line 14197
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@24
    check-cast v0, Ljava/lang/Integer;

    #@26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v3

    #@2a
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2c
    check-cast v0, Ljava/lang/Integer;

    #@2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v0

    #@32
    if-eq v3, v0, :cond_3

    #@34
    .line 14198
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@36
    check-cast v0, Ljava/lang/Integer;

    #@38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3b
    move-result v3

    #@3c
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3e
    check-cast v0, Ljava/lang/Integer;

    #@40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v0

    #@44
    if-le v3, v0, :cond_2

    #@46
    :goto_1
    return v1

    #@47
    :cond_2
    move v1, v2

    #@48
    goto :goto_1

    #@49
    .line 14200
    :cond_3
    const/4 v0, 0x0

    #@4a
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 14192
    check-cast p1, Landroid/util/Pair;

    #@2
    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Landroid/util/Pair;

    #@4
    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$19;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
