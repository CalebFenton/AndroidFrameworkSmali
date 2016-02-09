.class final Lcom/android/server/AlarmManagerService$WakeupEvent;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WakeupEvent"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public uid:I

.field public when:J


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "theTime"    # J
    .param p3, "theUid"    # I
    .param p4, "theAction"    # Ljava/lang/String;

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 313
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    #@5
    .line 314
    iput p3, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    #@7
    .line 315
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    #@9
    .line 312
    return-void
.end method
