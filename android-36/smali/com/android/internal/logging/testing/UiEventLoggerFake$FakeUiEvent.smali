.class public Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
.super Ljava/lang/Object;
.source "UiEventLoggerFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/testing/UiEventLoggerFake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeUiEvent"
.end annotation


# instance fields
.field public final blacklist eventId:I

.field public final blacklist instanceId:Lcom/android/internal/logging/InstanceId;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist position:I

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "eventId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    .line 44
    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    .line 45
    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    .line 48
    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 6
    .param p1, "eventId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    .line 52
    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    .line 53
    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    .line 56
    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 6
    .param p1, "eventId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instanceId"    # Lcom/android/internal/logging/InstanceId;
    .param p5, "position"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    .line 60
    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    .line 61
    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 63
    iput p5, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    .line 64
    return-void
.end method
