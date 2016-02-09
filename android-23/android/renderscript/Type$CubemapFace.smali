.class public final enum Landroid/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITVE_X:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum POSITVE_Y:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum POSITVE_Z:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x4

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x0

    #@5
    .line 60
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@7
    const-string/jumbo v1, "POSITIVE_X"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@f
    .line 61
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@11
    const-string/jumbo v1, "NEGATIVE_X"

    #@14
    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@19
    .line 62
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@1b
    const-string/jumbo v1, "POSITIVE_Y"

    #@1e
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@21
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@23
    .line 63
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@25
    const-string/jumbo v1, "NEGATIVE_Y"

    #@28
    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@2b
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@2d
    .line 64
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@2f
    const-string/jumbo v1, "POSITIVE_Z"

    #@32
    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@35
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@37
    .line 65
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@39
    const-string/jumbo v1, "NEGATIVE_Z"

    #@3c
    const/4 v2, 0x5

    #@3d
    const/4 v3, 0x5

    #@3e
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@41
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@43
    .line 66
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@45
    const-string/jumbo v1, "POSITVE_X"

    #@48
    const/4 v2, 0x6

    #@49
    invoke-direct {v0, v1, v2, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@4c
    .line 67
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    #@4e
    .line 68
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@50
    const-string/jumbo v1, "POSITVE_Y"

    #@53
    const/4 v2, 0x7

    #@54
    invoke-direct {v0, v1, v2, v5}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@57
    .line 69
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@59
    .line 70
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    #@5b
    const-string/jumbo v1, "POSITVE_Z"

    #@5e
    const/16 v2, 0x8

    #@60
    invoke-direct {v0, v1, v2, v6}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    #@63
    .line 71
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@65
    .line 59
    const/16 v0, 0x9

    #@67
    new-array v0, v0, [Landroid/renderscript/Type$CubemapFace;

    #@69
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@6b
    aput-object v1, v0, v4

    #@6d
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@6f
    aput-object v1, v0, v7

    #@71
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@73
    aput-object v1, v0, v5

    #@75
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@77
    aput-object v1, v0, v8

    #@79
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@7b
    aput-object v1, v0, v6

    #@7d
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@7f
    const/4 v2, 0x5

    #@80
    aput-object v1, v0, v2

    #@82
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    #@84
    const/4 v2, 0x6

    #@85
    aput-object v1, v0, v2

    #@87
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@89
    const/4 v2, 0x7

    #@8a
    aput-object v1, v0, v2

    #@8c
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@8e
    const/16 v2, 0x8

    #@90
    aput-object v1, v0, v2

    #@92
    sput-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

    #@94
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 75
    iput p3, p0, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@5
    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Type$CubemapFace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const-class v0, Landroid/renderscript/Type$CubemapFace;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Type$CubemapFace;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Type$CubemapFace;
    .locals 1

    #@0
    .prologue
    .line 59
    sget-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

    #@2
    return-object v0
.end method
