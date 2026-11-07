.class public final enum Landroid/graphics/Canvas$EdgeType;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Canvas$EdgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Canvas$EdgeType;

.field public static final enum whitelist AA:Landroid/graphics/Canvas$EdgeType;

.field public static final enum whitelist BW:Landroid/graphics/Canvas$EdgeType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Canvas$EdgeType;
    .registers 2

    .line 1189
    sget-object v0, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    sget-object v1, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    filled-new-array {v0, v1}, [Landroid/graphics/Canvas$EdgeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1194
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    const-string v1, "BW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    .line 1199
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    const-string v1, "AA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    .line 1189
    invoke-static {}, Landroid/graphics/Canvas$EdgeType;->$values()[Landroid/graphics/Canvas$EdgeType;

    move-result-object v0

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

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

    .line 1189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Canvas$EdgeType;
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

    .line 1189
    const-class v0, Landroid/graphics/Canvas$EdgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas$EdgeType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Canvas$EdgeType;
    .registers 1

    .line 1189
    sget-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    invoke-virtual {v0}, [Landroid/graphics/Canvas$EdgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Canvas$EdgeType;

    return-object v0
.end method
