.class public final enum Ljdk/internal/vm/Continuation$Pinned;
.super Ljava/lang/Enum;
.source "Continuation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/vm/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pinned"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljdk/internal/vm/Continuation$Pinned;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljdk/internal/vm/Continuation$Pinned;

.field public static final enum blacklist CRITICAL_SECTION:Ljdk/internal/vm/Continuation$Pinned;

.field public static final enum blacklist MONITOR:Ljdk/internal/vm/Continuation$Pinned;

.field public static final enum blacklist NATIVE:Ljdk/internal/vm/Continuation$Pinned;


# direct methods
.method private static synthetic blacklist $values()[Ljdk/internal/vm/Continuation$Pinned;
    .registers 3

    .line 60
    sget-object v0, Ljdk/internal/vm/Continuation$Pinned;->NATIVE:Ljdk/internal/vm/Continuation$Pinned;

    sget-object v1, Ljdk/internal/vm/Continuation$Pinned;->MONITOR:Ljdk/internal/vm/Continuation$Pinned;

    sget-object v2, Ljdk/internal/vm/Continuation$Pinned;->CRITICAL_SECTION:Ljdk/internal/vm/Continuation$Pinned;

    filled-new-array {v0, v1, v2}, [Ljdk/internal/vm/Continuation$Pinned;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Ljdk/internal/vm/Continuation$Pinned;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljdk/internal/vm/Continuation$Pinned;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/vm/Continuation$Pinned;->NATIVE:Ljdk/internal/vm/Continuation$Pinned;

    .line 62
    new-instance v0, Ljdk/internal/vm/Continuation$Pinned;

    const-string v1, "MONITOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljdk/internal/vm/Continuation$Pinned;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/vm/Continuation$Pinned;->MONITOR:Ljdk/internal/vm/Continuation$Pinned;

    .line 63
    new-instance v0, Ljdk/internal/vm/Continuation$Pinned;

    const-string v1, "CRITICAL_SECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljdk/internal/vm/Continuation$Pinned;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/vm/Continuation$Pinned;->CRITICAL_SECTION:Ljdk/internal/vm/Continuation$Pinned;

    .line 60
    invoke-static {}, Ljdk/internal/vm/Continuation$Pinned;->$values()[Ljdk/internal/vm/Continuation$Pinned;

    move-result-object v0

    sput-object v0, Ljdk/internal/vm/Continuation$Pinned;->$VALUES:[Ljdk/internal/vm/Continuation$Pinned;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljdk/internal/vm/Continuation$Pinned;
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

    .line 60
    const-class v0, Ljdk/internal/vm/Continuation$Pinned;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk/internal/vm/Continuation$Pinned;

    return-object v0
.end method

.method public static blacklist values()[Ljdk/internal/vm/Continuation$Pinned;
    .registers 1

    .line 60
    sget-object v0, Ljdk/internal/vm/Continuation$Pinned;->$VALUES:[Ljdk/internal/vm/Continuation$Pinned;

    invoke-virtual {v0}, [Ljdk/internal/vm/Continuation$Pinned;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdk/internal/vm/Continuation$Pinned;

    return-object v0
.end method
