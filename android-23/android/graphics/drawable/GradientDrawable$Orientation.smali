.class public final enum Landroid/graphics/drawable/GradientDrawable$Orientation;
.super Ljava/lang/Enum;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;


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
    .line 160
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@7
    const-string/jumbo v1, "TOP_BOTTOM"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@d
    .line 161
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@f
    .line 162
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@11
    const-string/jumbo v1, "TR_BL"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@17
    .line 163
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@19
    .line 164
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@1b
    const-string/jumbo v1, "RIGHT_LEFT"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@21
    .line 165
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@23
    .line 166
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@25
    const-string/jumbo v1, "BR_TL"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 167
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@2d
    .line 168
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@2f
    const-string/jumbo v1, "BOTTOM_TOP"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@35
    .line 169
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@37
    .line 170
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@39
    const-string/jumbo v1, "BL_TR"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@40
    .line 171
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@42
    .line 172
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@44
    const-string/jumbo v1, "LEFT_RIGHT"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 173
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@4d
    .line 174
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@4f
    const-string/jumbo v1, "TL_BR"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    #@56
    .line 175
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@58
    .line 159
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@5c
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    const-class v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    #@0
    .prologue
    .line 159
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@2
    return-object v0
.end method
