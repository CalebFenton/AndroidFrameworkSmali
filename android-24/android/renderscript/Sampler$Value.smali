.class public final enum Landroid/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroid/renderscript/Sampler$Value;


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
    .line 31
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@7
    const-string/jumbo v1, "NEAREST"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@f
    .line 32
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@11
    const-string/jumbo v1, "LINEAR"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@19
    .line 33
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@1b
    const-string/jumbo v1, "LINEAR_MIP_LINEAR"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@21
    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@23
    .line 34
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@25
    const-string/jumbo v1, "LINEAR_MIP_NEAREST"

    #@28
    const/4 v2, 0x5

    #@29
    invoke-direct {v0, v1, v7, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@2c
    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    #@2e
    .line 35
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@30
    const-string/jumbo v1, "WRAP"

    #@33
    invoke-direct {v0, v1, v8, v7}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@36
    sput-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@38
    .line 36
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@3a
    const-string/jumbo v1, "CLAMP"

    #@3d
    const/4 v2, 0x5

    #@3e
    invoke-direct {v0, v1, v2, v8}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@41
    sput-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@43
    .line 37
    new-instance v0, Landroid/renderscript/Sampler$Value;

    #@45
    const-string/jumbo v1, "MIRRORED_REPEAT"

    #@48
    const/4 v2, 0x6

    #@49
    const/4 v3, 0x6

    #@4a
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    #@4d
    sput-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@4f
    .line 30
    const/4 v0, 0x7

    #@50
    new-array v0, v0, [Landroid/renderscript/Sampler$Value;

    #@52
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@54
    aput-object v1, v0, v4

    #@56
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@58
    aput-object v1, v0, v5

    #@5a
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@5c
    aput-object v1, v0, v6

    #@5e
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    #@60
    aput-object v1, v0, v7

    #@62
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@64
    aput-object v1, v0, v8

    #@66
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@68
    const/4 v2, 0x5

    #@69
    aput-object v1, v0, v2

    #@6b
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@6d
    const/4 v2, 0x6

    #@6e
    aput-object v1, v0, v2

    #@70
    sput-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    #@72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 41
    iput p3, p0, Landroid/renderscript/Sampler$Value;->mID:I

    #@5
    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Sampler$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    const-class v0, Landroid/renderscript/Sampler$Value;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Sampler$Value;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method
