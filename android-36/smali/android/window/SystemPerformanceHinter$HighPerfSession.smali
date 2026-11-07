.class public Landroid/window/SystemPerformanceHinter$HighPerfSession;
.super Ljava/lang/Object;
.source "SystemPerformanceHinter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemPerformanceHinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HighPerfSession"
.end annotation


# instance fields
.field private final blacklist displayId:I

.field private final blacklist hintFlags:I

.field private blacklist mTraceName:Ljava/lang/String;

.field private final blacklist reason:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/window/SystemPerformanceHinter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I
    .registers 1

    iget p0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->displayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I
    .registers 1

    iget p0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->hintFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreason(Landroid/window/SystemPerformanceHinter$HighPerfSession;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->reason:Ljava/lang/String;

    return-object p0
.end method

.method protected constructor blacklist <init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/window/SystemPerformanceHinter;
    .param p2, "hintFlags"    # I
    .param p3, "displayId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->hintFlags:I

    .line 96
    iput-object p4, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->reason:Ljava/lang/String;

    .line 97
    iput p3, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->displayId:I

    .line 98
    return-void
.end method


# virtual methods
.method blacklist asyncTraceBegin()Z
    .registers 6

    .line 121
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    iget-wide v0, v0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_f
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfSession-d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    .line 128
    :cond_36
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    iget-wide v0, v0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    .line 129
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 128
    const-string v4, "SystemPerformanceHinter"

    invoke-static {v0, v1, v4, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method blacklist asyncTraceEnd()Z
    .registers 5

    .line 134
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_6
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    iget-wide v0, v0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    const-string v2, "SystemPerformanceHinter"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-static {v0, p0}, Landroid/window/SystemPerformanceHinter;->-$$Nest$mendSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    .line 113
    return-void
.end method

.method public whitelist test-api finalize()V
    .registers 1

    .line 117
    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    .line 118
    return-void
.end method

.method public blacklist start()V
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-static {v0}, Landroid/window/SystemPerformanceHinter;->-$$Nest$fgetmActiveSessions(Landroid/window/SystemPerformanceHinter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 103
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-static {v0, p0}, Landroid/window/SystemPerformanceHinter;->-$$Nest$mstartSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    .line 105
    :cond_11
    return-void
.end method
