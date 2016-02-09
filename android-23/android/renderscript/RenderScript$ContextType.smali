.class public final enum Landroid/renderscript/RenderScript$ContextType;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/RenderScript$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/RenderScript$ContextType;

.field public static final enum DEBUG:Landroid/renderscript/RenderScript$ContextType;

.field public static final enum NORMAL:Landroid/renderscript/RenderScript$ContextType;

.field public static final enum PROFILE:Landroid/renderscript/RenderScript$ContextType;


# instance fields
.field mID:I


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
    .line 166
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    #@5
    const-string/jumbo v1, "NORMAL"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    #@b
    .line 170
    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    #@d
    .line 172
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    #@f
    const-string/jumbo v1, "DEBUG"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    #@15
    .line 177
    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    #@17
    .line 179
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    #@19
    const-string/jumbo v1, "PROFILE"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    #@1f
    .line 184
    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->PROFILE:Landroid/renderscript/RenderScript$ContextType;

    #@21
    .line 165
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/renderscript/RenderScript$ContextType;

    #@24
    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->PROFILE:Landroid/renderscript/RenderScript$ContextType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/renderscript/RenderScript$ContextType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 188
    iput p3, p0, Landroid/renderscript/RenderScript$ContextType;->mID:I

    #@5
    .line 187
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$ContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    const-class v0, Landroid/renderscript/RenderScript$ContextType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/RenderScript$ContextType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/RenderScript$ContextType;
    .locals 1

    #@0
    .prologue
    .line 165
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/renderscript/RenderScript$ContextType;

    #@2
    return-object v0
.end method
