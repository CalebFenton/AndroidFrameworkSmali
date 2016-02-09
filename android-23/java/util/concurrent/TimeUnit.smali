.class public abstract enum Ljava/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/TimeUnit$1;,
        Ljava/util/concurrent/TimeUnit$2;,
        Ljava/util/concurrent/TimeUnit$3;,
        Ljava/util/concurrent/TimeUnit$4;,
        Ljava/util/concurrent/TimeUnit$5;,
        Ljava/util/concurrent/TimeUnit$6;,
        Ljava/util/concurrent/TimeUnit$7;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/concurrent/TimeUnit;

.field static final C0:J = 0x1L

.field static final C1:J = 0x3e8L

.field static final C2:J = 0xf4240L

.field static final C3:J = 0x3b9aca00L

.field static final C4:J = 0xdf8475800L

.field static final C5:J = 0x34630b8a000L

.field static final C6:J = 0x4e94914f0000L

.field public static final enum DAYS:Ljava/util/concurrent/TimeUnit;

.field public static final enum HOURS:Ljava/util/concurrent/TimeUnit;

.field static final MAX:J = 0x7fffffffffffffffL

.field public static final enum MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MINUTES:Ljava/util/concurrent/TimeUnit;

.field public static final enum NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum SECONDS:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 43
    new-instance v0, Ljava/util/concurrent/TimeUnit$1;

    #@7
    const-string/jumbo v1, "NANOSECONDS"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/TimeUnit$1;-><init>(Ljava/lang/String;I)V

    #@d
    .line 46
    sput-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@f
    .line 58
    new-instance v0, Ljava/util/concurrent/TimeUnit$2;

    #@11
    const-string/jumbo v1, "MICROSECONDS"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/TimeUnit$2;-><init>(Ljava/lang/String;I)V

    #@17
    .line 61
    sput-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    #@19
    .line 73
    new-instance v0, Ljava/util/concurrent/TimeUnit$3;

    #@1b
    const-string/jumbo v1, "MILLISECONDS"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/util/concurrent/TimeUnit$3;-><init>(Ljava/lang/String;I)V

    #@21
    .line 76
    sput-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@23
    .line 88
    new-instance v0, Ljava/util/concurrent/TimeUnit$4;

    #@25
    const-string/jumbo v1, "SECONDS"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/TimeUnit$4;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 91
    sput-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@2d
    .line 103
    new-instance v0, Ljava/util/concurrent/TimeUnit$5;

    #@2f
    const-string/jumbo v1, "MINUTES"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/util/concurrent/TimeUnit$5;-><init>(Ljava/lang/String;I)V

    #@35
    .line 107
    sput-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@37
    .line 119
    new-instance v0, Ljava/util/concurrent/TimeUnit$6;

    #@39
    const-string/jumbo v1, "HOURS"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$6;-><init>(Ljava/lang/String;I)V

    #@40
    .line 123
    sput-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@42
    .line 135
    new-instance v0, Ljava/util/concurrent/TimeUnit$7;

    #@44
    const-string/jumbo v1, "DAYS"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$7;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 139
    sput-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    #@4d
    .line 42
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Ljava/util/concurrent/TimeUnit;

    #@50
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    const-class v0, Ljava/util/concurrent/TimeUnit;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/concurrent/TimeUnit;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/concurrent/TimeUnit;
    .locals 1

    #@0
    .prologue
    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    #@2
    return-object v0
.end method

.method static x(JJJ)J
    .locals 2
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    #@0
    .prologue
    .line 167
    cmp-long v0, p0, p4

    #@2
    if-lez v0, :cond_0

    #@4
    const-wide v0, 0x7fffffffffffffffL

    #@9
    return-wide v0

    #@a
    .line 168
    :cond_0
    neg-long v0, p4

    #@b
    cmp-long v0, p0, v0

    #@d
    if-gez v0, :cond_1

    #@f
    const-wide/high16 v0, -0x8000000000000000L

    #@11
    return-wide v0

    #@12
    .line 169
    :cond_1
    mul-long v0, p0, p2

    #@14
    return-wide v0
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .locals 1
    .param p1, "sourceDuration"    # J
    .param p3, "sourceUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method abstract excessNanos(JJ)I
.end method

.method public sleep(J)V
    .locals 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p1, v4

    #@4
    if-lez v3, :cond_0

    #@6
    .line 358
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@9
    move-result-wide v0

    #@a
    .line 359
    .local v0, "ms":J
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    #@d
    move-result v2

    #@e
    .line 360
    .local v2, "ns":I
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    #@11
    .line 356
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_0
    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;J)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p2, v4

    #@4
    if-lez v3, :cond_0

    #@6
    .line 340
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@9
    move-result-wide v0

    #@a
    .line 341
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    #@d
    move-result v2

    #@e
    .line 342
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    #@11
    .line 338
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_0
    return-void
.end method

.method public timedWait(Ljava/lang/Object;J)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p2, v4

    #@4
    if-lez v3, :cond_0

    #@6
    .line 320
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@9
    move-result-wide v0

    #@a
    .line 321
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    #@d
    move-result v2

    #@e
    .line 322
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    #@11
    .line 318
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_0
    return-void
.end method

.method public toDays(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method public toHours(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method public toMicros(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method public toMillis(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 232
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method public toMinutes(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method public toNanos(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 208
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method

.method public toSeconds(J)J
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 244
    new-instance v0, Ljava/lang/AbstractMethodError;

    #@2
    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    #@5
    throw v0
.end method
