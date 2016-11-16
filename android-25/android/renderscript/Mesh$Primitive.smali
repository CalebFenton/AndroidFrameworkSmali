.class public final enum Landroid/renderscript/Mesh$Primitive;
.super Ljava/lang/Enum;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Mesh$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Mesh$Primitive;

.field public static final enum LINE:Landroid/renderscript/Mesh$Primitive;

.field public static final enum LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

.field public static final enum POINT:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;


# instance fields
.field mID:I


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
    .line 48
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    #@7
    const-string/jumbo v1, "POINT"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    #@d
    .line 52
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    #@f
    .line 53
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    #@11
    const-string/jumbo v1, "LINE"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    #@17
    .line 57
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    #@19
    .line 58
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    #@1b
    const-string/jumbo v1, "LINE_STRIP"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    #@21
    .line 62
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

    #@23
    .line 63
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    #@25
    const-string/jumbo v1, "TRIANGLE"

    #@28
    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 67
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    #@2d
    .line 68
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    #@2f
    const-string/jumbo v1, "TRIANGLE_STRIP"

    #@32
    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    #@35
    .line 74
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    #@37
    .line 75
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    #@39
    const-string/jumbo v1, "TRIANGLE_FAN"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 80
    const/4 v3, 0x5

    #@3e
    .line 75
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    #@41
    .line 80
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

    #@43
    .line 47
    const/4 v0, 0x6

    #@44
    new-array v0, v0, [Landroid/renderscript/Mesh$Primitive;

    #@46
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    #@48
    aput-object v1, v0, v4

    #@4a
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    #@4c
    aput-object v1, v0, v5

    #@4e
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

    #@50
    aput-object v1, v0, v6

    #@52
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    #@54
    aput-object v1, v0, v7

    #@56
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    #@58
    aput-object v1, v0, v8

    #@5a
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

    #@5c
    const/4 v2, 0x5

    #@5d
    aput-object v1, v0, v2

    #@5f
    sput-object v0, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

    #@61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 84
    iput p3, p0, Landroid/renderscript/Mesh$Primitive;->mID:I

    #@5
    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Mesh$Primitive;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Landroid/renderscript/Mesh$Primitive;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Mesh$Primitive;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Mesh$Primitive;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

    #@2
    return-object v0
.end method
