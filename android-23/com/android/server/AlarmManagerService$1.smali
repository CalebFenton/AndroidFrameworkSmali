.class Lcom/android/server/AlarmManagerService$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
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
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$1;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rhs"    # Lcom/android/server/AlarmManagerService$Alarm;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 533
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@4
    iget v0, v0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@6
    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@8
    iget v1, v1, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 534
    return v4

    #@d
    .line 535
    :cond_0
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@f
    iget v0, v0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@11
    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@13
    iget v1, v1, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@15
    if-le v0, v1, :cond_1

    #@17
    .line 536
    return v5

    #@18
    .line 540
    :cond_1
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@1a
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@1c
    cmp-long v0, v0, v2

    #@1e
    if-gez v0, :cond_2

    #@20
    .line 541
    return v4

    #@21
    .line 542
    :cond_2
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@23
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@25
    cmp-long v0, v0, v2

    #@27
    if-lez v0, :cond_3

    #@29
    .line 543
    return v5

    #@2a
    .line 547
    :cond_3
    const/4 v0, 0x0

    #@2b
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 531
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$1;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
