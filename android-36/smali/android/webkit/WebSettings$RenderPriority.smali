.class public final enum Landroid/webkit/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum whitelist HIGH:Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum whitelist LOW:Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum whitelist NORMAL:Landroid/webkit/WebSettings$RenderPriority;


# direct methods
.method private static synthetic blacklist $values()[Landroid/webkit/WebSettings$RenderPriority;
    .registers 3

    .line 210
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    filled-new-array {v0, v1, v2}, [Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 211
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    .line 212
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    const-string v1, "HIGH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 213
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    const-string v1, "LOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    .line 210
    invoke-static {}, Landroid/webkit/WebSettings$RenderPriority;->$values()[Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->$VALUES:[Landroid/webkit/WebSettings$RenderPriority;

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

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;
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

    .line 210
    const-class v0, Landroid/webkit/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$RenderPriority;
    .registers 1

    .line 210
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->$VALUES:[Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method
