.class public final enum Ldalvik/annotation/TestLevel;
.super Ljava/lang/Enum;
.source "TestLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/annotation/TestLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/annotation/TestLevel;

.field public static final enum ADDITIONAL:Ldalvik/annotation/TestLevel;

.field public static final enum COMPLETE:Ldalvik/annotation/TestLevel;

.field public static final enum NOT_FEASIBLE:Ldalvik/annotation/TestLevel;

.field public static final enum NOT_NECESSARY:Ldalvik/annotation/TestLevel;

.field public static final enum PARTIAL:Ldalvik/annotation/TestLevel;

.field public static final enum PARTIAL_COMPLETE:Ldalvik/annotation/TestLevel;

.field public static final enum PARTIAL_OK:Ldalvik/annotation/TestLevel;

.field public static final enum SUFFICIENT:Ldalvik/annotation/TestLevel;

.field public static final enum TODO:Ldalvik/annotation/TestLevel;


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
    .line 26
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@7
    const-string/jumbo v1, "COMPLETE"

    #@a
    invoke-direct {v0, v1, v3}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@d
    .line 29
    sput-object v0, Ldalvik/annotation/TestLevel;->COMPLETE:Ldalvik/annotation/TestLevel;

    #@f
    .line 31
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@11
    const-string/jumbo v1, "PARTIAL_COMPLETE"

    #@14
    invoke-direct {v0, v1, v4}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@17
    .line 36
    sput-object v0, Ldalvik/annotation/TestLevel;->PARTIAL_COMPLETE:Ldalvik/annotation/TestLevel;

    #@19
    .line 38
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@1b
    const-string/jumbo v1, "PARTIAL_OK"

    #@1e
    invoke-direct {v0, v1, v5}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@21
    .line 41
    sput-object v0, Ldalvik/annotation/TestLevel;->PARTIAL_OK:Ldalvik/annotation/TestLevel;

    #@23
    .line 43
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@25
    const-string/jumbo v1, "PARTIAL"

    #@28
    invoke-direct {v0, v1, v6}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 49
    sput-object v0, Ldalvik/annotation/TestLevel;->PARTIAL:Ldalvik/annotation/TestLevel;

    #@2d
    .line 51
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@2f
    const-string/jumbo v1, "SUFFICIENT"

    #@32
    invoke-direct {v0, v1, v7}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@35
    .line 57
    sput-object v0, Ldalvik/annotation/TestLevel;->SUFFICIENT:Ldalvik/annotation/TestLevel;

    #@37
    .line 59
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@39
    const-string/jumbo v1, "ADDITIONAL"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@40
    .line 66
    sput-object v0, Ldalvik/annotation/TestLevel;->ADDITIONAL:Ldalvik/annotation/TestLevel;

    #@42
    .line 68
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@44
    const-string/jumbo v1, "NOT_NECESSARY"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 72
    sput-object v0, Ldalvik/annotation/TestLevel;->NOT_NECESSARY:Ldalvik/annotation/TestLevel;

    #@4d
    .line 74
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@4f
    const-string/jumbo v1, "NOT_FEASIBLE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@56
    .line 77
    sput-object v0, Ldalvik/annotation/TestLevel;->NOT_FEASIBLE:Ldalvik/annotation/TestLevel;

    #@58
    .line 79
    new-instance v0, Ldalvik/annotation/TestLevel;

    #@5a
    const-string/jumbo v1, "TODO"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    #@62
    .line 83
    sput-object v0, Ldalvik/annotation/TestLevel;->TODO:Ldalvik/annotation/TestLevel;

    #@64
    .line 24
    const/16 v0, 0x9

    #@66
    new-array v0, v0, [Ldalvik/annotation/TestLevel;

    #@68
    sget-object v1, Ldalvik/annotation/TestLevel;->COMPLETE:Ldalvik/annotation/TestLevel;

    #@6a
    aput-object v1, v0, v3

    #@6c
    sget-object v1, Ldalvik/annotation/TestLevel;->PARTIAL_COMPLETE:Ldalvik/annotation/TestLevel;

    #@6e
    aput-object v1, v0, v4

    #@70
    sget-object v1, Ldalvik/annotation/TestLevel;->PARTIAL_OK:Ldalvik/annotation/TestLevel;

    #@72
    aput-object v1, v0, v5

    #@74
    sget-object v1, Ldalvik/annotation/TestLevel;->PARTIAL:Ldalvik/annotation/TestLevel;

    #@76
    aput-object v1, v0, v6

    #@78
    sget-object v1, Ldalvik/annotation/TestLevel;->SUFFICIENT:Ldalvik/annotation/TestLevel;

    #@7a
    aput-object v1, v0, v7

    #@7c
    sget-object v1, Ldalvik/annotation/TestLevel;->ADDITIONAL:Ldalvik/annotation/TestLevel;

    #@7e
    const/4 v2, 0x5

    #@7f
    aput-object v1, v0, v2

    #@81
    sget-object v1, Ldalvik/annotation/TestLevel;->NOT_NECESSARY:Ldalvik/annotation/TestLevel;

    #@83
    const/4 v2, 0x6

    #@84
    aput-object v1, v0, v2

    #@86
    sget-object v1, Ldalvik/annotation/TestLevel;->NOT_FEASIBLE:Ldalvik/annotation/TestLevel;

    #@88
    const/4 v2, 0x7

    #@89
    aput-object v1, v0, v2

    #@8b
    sget-object v1, Ldalvik/annotation/TestLevel;->TODO:Ldalvik/annotation/TestLevel;

    #@8d
    const/16 v2, 0x8

    #@8f
    aput-object v1, v0, v2

    #@91
    sput-object v0, Ldalvik/annotation/TestLevel;->$VALUES:[Ldalvik/annotation/TestLevel;

    #@93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/annotation/TestLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    const-class v0, Ldalvik/annotation/TestLevel;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ldalvik/annotation/TestLevel;

    #@8
    return-object v0
.end method

.method public static values()[Ldalvik/annotation/TestLevel;
    .locals 1

    #@0
    .prologue
    .line 24
    sget-object v0, Ldalvik/annotation/TestLevel;->$VALUES:[Ldalvik/annotation/TestLevel;

    #@2
    return-object v0
.end method
