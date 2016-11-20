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
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/MatchOps$MatchKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum ALL:Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum ANY:Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum NONE:Ljava/util/stream/MatchOps$MatchKind;


# instance fields
.field private final shortCircuitResult:Z

.field private final stopOnPredicateMatches:Z


# direct methods
.method static synthetic -get0(Ljava/util/stream/MatchOps$MatchKind;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/stream/MatchOps$MatchKind;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 51
    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    #@5
    const-string/jumbo v1, "ANY"

    #@8
    invoke-direct {v0, v1, v2, v3, v3}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    #@b
    .line 52
    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    #@d
    .line 54
    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    #@f
    const-string/jumbo v1, "ALL"

    #@12
    invoke-direct {v0, v1, v3, v2, v2}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    #@15
    .line 55
    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    #@17
    .line 57
    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    #@19
    const-string/jumbo v1, "NONE"

    #@1c
    invoke-direct {v0, v1, v4, v3, v2}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    #@1f
    .line 58
    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    #@21
    .line 50
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljava/util/stream/MatchOps$MatchKind;

    #@24
    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava/util/stream/MatchOps$MatchKind;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "stopOnPredicateMatches"    # Z
    .param p4, "shortCircuitResult"    # Z

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 65
    iput-boolean p3, p0, Ljava/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    #@5
    .line 66
    iput-boolean p4, p0, Ljava/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    #@7
    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/MatchOps$MatchKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-class v0, Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/stream/MatchOps$MatchKind;
    .locals 1

    #@0
    .prologue
    .line 50
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava/util/stream/MatchOps$MatchKind;

    #@2
    return-object v0
.end method
