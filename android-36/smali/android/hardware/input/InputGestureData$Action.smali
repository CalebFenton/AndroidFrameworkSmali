.class public final Landroid/hardware/input/InputGestureData$Action;
.super Ljava/lang/Record;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "keyGestureType",
        "appLaunchData"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Landroid/hardware/input/AppLaunchData;
    }
.end annotation


# instance fields
.field private final blacklist appLaunchData:Landroid/hardware/input/AppLaunchData;

.field private final blacklist keyGestureType:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/input/InputGestureData$Action;

    if-eqz v0, :cond_18

    check-cast p1, Landroid/hardware/input/InputGestureData$Action;

    iget v0, p0, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    iget v1, p1, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    iget-object p1, p1, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget v0, p0, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetappLaunchData(Landroid/hardware/input/InputGestureData$Action;)Landroid/hardware/input/AppLaunchData;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyGestureType(Landroid/hardware/input/InputGestureData$Action;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    return p0
.end method

.method public constructor blacklist <init>(ILandroid/hardware/input/AppLaunchData;)V
    .registers 3
    .param p1, "keyGestureType"    # I
    .param p2, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyGestureType",
            "appLaunchData"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    iput-object p2, p0, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public blacklist appLaunchData()Landroid/hardware/input/AppLaunchData;
    .registers 2

    .line 309
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 309
    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$Action;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 309
    iget v0, p0, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Action;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    invoke-static {v0, v1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord1;->m(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist keyGestureType()I
    .registers 2

    .line 309
    iget v0, p0, Landroid/hardware/input/InputGestureData$Action;->keyGestureType:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 309
    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Action;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/hardware/input/InputGestureData$Action;

    const-string v2, "keyGestureType;appLaunchData"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
