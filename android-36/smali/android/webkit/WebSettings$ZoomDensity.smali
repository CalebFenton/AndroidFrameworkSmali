.class public final enum Landroid/webkit/WebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum whitelist CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum whitelist FAR:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum whitelist MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field greylist-max-o value:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/webkit/WebSettings$ZoomDensity;
    .registers 3

    .line 112
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    filled-new-array {v0, v1, v2}, [Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 113
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const/4 v1, 0x0

    const/16 v2, 0x96

    const-string v3, "FAR"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    .line 114
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    .line 115
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const/4 v1, 0x2

    const/16 v2, 0x4b

    const-string v3, "CLOSE"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    .line 112
    invoke-static {}, Landroid/webkit/WebSettings$ZoomDensity;->$values()[Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "size"    # I
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
            "(I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    .line 118
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;
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

    .line 112
    const-class v0, Landroid/webkit/WebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$ZoomDensity;
    .registers 1

    .line 112
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getValue()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    return v0
.end method
