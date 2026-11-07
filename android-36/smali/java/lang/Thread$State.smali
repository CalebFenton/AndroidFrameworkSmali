.class public final enum Ljava/lang/Thread$State;
.super Ljava/lang/Enum;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/Thread$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/Thread$State;

.field public static final enum whitelist test-api BLOCKED:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api NEW:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api RUNNABLE:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api TERMINATED:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api TIMED_WAITING:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api WAITING:Ljava/lang/Thread$State;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/Thread$State;
    .registers 6

    .line 2173
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    sget-object v4, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Thread$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2177
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    .line 2185
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "RUNNABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    .line 2194
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "BLOCKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    .line 2215
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "WAITING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    .line 2229
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "TIMED_WAITING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    .line 2235
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 2173
    invoke-static {}, Ljava/lang/Thread$State;->$values()[Ljava/lang/Thread$State;

    move-result-object v0

    sput-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Thread$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2173
    const-class v0, Ljava/lang/Thread$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$State;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/Thread$State;
    .registers 1

    .line 2173
    sget-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    invoke-virtual {v0}, [Ljava/lang/Thread$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread$State;

    return-object v0
.end method
