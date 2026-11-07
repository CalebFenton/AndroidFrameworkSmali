.class public Landroid/view/contentprotection/ContentProtectionEventProcessor;
.super Ljava/lang/Object;
.source "ContentProtectionEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_TYPES_TO_STORE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIN_DURATION_BETWEEN_FLUSHING:Ljava/time/Duration;

.field private static final blacklist RESET_LOGIN_TOTAL_EVENTS_TO_PROCESS:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "ContentProtectionEventProcessor"


# instance fields
.field private blacklist mAnyGroupFound:Z

.field private final blacklist mContentCaptureManager:Landroid/view/contentcapture/IContentCaptureManager;

.field private final blacklist mEventBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGroupsAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGroupsOptional:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGroupsRequired:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field public blacklist mLastFlushTime:Ljava/time/Instant;

.field private final blacklist mOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mResetLoginRemainingEventsToProcess:I


# direct methods
.method public static synthetic blacklist $r8$lambda$HlV2FQ4cMFHRA5ngMxr0RyYycV8(Landroid/view/contentprotection/ContentProtectionEventProcessor;Landroid/content/pm/ParceledListSlice;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->lambda$flush$6(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PQDG6py02x6Mgv7V-XsMceOAhAA(Landroid/view/contentprotection/ContentProtectionEventProcessor;Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->lambda$processViewAppearedEvent$2(Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->MIN_DURATION_BETWEEN_FLUSHING:Ljava/time/Duration;

    .line 51
    nop

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 54
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 55
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 52
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->EVENT_TYPES_TO_STORE:Ljava/util/Set;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/util/RingBuffer;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;Ljava/lang/String;Landroid/content/ContentCaptureOptions$ContentProtectionOptions;)V
    .registers 9
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "contentCaptureManager"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/view/contentcapture/IContentCaptureManager;",
            "Ljava/lang/String;",
            "Landroid/content/ContentCaptureOptions$ContentProtectionOptions;",
            ")V"
        }
    .end annotation

    .line 91
    .local p1, "eventBuffer":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mAnyGroupFound:Z

    .line 92
    iput-object p1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mEventBuffer:Lcom/android/internal/util/RingBuffer;

    .line 93
    iput-object p2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p3, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mContentCaptureManager:Landroid/view/contentcapture/IContentCaptureManager;

    .line 95
    iput-object p4, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mPackageName:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    .line 97
    iget-object v1, p5, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsRequired:Ljava/util/List;

    .line 98
    iget-object v1, p5, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsOptional:Ljava/util/List;

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/List;

    iget-object v2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsRequired:Ljava/util/List;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsOptional:Ljava/util/List;

    aput-object v2, v1, v0

    .line 100
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsAll:Ljava/util/List;

    .line 101
    return-void
.end method

.method private blacklist clearEvents()Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mEventBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mEventBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 191
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private blacklist flush()V
    .registers 4

    .line 180
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mLastFlushTime:Ljava/time/Instant;

    .line 183
    invoke-direct {p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->clearEvents()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 184
    .local v0, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;-><init>(Landroid/view/contentprotection/ContentProtectionEventProcessor;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method private blacklist handlerOnLoginDetected(Landroid/content/pm/ParceledListSlice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mContentCaptureManager:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->onLoginDetected(Landroid/content/pm/ParceledListSlice;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 199
    goto :goto_21

    .line 197
    :catch_6
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to flush events for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProtectionEventProcessor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method private synthetic blacklist lambda$flush$6(Landroid/content/pm/ParceledListSlice;)V
    .registers 2
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;

    .line 184
    invoke-direct {p0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->handlerOnLoginDetected(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static synthetic blacklist lambda$processViewAppearedEvent$0(Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)Z
    .registers 2
    .param p0, "group"    # Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    .line 128
    iget-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$processViewAppearedEvent$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)Z
    .registers 5
    .param p0, "eventText"    # Ljava/lang/String;
    .param p1, "viewNodeText"    # Ljava/lang/String;
    .param p2, "hintText"    # Ljava/lang/String;
    .param p3, "group"    # Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    .line 131
    invoke-virtual {p3, p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 132
    invoke-virtual {p3, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 133
    invoke-virtual {p3, p2}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 131
    :goto_16
    return v0
.end method

.method private synthetic blacklist lambda$processViewAppearedEvent$2(Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)V
    .registers 3
    .param p1, "group"    # Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    .line 138
    iput-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mAnyGroupFound:Z

    .line 139
    return-void
.end method

.method static synthetic blacklist lambda$processViewAppearedEvent$3(Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)Z
    .registers 2
    .param p0, "group"    # Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    .line 142
    iget-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    return v0
.end method

.method static synthetic blacklist lambda$processViewAppearedEvent$4(Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)Z
    .registers 2
    .param p0, "group"    # Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    .line 143
    iget-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    return v0
.end method

.method static synthetic blacklist lambda$resetLoginFlags$5(Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)V
    .registers 2
    .param p0, "group"    # Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    return-void
.end method

.method private blacklist loginDetected()V
    .registers 4

    .line 154
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mLastFlushTime:Ljava/time/Instant;

    if-eqz v0, :cond_16

    .line 155
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mLastFlushTime:Ljava/time/Instant;

    sget-object v2, Landroid/view/contentprotection/ContentProtectionEventProcessor;->MIN_DURATION_BETWEEN_FLUSHING:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 156
    :cond_16
    invoke-direct {p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->flush()V

    .line 158
    :cond_19
    invoke-direct {p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->resetLoginFlags()V

    .line 159
    return-void
.end method

.method private blacklist maybeResetLoginFlags()V
    .registers 2

    .line 167
    iget-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mAnyGroupFound:Z

    if-eqz v0, :cond_1a

    .line 168
    iget v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mResetLoginRemainingEventsToProcess:I

    if-gtz v0, :cond_d

    .line 169
    const/16 v0, 0x96

    iput v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mResetLoginRemainingEventsToProcess:I

    goto :goto_1a

    .line 171
    :cond_d
    iget v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mResetLoginRemainingEventsToProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mResetLoginRemainingEventsToProcess:I

    .line 172
    iget v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mResetLoginRemainingEventsToProcess:I

    if-gtz v0, :cond_1a

    .line 173
    invoke-direct {p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->resetLoginFlags()V

    .line 177
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist processViewAppearedEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 122
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getViewNode()Landroid/view/contentcapture/ViewNode;

    move-result-object v0

    .line 123
    .local v0, "viewNode":Landroid/view/contentcapture/ViewNode;
    invoke-static {p1}, Landroid/view/contentprotection/ContentProtectionUtils;->getEventTextLower(Landroid/view/contentcapture/ContentCaptureEvent;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "eventText":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/contentprotection/ContentProtectionUtils;->getViewNodeTextLower(Landroid/view/contentcapture/ViewNode;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "viewNodeText":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/contentprotection/ContentProtectionUtils;->getHintTextLower(Landroid/view/contentcapture/ViewNode;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "hintText":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsAll:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda1;-><init>()V

    .line 128
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v2, v3}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 134
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda3;-><init>(Landroid/view/contentprotection/ContentProtectionEventProcessor;)V

    .line 135
    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 141
    iget-object v4, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsRequired:Ljava/util/List;

    .line 142
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_63

    iget-object v4, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsOptional:Ljava/util/List;

    .line 143
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->count()J

    move-result-wide v4

    iget-object v6, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget v6, v6, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_63

    const/4 v4, 0x1

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    .line 146
    .local v4, "loginDetected":Z
    :goto_64
    if-eqz v4, :cond_6a

    .line 147
    invoke-direct {p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->loginDetected()V

    goto :goto_6d

    .line 149
    :cond_6a
    invoke-direct {p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->maybeResetLoginFlags()V

    .line 151
    :goto_6d
    return-void
.end method

.method private blacklist resetLoginFlags()V
    .registers 3

    .line 162
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mGroupsAll:Ljava/util/List;

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mAnyGroupFound:Z

    .line 164
    return-void
.end method

.method private blacklist storeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 115
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getViewNode()Landroid/view/contentcapture/ViewNode;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getViewNode()Landroid/view/contentcapture/ViewNode;

    move-result-object v0

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    .line 116
    .local v0, "viewNode":Landroid/view/contentcapture/ViewNode;
    :goto_10
    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ViewNode;->setTextIdEntry(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 118
    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->mEventBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public blacklist processEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 105
    sget-object v0, Landroid/view/contentprotection/ContentProtectionEventProcessor;->EVENT_TYPES_TO_STORE:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    invoke-direct {p0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->storeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 108
    :cond_13
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 109
    invoke-direct {p0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->processViewAppearedEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 111
    :cond_1d
    return-void
.end method
