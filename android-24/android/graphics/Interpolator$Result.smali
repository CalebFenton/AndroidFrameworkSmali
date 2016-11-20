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
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Interpolator$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Interpolator$Result;

.field public static final enum FREEZE_END:Landroid/graphics/Interpolator$Result;

.field public static final enum FREEZE_START:Landroid/graphics/Interpolator$Result;

.field public static final enum NORMAL:Landroid/graphics/Interpolator$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 112
    new-instance v0, Landroid/graphics/Interpolator$Result;

    #@5
    const-string/jumbo v1, "NORMAL"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    #@d
    .line 113
    new-instance v0, Landroid/graphics/Interpolator$Result;

    #@f
    const-string/jumbo v1, "FREEZE_START"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    #@17
    .line 114
    new-instance v0, Landroid/graphics/Interpolator$Result;

    #@19
    const-string/jumbo v1, "FREEZE_END"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    #@21
    .line 111
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/graphics/Interpolator$Result;

    #@24
    sget-object v1, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/graphics/Interpolator$Result;->$VALUES:[Landroid/graphics/Interpolator$Result;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Interpolator$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    const-class v0, Landroid/graphics/Interpolator$Result;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Interpolator$Result;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Interpolator$Result;
    .locals 1

    #@0
    .prologue
    .line 111
    sget-object v0, Landroid/graphics/Interpolator$Result;->$VALUES:[Landroid/graphics/Interpolator$Result;

    #@2
    return-object v0
.end method
