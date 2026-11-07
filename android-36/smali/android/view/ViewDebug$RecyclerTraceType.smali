.class public final enum Landroid/view/ViewDebug$RecyclerTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecyclerTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/ViewDebug$RecyclerTraceType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum whitelist BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum whitelist MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum whitelist MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum whitelist NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum whitelist RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum whitelist RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/ViewDebug$RecyclerTraceType;
    .registers 6

    .line 461
    sget-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    sget-object v2, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    sget-object v3, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    sget-object v4, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    sget-object v5, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    filled-new-array/range {v0 .. v5}, [Landroid/view/ViewDebug$RecyclerTraceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 463
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "NEW_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 464
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "BIND_VIEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 465
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "RECYCLE_FROM_ACTIVE_HEAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 466
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "RECYCLE_FROM_SCRAP_HEAP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 467
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_TO_SCRAP_HEAP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 468
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_FROM_ACTIVE_TO_SCRAP_HEAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 461
    invoke-static {}, Landroid/view/ViewDebug$RecyclerTraceType;->$values()[Landroid/view/ViewDebug$RecyclerTraceType;

    move-result-object v0

    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->$VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

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

    .line 462
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$RecyclerTraceType;
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

    .line 461
    const-class v0, Landroid/view/ViewDebug$RecyclerTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$RecyclerTraceType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/view/ViewDebug$RecyclerTraceType;
    .registers 1

    .line 461
    sget-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->$VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

    invoke-virtual {v0}, [Landroid/view/ViewDebug$RecyclerTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewDebug$RecyclerTraceType;

    return-object v0
.end method
