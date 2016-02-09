.class public final Ljava/lang/Daemons;
.super Ljava/lang/Object;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Daemons$Daemon;,
        Ljava/lang/Daemons$ReferenceQueueDaemon;,
        Ljava/lang/Daemons$FinalizerDaemon;,
        Ljava/lang/Daemons$FinalizerWatchdogDaemon;,
        Ljava/lang/Daemons$HeapTaskDaemon;
    }
.end annotation


# static fields
.field private static final MAX_FINALIZE_NANOS:J = 0x2540be400L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static requestGC()V
    .locals 1

    #@0
    .prologue
    .line 329
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    #@7
    .line 328
    return-void
.end method

.method public static requestHeapTrim()V
    .locals 1

    #@0
    .prologue
    .line 323
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestHeapTrim()V

    #@7
    .line 322
    return-void
.end method

.method public static start()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-get0()Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->start()V

    #@7
    .line 43
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->start()V

    #@e
    .line 44
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->start()V

    #@15
    .line 45
    invoke-static {}, Ljava/lang/Daemons$HeapTaskDaemon;->-get0()Ljava/lang/Daemons$HeapTaskDaemon;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Daemons$HeapTaskDaemon;->start()V

    #@1c
    .line 41
    return-void
.end method

.method public static stop()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-static {}, Ljava/lang/Daemons$HeapTaskDaemon;->-get0()Ljava/lang/Daemons$HeapTaskDaemon;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Daemons$HeapTaskDaemon;->stop()V

    #@7
    .line 50
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-get0()Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->stop()V

    #@e
    .line 51
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->stop()V

    #@15
    .line 52
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->stop()V

    #@1c
    .line 48
    return-void
.end method
