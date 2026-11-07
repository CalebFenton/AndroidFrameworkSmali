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
        "Ljava/lang/Enum<",
        "Landroid/widget/ImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist CENTER_CROP:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_END:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_START:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_XY:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist MATRIX:Landroid/widget/ImageView$ScaleType;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/widget/ImageView$ScaleType;
    .registers 8

    .line 812
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    filled-new-array/range {v0 .. v7}, [Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 818
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "MATRIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 823
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_XY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 828
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_START"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 834
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 839
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 844
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 852
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 860
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 812
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->$values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "ni"    # I
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

    .line 862
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 863
    iput p3, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    .line 864
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
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

    .line 812
    const-class v0, Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/widget/ImageView$ScaleType;
    .registers 1

    .line 812
    sget-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, [Landroid/widget/ImageView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method
