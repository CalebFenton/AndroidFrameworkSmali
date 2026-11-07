.class public final enum Landroid/webkit/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$TextSize;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist LARGER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist LARGEST:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist NORMAL:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist SMALLER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist SMALLEST:Landroid/webkit/WebSettings$TextSize;


# instance fields
.field greylist value:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/webkit/WebSettings$TextSize;
    .registers 5

    .line 90
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    sget-object v3, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    sget-object v4, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 92
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const/4 v1, 0x0

    const/16 v2, 0x32

    const-string v3, "SMALLEST"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    .line 93
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const/4 v1, 0x1

    const/16 v2, 0x4b

    const-string v3, "SMALLER"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    .line 94
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const/4 v1, 0x2

    const/16 v2, 0x64

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 95
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const/4 v1, 0x3

    const/16 v2, 0x96

    const-string v3, "LARGER"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 96
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const/4 v1, 0x4

    const/16 v2, 0xc8

    const-string v3, "LARGEST"

    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    .line 90
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->$values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

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

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Landroid/webkit/WebSettings$TextSize;->value:I

    .line 99
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;
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

    .line 90
    const-class v0, Landroid/webkit/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$TextSize;
    .registers 1

    .line 90
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method
