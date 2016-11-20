.class public Lcom/android/server/notification/GlobalSortKeyComparator;
.super Ljava/lang/Object;
.source "GlobalSortKeyComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 3
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Missing left global sort key: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Missing right global sort key: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4b
    move-result v0

    #@4c
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 25
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    #@2
    .end local p1    # "left":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    #@4
    .end local p2    # "right":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GlobalSortKeyComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
