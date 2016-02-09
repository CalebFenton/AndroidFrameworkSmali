.class public final enum Landroid/view/ViewDebug$HierarchyTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HierarchyTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/ViewDebug$HierarchyTraceType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum BUILD_CACHE:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum DRAW:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE_CHILD:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE_CHILD_IN_PARENT:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum ON_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum ON_MEASURE:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum REQUEST_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;


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
    .line 336
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@7
    const-string/jumbo v1, "INVALIDATE"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->INVALIDATE:Landroid/view/ViewDebug$HierarchyTraceType;

    #@f
    .line 337
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@11
    const-string/jumbo v1, "INVALIDATE_CHILD"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD:Landroid/view/ViewDebug$HierarchyTraceType;

    #@19
    .line 338
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@1b
    const-string/jumbo v1, "INVALIDATE_CHILD_IN_PARENT"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD_IN_PARENT:Landroid/view/ViewDebug$HierarchyTraceType;

    #@23
    .line 339
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@25
    const-string/jumbo v1, "REQUEST_LAYOUT"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->REQUEST_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    #@2d
    .line 340
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@2f
    const-string/jumbo v1, "ON_LAYOUT"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->ON_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    #@37
    .line 341
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@39
    const-string/jumbo v1, "ON_MEASURE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->ON_MEASURE:Landroid/view/ViewDebug$HierarchyTraceType;

    #@42
    .line 342
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@44
    const-string/jumbo v1, "DRAW"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->DRAW:Landroid/view/ViewDebug$HierarchyTraceType;

    #@4d
    .line 343
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@4f
    const-string/jumbo v1, "BUILD_CACHE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->BUILD_CACHE:Landroid/view/ViewDebug$HierarchyTraceType;

    #@58
    .line 335
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Landroid/view/ViewDebug$HierarchyTraceType;

    #@5c
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->INVALIDATE:Landroid/view/ViewDebug$HierarchyTraceType;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD:Landroid/view/ViewDebug$HierarchyTraceType;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD_IN_PARENT:Landroid/view/ViewDebug$HierarchyTraceType;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->REQUEST_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->ON_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->ON_MEASURE:Landroid/view/ViewDebug$HierarchyTraceType;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->DRAW:Landroid/view/ViewDebug$HierarchyTraceType;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Landroid/view/ViewDebug$HierarchyTraceType;->BUILD_CACHE:Landroid/view/ViewDebug$HierarchyTraceType;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->$VALUES:[Landroid/view/ViewDebug$HierarchyTraceType;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$HierarchyTraceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    const-class v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewDebug$HierarchyTraceType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/view/ViewDebug$HierarchyTraceType;
    .locals 1

    #@0
    .prologue
    .line 335
    sget-object v0, Landroid/view/ViewDebug$HierarchyTraceType;->$VALUES:[Landroid/view/ViewDebug$HierarchyTraceType;

    #@2
    return-object v0
.end method
