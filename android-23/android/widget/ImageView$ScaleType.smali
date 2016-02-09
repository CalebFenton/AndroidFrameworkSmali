.class public final enum Landroid/widget/ImageView$ScaleType;
.super Ljava/lang/Enum;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/ImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER_CROP:Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_END:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_START:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_XY:Landroid/widget/ImageView$ScaleType;

.field public static final enum MATRIX:Landroid/widget/ImageView$ScaleType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 642
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@7
    const-string/jumbo v1, "MATRIX"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@d
    .line 647
    sput-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@f
    .line 648
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@11
    const-string/jumbo v1, "FIT_XY"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@17
    .line 652
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@19
    .line 653
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@1b
    const-string/jumbo v1, "FIT_START"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@21
    .line 657
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    #@23
    .line 658
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@25
    const-string/jumbo v1, "FIT_CENTER"

    #@28
    invoke-direct {v0, v1, v7, v7}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 663
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@2d
    .line 664
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@2f
    const-string/jumbo v1, "FIT_END"

    #@32
    invoke-direct {v0, v1, v8, v8}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@35
    .line 668
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    #@37
    .line 669
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@39
    const-string/jumbo v1, "CENTER"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 673
    const/4 v3, 0x5

    #@3e
    .line 669
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@41
    .line 673
    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@43
    .line 674
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@45
    const-string/jumbo v1, "CENTER_CROP"

    #@48
    const/4 v2, 0x6

    #@49
    .line 681
    const/4 v3, 0x6

    #@4a
    .line 674
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 681
    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@4f
    .line 682
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    #@51
    const-string/jumbo v1, "CENTER_INSIDE"

    #@54
    const/4 v2, 0x7

    #@55
    .line 689
    const/4 v3, 0x7

    #@56
    .line 682
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    #@59
    .line 689
    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@5b
    .line 641
    const/16 v0, 0x8

    #@5d
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    #@5f
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@61
    aput-object v1, v0, v4

    #@63
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@65
    aput-object v1, v0, v5

    #@67
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    #@69
    aput-object v1, v0, v6

    #@6b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@6d
    aput-object v1, v0, v7

    #@6f
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    #@71
    aput-object v1, v0, v8

    #@73
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@75
    const/4 v2, 0x5

    #@76
    aput-object v1, v0, v2

    #@78
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@7a
    const/4 v2, 0x6

    #@7b
    aput-object v1, v0, v2

    #@7d
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@7f
    const/4 v2, 0x7

    #@80
    aput-object v1, v0, v2

    #@82
    sput-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    #@84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I

    #@0
    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 692
    iput p3, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    #@5
    .line 691
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 641
    const-class v0, Landroid/widget/ImageView$ScaleType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/ImageView$ScaleType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/widget/ImageView$ScaleType;
    .locals 1

    #@0
    .prologue
    .line 641
    sget-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method
