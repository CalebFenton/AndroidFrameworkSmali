.class public final Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
.super Ljava/lang/Object;
.source "ReflexiveStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist build:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist c_statsEvent_Builder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist setAtomId:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist usePooledBuffer:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist writeBoolean:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist writeInt:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist writeIntArray:Lcom/android/org/conscrypt/metrics/OptionalMethod;


# instance fields
.field private final blacklist builder:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 104
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->initStatsEventBuilderClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    .line 105
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "setAtomId"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 106
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "writeBoolean"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 107
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "writeInt"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 108
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    const-string v3, "build"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 109
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    const-string v3, "usePooledBuffer"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 110
    new-instance v0, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    sget-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [I

    aput-object v3, v2, v5

    const-string v3, "writeIntArray"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeIntArray:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 111
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->-$$Nest$sfgetnewBuilder()Lcom/android/org/conscrypt/metrics/OptionalMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;-><init>()V

    return-void
.end method

.method private static blacklist initStatsEventBuilderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 115
    :try_start_0
    const-string v0, "android.util.StatsEvent$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 116
    :catch_7
    move-exception v0

    .line 117
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
    .registers 4

    .line 154
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "statsEvent":Ljava/lang/Object;
    new-instance v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;-><init>(Ljava/lang/Object;Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent-IA;)V

    return-object v1
.end method

.method public blacklist setAtomId(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 5
    .param p1, "atomId"    # I

    .line 128
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object p0
.end method

.method public blacklist usePooledBuffer()V
    .registers 4

    .line 143
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public blacklist writeBoolean(Z)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 5
    .param p1, "value"    # Z

    .line 133
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object p0
.end method

.method public blacklist writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 5
    .param p1, "value"    # I

    .line 138
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object p0
.end method

.method public blacklist writeIntArray([I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 5
    .param p1, "values"    # [I

    .line 147
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->-$$Nest$sfgetsdkVersionBiggerThan32()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 148
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeIntArray:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_11
    return-object p0
.end method
