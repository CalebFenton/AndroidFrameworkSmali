.class final enum Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
.super Ljava/lang/Enum;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReprocessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .registers 4

    .line 472
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 472
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v1, "PRIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v1, "YUV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v1, "REMOSAIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

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

    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
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

    .line 472
    const-class v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .registers 1

    .line 472
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-virtual {v0}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-object v0
.end method
