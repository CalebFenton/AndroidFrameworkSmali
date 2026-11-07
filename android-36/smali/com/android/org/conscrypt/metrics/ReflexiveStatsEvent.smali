.class public Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
.super Ljava/lang/Object;
.source "ReflexiveStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    }
.end annotation


# static fields
.field private static final blacklist c_statsEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist sdkVersionBiggerThan32:Z


# instance fields
.field private final blacklist statsEvent:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetnewBuilder()Lcom/android/org/conscrypt/metrics/OptionalMethod;
    .registers 1

    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsdkVersionBiggerThan32()Z
    .registers 1

    sget-boolean v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->sdkVersionBiggerThan32:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 33
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->initStatsEventClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->c_statsEvent:Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->c_statsEvent:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "newBuilder"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 35
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->isSdkGreater(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->sdkVersionBiggerThan32:Z

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "statsEvent"    # Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->statsEvent:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist buildEvent(IZIIII)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
    .registers 8
    .param p0, "atomId"    # I
    .param p1, "success"    # Z
    .param p2, "protocol"    # I
    .param p3, "cipherSuite"    # I
    .param p4, "duration"    # I
    .param p5, "source"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    move-result-object v0

    .line 81
    .local v0, "builder":Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    invoke-virtual {v0, p0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean(Z)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 83
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 84
    invoke-virtual {v0, p3}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 85
    invoke-virtual {v0, p4}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 86
    invoke-virtual {v0, p5}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 87
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer()V

    .line 88
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist buildEvent(IZIIII[I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
    .registers 9
    .param p0, "atomId"    # I
    .param p1, "success"    # Z
    .param p2, "protocol"    # I
    .param p3, "cipherSuite"    # I
    .param p4, "duration"    # I
    .param p5, "source"    # I
    .param p6, "uids"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    invoke-virtual {v0, p0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean(Z)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 67
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 68
    invoke-virtual {v0, p3}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 69
    invoke-virtual {v0, p4}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 70
    invoke-virtual {v0, p5}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 71
    invoke-virtual {v0, p6}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeIntArray([I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 72
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer()V

    .line 73
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist initStatsEventClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 40
    :try_start_0
    const-string v0, "android.util.StatsEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 41
    :catch_7
    move-exception v0

    .line 42
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist newBuilder()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 2

    .line 57
    new-instance v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;-><init>(Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getStatsEvent()Ljava/lang/Object;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->statsEvent:Ljava/lang/Object;

    return-object v0
.end method
