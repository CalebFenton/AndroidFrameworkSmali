.class public Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasingTimeOrder"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 8
    .param p1, "a1"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "a2"    # Lcom/android/server/AlarmManagerService$Alarm;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 1933
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@4
    .line 1934
    .local v0, "when1":J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@6
    .line 1935
    .local v2, "when2":J
    sub-long v4, v0, v2

    #@8
    cmp-long v4, v4, v6

    #@a
    if-lez v4, :cond_0

    #@c
    .line 1936
    const/4 v4, 0x1

    #@d
    return v4

    #@e
    .line 1938
    :cond_0
    sub-long v4, v0, v2

    #@10
    cmp-long v4, v4, v6

    #@12
    if-gez v4, :cond_1

    #@14
    .line 1939
    const/4 v4, -0x1

    #@15
    return v4

    #@16
    .line 1941
    :cond_1
    const/4 v4, 0x0

    #@17
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1932
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    #@2
    .end local p1    # "a1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    #@4
    .end local p2    # "a2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
