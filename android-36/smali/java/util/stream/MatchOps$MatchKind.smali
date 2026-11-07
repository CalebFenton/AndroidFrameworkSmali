.class final enum Ljava/util/stream/MatchOps$MatchKind;
.super Ljava/lang/Enum;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MatchKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/stream/MatchOps$MatchKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum blacklist ALL:Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum blacklist ANY:Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum blacklist NONE:Ljava/util/stream/MatchOps$MatchKind;


# instance fields
.field private final blacklist shortCircuitResult:Z

.field private final blacklist stopOnPredicateMatches:Z


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/stream/MatchOps$MatchKind;
    .registers 3

    .line 50
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    sget-object v2, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    filled-new-array {v0, v1, v2}, [Ljava/util/stream/MatchOps$MatchKind;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetshortCircuitResult(Ljava/util/stream/MatchOps$MatchKind;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstopOnPredicateMatches(Ljava/util/stream/MatchOps$MatchKind;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 52
    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    const-string v1, "ANY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    .line 55
    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3, v2, v2}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    .line 58
    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    .line 50
    invoke-static {}, Ljava/util/stream/MatchOps$MatchKind;->$values()[Ljava/util/stream/MatchOps$MatchKind;

    move-result-object v0

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava/util/stream/MatchOps$MatchKind;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p3, "stopOnPredicateMatches"    # Z
    .param p4, "shortCircuitResult"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-boolean p3, p0, Ljava/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    .line 66
    iput-boolean p4, p0, Ljava/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    .line 67
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/util/stream/MatchOps$MatchKind;
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

    .line 50
    const-class v0, Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    return-object v0
.end method

.method public static blacklist values()[Ljava/util/stream/MatchOps$MatchKind;
    .registers 1

    .line 50
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava/util/stream/MatchOps$MatchKind;

    invoke-virtual {v0}, [Ljava/util/stream/MatchOps$MatchKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/stream/MatchOps$MatchKind;

    return-object v0
.end method
