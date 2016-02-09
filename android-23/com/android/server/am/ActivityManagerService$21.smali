.class Lcom/android/server/am/ActivityManagerService$21;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->reportMemUsage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessMemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 15126
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/server/am/ProcessMemInfo;
    .param p2, "rhs"    # Lcom/android/server/am/ProcessMemInfo;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, -0x1

    #@2
    .line 15128
    iget v2, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    #@4
    iget v3, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    #@6
    if-eq v2, v3, :cond_1

    #@8
    .line 15129
    iget v2, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    #@a
    iget v3, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    #@c
    if-ge v2, v3, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0

    #@11
    .line 15131
    :cond_1
    iget-wide v2, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    #@13
    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    #@15
    cmp-long v2, v2, v4

    #@17
    if-eqz v2, :cond_3

    #@19
    .line 15132
    iget-wide v2, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    #@1b
    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    #@1d
    cmp-long v2, v2, v4

    #@1f
    if-gez v2, :cond_2

    #@21
    :goto_1
    return v1

    #@22
    :cond_2
    move v1, v0

    #@23
    goto :goto_1

    #@24
    .line 15134
    :cond_3
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 15127
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$21;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
