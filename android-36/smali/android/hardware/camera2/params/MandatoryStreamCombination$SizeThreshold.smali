.class final enum Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
.super Ljava/lang/Enum;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SizeThreshold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum blacklist s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .registers 7

    .line 471
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    filled-new-array/range {v0 .. v6}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 471
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "VGA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "PREVIEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "RECORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "MAXIMUM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "s720p"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "s1440p"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "FULL_RES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
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

    .line 471
    const-class v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-object v0
.end method

.method public static blacklist values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .registers 1

    .line 471
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v0}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-object v0
.end method
