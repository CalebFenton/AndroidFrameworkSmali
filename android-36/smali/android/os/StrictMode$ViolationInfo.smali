.class public final Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViolationInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist broadcastIntentAction:Ljava/lang/String;

.field public blacklist durationMillis:I

.field private final greylist-max-o mBinderStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPenaltyMask:I

.field private greylist-max-o mStackTrace:Ljava/lang/String;

.field private final greylist-max-o mViolation:Landroid/os/strictmode/Violation;

.field public blacklist numAnimationsRunning:I

.field public blacklist numInstances:J

.field public blacklist tags:[Ljava/lang/String;

.field public blacklist violationNumThisLoop:I

.field public blacklist violationUptimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I
    .registers 1

    iget p0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViolation(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;
    .registers 1

    iget-object p0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3284
    new-instance v0, Landroid/os/StrictMode$ViolationInfo$1;

    invoke-direct {v0}, Landroid/os/StrictMode$ViolationInfo$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 3167
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Z)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "unsetGatheringBit"    # Z

    .line 3175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3023
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    .line 3032
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3035
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3057
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3176
    const-class v0, Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/strictmode/Violation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/strictmode/Violation;

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    .line 3177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3178
    .local v0, "binderStackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v0, :cond_57

    .line 3179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    .line 3180
    .local v2, "traceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_32
    array-length v4, v2

    if-ge v3, v4, :cond_4f

    .line 3181
    new-instance v4, Ljava/lang/StackTraceElement;

    .line 3183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3187
    .local v4, "element":Ljava/lang/StackTraceElement;
    aput-object v4, v2, v3

    .line 3180
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 3189
    .end local v3    # "j":I
    :cond_4f
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 3178
    .end local v2    # "traceElements":[Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 3191
    .end local v1    # "i":I
    :cond_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3192
    .local v1, "rawPenaltyMask":I
    if-eqz p2, :cond_64

    .line 3193
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    goto :goto_66

    .line 3195
    :cond_64
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    .line 3197
    :goto_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 3199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 3201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 3203
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 3204
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/strictmode/Violation;I)V
    .registers 10
    .param p1, "tr"    # Landroid/os/strictmode/Violation;
    .param p2, "penaltyMask"    # I

    .line 3060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3023
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    .line 3032
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3035
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3057
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3061
    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    .line 3062
    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    .line 3063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 3064
    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result v0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3065
    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object v0

    .line 3066
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_30

    .line 3067
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 3069
    :cond_30
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThisThreadSpanState()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$ThreadSpanState;

    .line 3070
    .local v1, "state":Landroid/os/StrictMode$ThreadSpanState;
    instance-of v2, p1, Landroid/os/strictmode/InstanceCountViolation;

    if-eqz v2, :cond_47

    .line 3071
    move-object v2, p1

    check-cast v2, Landroid/os/strictmode/InstanceCountViolation;

    invoke-virtual {v2}, Landroid/os/strictmode/InstanceCountViolation;->getNumberOfInstances()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3073
    :cond_47
    monitor-enter v1

    .line 3074
    :try_start_48
    iget v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 3075
    .local v2, "spanActiveCount":I
    const/16 v3, 0x14

    if-le v2, v3, :cond_50

    .line 3076
    const/16 v2, 0x14

    .line 3078
    :cond_50
    if-eqz v2, :cond_6d

    .line 3079
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 3080
    iget-object v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 3081
    .local v3, "iter":Landroid/os/StrictMode$Span;
    const/4 v4, 0x0

    .line 3082
    .local v4, "index":I
    :goto_59
    if-eqz v3, :cond_6d

    if-ge v4, v2, :cond_6d

    .line 3083
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v3}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmName(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 3084
    add-int/lit8 v4, v4, 0x1

    .line 3085
    invoke-static {v3}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v5

    move-object v3, v5

    goto :goto_59

    .line 3088
    .end local v2    # "spanActiveCount":I
    .end local v3    # "iter":Landroid/os/StrictMode$Span;
    .end local v4    # "index":I
    :cond_6d
    monitor-exit v1

    .line 3089
    return-void

    .line 3088
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_6f

    throw v2
.end method


# virtual methods
.method greylist-max-o addLocalStack(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 3140
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3141
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3281
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "penalty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3255
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5d

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "durationMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3258
    :cond_5d
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_82

    .line 3259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numInstances: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3261
    :cond_82
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v0, :cond_a3

    .line 3262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "violationNumThisLoop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3264
    :cond_a3
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v0, :cond_c4

    .line 3265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numAnimationsRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3267
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "violationUptimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3268
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_101

    .line 3269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcastIntentAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3271
    :cond_101
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v0, :cond_139

    .line 3272
    const/4 v0, 0x0

    .line 3273
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10a
    if-ge v3, v2, :cond_139

    aget-object v4, v1, v3

    .line 3274
    .local v4, "tag":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "tag["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "index":I
    .local v6, "index":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3273
    .end local v4    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_10a

    .line 3277
    .end local v6    # "index":I
    :cond_139
    return-void
.end method

.method public blacklist getStackTrace()Ljava/lang/String;
    .registers 10

    .line 3096
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 3097
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3098
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 3099
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v2, v1}, Landroid/os/strictmode/Violation;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3100
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 3101
    .local v4, "traces":[Ljava/lang/StackTraceElement;
    const-string v5, "# via Binder call with stack:\n"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3102
    array-length v5, v4

    move v6, v3

    :goto_2f
    if-ge v6, v5, :cond_47

    aget-object v7, v4, v6

    .line 3103
    .local v7, "traceElement":Ljava/lang/StackTraceElement;
    const-string v8, "\tat "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3104
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3105
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 3102
    .end local v7    # "traceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 3107
    .end local v4    # "traces":[Ljava/lang/StackTraceElement;
    :cond_47
    goto :goto_1c

    .line 3108
    :cond_48
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 3109
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 3110
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    .line 3112
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_54
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getViolationClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/strictmode/Violation;",
            ">;"
        }
    .end annotation

    .line 3116
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getViolationDetails()Ljava/lang/String;
    .registers 2

    .line 3126
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Landroid/os/strictmode/Violation;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 3145
    const/16 v0, 0x11

    .line 3146
    .local v0, "result":I
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    if-eqz v1, :cond_10

    .line 3147
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v2}, Landroid/os/strictmode/Violation;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 3149
    :cond_10
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v1, :cond_16

    .line 3150
    mul-int/lit8 v0, v0, 0x25

    .line 3152
    :cond_16
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 3153
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 3155
    :cond_24
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 3156
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_3b

    aget-object v4, v1, v3

    .line 3157
    .local v4, "tag":Ljava/lang/String;
    mul-int/lit8 v5, v0, 0x25

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 3156
    .end local v4    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 3160
    :cond_3b
    return v0
.end method

.method greylist-max-o penaltyEnabled(I)Z
    .registers 3
    .param p1, "p"    # I

    .line 3130
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3209
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3210
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3211
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 3212
    .local v1, "traceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    array-length v2, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_49

    aget-object v4, v1, v3

    .line 3214
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3216
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 3219
    .end local v1    # "traceElements":[Ljava/lang/StackTraceElement;
    :cond_49
    goto :goto_14

    .line 3220
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3221
    .local v0, "start":I
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3222
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3225
    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3226
    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3227
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3228
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3229
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3249
    .local v1, "total":I
    return-void
.end method
