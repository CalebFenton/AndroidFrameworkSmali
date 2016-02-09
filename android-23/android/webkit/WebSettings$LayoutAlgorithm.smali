.class public final enum Landroid/webkit/WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 52
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@6
    const-string/jumbo v1, "NORMAL"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@e
    .line 53
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@10
    const-string/jumbo v1, "SINGLE_COLUMN"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    #@16
    .line 57
    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@18
    .line 58
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@1a
    const-string/jumbo v1, "NARROW_COLUMNS"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    #@20
    .line 62
    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@22
    .line 63
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@24
    const-string/jumbo v1, "TEXT_AUTOSIZING"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@2c
    .line 51
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@2f
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    const-class v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 51
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    #@2
    return-object v0
.end method
