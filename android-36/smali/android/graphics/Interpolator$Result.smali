.class public final enum Landroid/graphics/Interpolator$Result;
.super Ljava/lang/Enum;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Interpolator$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Interpolator$Result;

.field public static final enum whitelist FREEZE_END:Landroid/graphics/Interpolator$Result;

.field public static final enum whitelist FREEZE_START:Landroid/graphics/Interpolator$Result;

.field public static final enum whitelist NORMAL:Landroid/graphics/Interpolator$Result;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Interpolator$Result;
    .registers 3

    .line 114
    sget-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    sget-object v1, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    sget-object v2, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    filled-new-array {v0, v1, v2}, [Landroid/graphics/Interpolator$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 115
    new-instance v0, Landroid/graphics/Interpolator$Result;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    .line 116
    new-instance v0, Landroid/graphics/Interpolator$Result;

    const-string v1, "FREEZE_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    .line 117
    new-instance v0, Landroid/graphics/Interpolator$Result;

    const-string v1, "FREEZE_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    .line 114
    invoke-static {}, Landroid/graphics/Interpolator$Result;->$values()[Landroid/graphics/Interpolator$Result;

    move-result-object v0

    sput-object v0, Landroid/graphics/Interpolator$Result;->$VALUES:[Landroid/graphics/Interpolator$Result;

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

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Interpolator$Result;
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

    .line 114
    const-class v0, Landroid/graphics/Interpolator$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Interpolator$Result;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Interpolator$Result;
    .registers 1

    .line 114
    sget-object v0, Landroid/graphics/Interpolator$Result;->$VALUES:[Landroid/graphics/Interpolator$Result;

    invoke-virtual {v0}, [Landroid/graphics/Interpolator$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Interpolator$Result;

    return-object v0
.end method
