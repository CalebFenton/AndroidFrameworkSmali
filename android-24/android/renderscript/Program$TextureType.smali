.class public final enum Landroid/renderscript/Program$TextureType;
.super Ljava/lang/Enum;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Program$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Program$TextureType;

.field public static final enum TEXTURE_2D:Landroid/renderscript/Program$TextureType;

.field public static final enum TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 48
    new-instance v0, Landroid/renderscript/Program$TextureType;

    #@4
    const-string/jumbo v1, "TEXTURE_2D"

    #@7
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    #@a
    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    #@c
    .line 49
    new-instance v0, Landroid/renderscript/Program$TextureType;

    #@e
    const-string/jumbo v1, "TEXTURE_CUBE"

    #@11
    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    #@14
    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    #@16
    .line 47
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    #@19
    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 53
    iput p3, p0, Landroid/renderscript/Program$TextureType;->mID:I

    #@5
    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Program$TextureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Landroid/renderscript/Program$TextureType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Program$TextureType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Program$TextureType;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

    #@2
    return-object v0
.end method
