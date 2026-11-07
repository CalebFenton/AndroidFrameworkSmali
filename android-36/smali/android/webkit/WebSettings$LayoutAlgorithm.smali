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
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum whitelist NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum whitelist SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;


# direct methods
.method private static synthetic blacklist $values()[Landroid/webkit/WebSettings$LayoutAlgorithm;
    .registers 4

    .line 63
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    filled-new-array {v0, v1, v2, v3}, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 68
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "SINGLE_COLUMN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 73
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "NARROW_COLUMNS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 75
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "TEXT_AUTOSIZING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 63
    invoke-static {}, Landroid/webkit/WebSettings$LayoutAlgorithm;->$values()[Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;
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

    .line 63
    const-class v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$LayoutAlgorithm;
    .registers 1

    .line 63
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-object v0
.end method
