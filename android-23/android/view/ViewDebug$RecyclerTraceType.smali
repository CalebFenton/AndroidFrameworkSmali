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
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/ViewDebug$RecyclerTraceType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;


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
    .line 351
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@7
    const-string/jumbo v1, "NEW_VIEW"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    #@f
    .line 352
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@11
    const-string/jumbo v1, "BIND_VIEW"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    #@19
    .line 353
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@1b
    const-string/jumbo v1, "RECYCLE_FROM_ACTIVE_HEAP"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@23
    .line 354
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@25
    const-string/jumbo v1, "RECYCLE_FROM_SCRAP_HEAP"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@2d
    .line 355
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@2f
    const-string/jumbo v1, "MOVE_TO_SCRAP_HEAP"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@37
    .line 356
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@39
    const-string/jumbo v1, "MOVE_FROM_ACTIVE_TO_SCRAP_HEAP"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@42
    .line 350
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/view/ViewDebug$RecyclerTraceType;

    #@45
    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/view/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->$VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$RecyclerTraceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 350
    const-class v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewDebug$RecyclerTraceType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/view/ViewDebug$RecyclerTraceType;
    .locals 1

    #@0
    .prologue
    .line 350
    sget-object v0, Landroid/view/ViewDebug$RecyclerTraceType;->$VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

    #@2
    return-object v0
.end method
