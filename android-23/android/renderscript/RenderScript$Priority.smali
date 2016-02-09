.class public final enum Landroid/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroid/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroid/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1183
    new-instance v0, Landroid/renderscript/RenderScript$Priority;

    #@4
    const-string/jumbo v1, "LOW"

    #@7
    .line 1185
    const/16 v2, 0xf

    #@9
    .line 1183
    invoke-direct {v0, v1, v3, v2}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    #@c
    .line 1185
    sput-object v0, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    #@e
    .line 1186
    new-instance v0, Landroid/renderscript/RenderScript$Priority;

    #@10
    const-string/jumbo v1, "NORMAL"

    #@13
    const/4 v2, -0x8

    #@14
    invoke-direct {v0, v1, v4, v2}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    #@19
    .line 1182
    const/4 v0, 0x2

    #@1a
    new-array v0, v0, [Landroid/renderscript/RenderScript$Priority;

    #@1c
    sget-object v1, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    #@1e
    aput-object v1, v0, v3

    #@20
    sget-object v1, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    #@22
    aput-object v1, v0, v4

    #@24
    sput-object v0, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

    #@26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 1189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 1190
    iput p3, p0, Landroid/renderscript/RenderScript$Priority;->mID:I

    #@5
    .line 1189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1182
    const-class v0, Landroid/renderscript/RenderScript$Priority;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/RenderScript$Priority;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/RenderScript$Priority;
    .locals 1

    #@0
    .prologue
    .line 1182
    sget-object v0, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

    #@2
    return-object v0
.end method
