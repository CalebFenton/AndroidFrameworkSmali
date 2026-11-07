.class public final enum Ljdk/internal/vm/Continuation$PreemptStatus;
.super Ljava/lang/Enum;
.source "Continuation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/vm/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreemptStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljdk/internal/vm/Continuation$PreemptStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist PERM_FAIL_NOT_MOUNTED:Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist PERM_FAIL_UNSUPPORTED:Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist PERM_FAIL_YIELDING:Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist SUCCESS:Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist TRANSIENT_FAIL_PINNED_CRITICAL_SECTION:Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist TRANSIENT_FAIL_PINNED_MONITOR:Ljdk/internal/vm/Continuation$PreemptStatus;

.field public static final enum blacklist TRANSIENT_FAIL_PINNED_NATIVE:Ljdk/internal/vm/Continuation$PreemptStatus;


# instance fields
.field final blacklist pinned:Ljdk/internal/vm/Continuation$Pinned;


# direct methods
.method private static synthetic blacklist $values()[Ljdk/internal/vm/Continuation$PreemptStatus;
    .registers 7

    .line 66
    sget-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->SUCCESS:Ljdk/internal/vm/Continuation$PreemptStatus;

    sget-object v1, Ljdk/internal/vm/Continuation$PreemptStatus;->PERM_FAIL_UNSUPPORTED:Ljdk/internal/vm/Continuation$PreemptStatus;

    sget-object v2, Ljdk/internal/vm/Continuation$PreemptStatus;->PERM_FAIL_YIELDING:Ljdk/internal/vm/Continuation$PreemptStatus;

    sget-object v3, Ljdk/internal/vm/Continuation$PreemptStatus;->PERM_FAIL_NOT_MOUNTED:Ljdk/internal/vm/Continuation$PreemptStatus;

    sget-object v4, Ljdk/internal/vm/Continuation$PreemptStatus;->TRANSIENT_FAIL_PINNED_CRITICAL_SECTION:Ljdk/internal/vm/Continuation$PreemptStatus;

    sget-object v5, Ljdk/internal/vm/Continuation$PreemptStatus;->TRANSIENT_FAIL_PINNED_NATIVE:Ljdk/internal/vm/Continuation$PreemptStatus;

    sget-object v6, Ljdk/internal/vm/Continuation$PreemptStatus;->TRANSIENT_FAIL_PINNED_MONITOR:Ljdk/internal/vm/Continuation$PreemptStatus;

    filled-new-array/range {v0 .. v6}, [Ljdk/internal/vm/Continuation$PreemptStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 67
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->SUCCESS:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 68
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const-string v1, "PERM_FAIL_UNSUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->PERM_FAIL_UNSUPPORTED:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 69
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const-string v1, "PERM_FAIL_YIELDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->PERM_FAIL_YIELDING:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 70
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const-string v1, "PERM_FAIL_NOT_MOUNTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->PERM_FAIL_NOT_MOUNTED:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 71
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const/4 v1, 0x4

    sget-object v2, Ljdk/internal/vm/Continuation$Pinned;->CRITICAL_SECTION:Ljdk/internal/vm/Continuation$Pinned;

    const-string v3, "TRANSIENT_FAIL_PINNED_CRITICAL_SECTION"

    invoke-direct {v0, v3, v1, v2}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->TRANSIENT_FAIL_PINNED_CRITICAL_SECTION:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 72
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const/4 v1, 0x5

    sget-object v2, Ljdk/internal/vm/Continuation$Pinned;->NATIVE:Ljdk/internal/vm/Continuation$Pinned;

    const-string v3, "TRANSIENT_FAIL_PINNED_NATIVE"

    invoke-direct {v0, v3, v1, v2}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->TRANSIENT_FAIL_PINNED_NATIVE:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 73
    new-instance v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    const/4 v1, 0x6

    sget-object v2, Ljdk/internal/vm/Continuation$Pinned;->MONITOR:Ljdk/internal/vm/Continuation$Pinned;

    const-string v3, "TRANSIENT_FAIL_PINNED_MONITOR"

    invoke-direct {v0, v3, v1, v2}, Ljdk/internal/vm/Continuation$PreemptStatus;-><init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->TRANSIENT_FAIL_PINNED_MONITOR:Ljdk/internal/vm/Continuation$PreemptStatus;

    .line 66
    invoke-static {}, Ljdk/internal/vm/Continuation$PreemptStatus;->$values()[Ljdk/internal/vm/Continuation$PreemptStatus;

    move-result-object v0

    sput-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->$VALUES:[Ljdk/internal/vm/Continuation$PreemptStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjdk/internal/vm/Continuation$Pinned;)V
    .registers 4
    .param p3, "reason"    # Ljdk/internal/vm/Continuation$Pinned;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljdk/internal/vm/Continuation$Pinned;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljdk/internal/vm/Continuation$PreemptStatus;->pinned:Ljdk/internal/vm/Continuation$Pinned;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljdk/internal/vm/Continuation$PreemptStatus;
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

    .line 66
    const-class v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk/internal/vm/Continuation$PreemptStatus;

    return-object v0
.end method

.method public static blacklist values()[Ljdk/internal/vm/Continuation$PreemptStatus;
    .registers 1

    .line 66
    sget-object v0, Ljdk/internal/vm/Continuation$PreemptStatus;->$VALUES:[Ljdk/internal/vm/Continuation$PreemptStatus;

    invoke-virtual {v0}, [Ljdk/internal/vm/Continuation$PreemptStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdk/internal/vm/Continuation$PreemptStatus;

    return-object v0
.end method


# virtual methods
.method public blacklist pinned()Ljdk/internal/vm/Continuation$Pinned;
    .registers 2

    .line 81
    iget-object v0, p0, Ljdk/internal/vm/Continuation$PreemptStatus;->pinned:Ljdk/internal/vm/Continuation$Pinned;

    return-object v0
.end method
