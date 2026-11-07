.class public final enum Landroid/text/Layout$Alignment;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/text/Layout$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/text/Layout$Alignment;

.field public static final enum whitelist ALIGN_CENTER:Landroid/text/Layout$Alignment;

.field public static final enum greylist ALIGN_LEFT:Landroid/text/Layout$Alignment;

.field public static final enum whitelist ALIGN_NORMAL:Landroid/text/Layout$Alignment;

.field public static final enum whitelist ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

.field public static final enum greylist ALIGN_RIGHT:Landroid/text/Layout$Alignment;


# direct methods
.method private static synthetic blacklist $values()[Landroid/text/Layout$Alignment;
    .registers 5

    .line 3739
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3740
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 3741
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_OPPOSITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 3742
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 3744
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 3747
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 3739
    invoke-static {}, Landroid/text/Layout$Alignment;->$values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

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

    .line 3739
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;
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

    .line 3739
    const-class v0, Landroid/text/Layout$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public static whitelist values()[Landroid/text/Layout$Alignment;
    .registers 1

    .line 3739
    sget-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, [Landroid/text/Layout$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Alignment;

    return-object v0
.end method
