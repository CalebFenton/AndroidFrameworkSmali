.class public final enum Landroid/renderscript/Allocation$MipmapControl;
.super Ljava/lang/Enum;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MipmapControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Allocation$MipmapControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;


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
    .line 220
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    #@5
    const-string/jumbo v1, "MIPMAP_NONE"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    #@b
    .line 224
    sput-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@d
    .line 226
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    #@f
    const-string/jumbo v1, "MIPMAP_FULL"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    #@15
    .line 231
    sput-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@17
    .line 233
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    #@19
    const-string/jumbo v1, "MIPMAP_ON_SYNC_TO_TEXTURE"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    #@1f
    .line 238
    sput-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    #@21
    .line 219
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/renderscript/Allocation$MipmapControl;

    #@24
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/renderscript/Allocation$MipmapControl;->$VALUES:[Landroid/renderscript/Allocation$MipmapControl;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 242
    iput p3, p0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@5
    .line 241
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Allocation$MipmapControl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    const-class v0, Landroid/renderscript/Allocation$MipmapControl;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Allocation$MipmapControl;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    #@0
    .prologue
    .line 219
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->$VALUES:[Landroid/renderscript/Allocation$MipmapControl;

    #@2
    return-object v0
.end method
