.class public Lcom/android/internal/logging/testing/UiEventLoggerFake;
.super Ljava/lang/Object;
.source "UiEventLoggerFake.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
    }
.end annotation


# instance fields
.field private blacklist mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist eventId(I)I
    .registers 3
    .param p1, "index"    # I

    .line 83
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    iget v0, v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    return v0
.end method

.method public blacklist get(I)Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
    .registers 3
    .param p1, "index"    # I

    .line 79
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    return-object v0
.end method

.method public blacklist getLogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    return-object v0
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .registers 4
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/testing/UiEventLoggerFake;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 89
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .registers 7
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 98
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    .line 99
    .local v0, "eventId":I
    if-lez v0, :cond_10

    .line 100
    iget-object v1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v2, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_10
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .registers 5
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/testing/UiEventLoggerFake;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 94
    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 8
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 107
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    .line 108
    .local v0, "eventId":I
    if-lez v0, :cond_10

    .line 109
    iget-object v1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v2, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct {v2, v0, p2, p3, p4}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_10
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 13
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instance"    # Lcom/android/internal/logging/InstanceId;
    .param p5, "position"    # I

    .line 124
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 125
    .local v1, "eventId":I
    if-lez v1, :cond_15

    .line 126
    iget-object v6, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "instance":Lcom/android/internal/logging/InstanceId;
    .end local p5    # "position":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "instance":Lcom/android/internal/logging/InstanceId;
    .local v5, "position":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 125
    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "instance":Lcom/android/internal/logging/InstanceId;
    .end local v5    # "position":I
    .restart local p2    # "uid":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "instance":Lcom/android/internal/logging/InstanceId;
    .restart local p5    # "position":I
    :cond_15
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 128
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "instance":Lcom/android/internal/logging/InstanceId;
    .end local p5    # "position":I
    .restart local v2    # "uid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "instance":Lcom/android/internal/logging/InstanceId;
    .restart local v5    # "position":I
    :goto_19
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .registers 12
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "position"    # I

    .line 115
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 116
    .local v1, "eventId":I
    if-lez v1, :cond_15

    .line 117
    iget-object v6, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    const/4 v4, 0x0

    move v2, p2

    move-object v3, p3

    move v5, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "position":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "position":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 116
    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "position":I
    .restart local p2    # "uid":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "position":I
    :cond_15
    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 119
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "position":I
    .restart local v2    # "uid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v5    # "position":I
    :goto_18
    return-void
.end method

.method public blacklist numLogs()I
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
