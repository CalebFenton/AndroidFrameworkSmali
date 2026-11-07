.class public final Landroid/health/connect/datatypes/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/Device$DeviceType;,
        Landroid/health/connect/datatypes/Device$Builder;
    }
.end annotation


# static fields
.field public static final whitelist DEVICE_TYPE_CHEST_STRAP:I = 0x7

.field public static final whitelist DEVICE_TYPE_FITNESS_BAND:I = 0x6

.field public static final whitelist DEVICE_TYPE_HEAD_MOUNTED:I = 0x5

.field public static final whitelist DEVICE_TYPE_PHONE:I = 0x2

.field public static final whitelist DEVICE_TYPE_RING:I = 0x4

.field public static final whitelist DEVICE_TYPE_SCALE:I = 0x3

.field public static final whitelist DEVICE_TYPE_SMART_DISPLAY:I = 0x8

.field public static final whitelist DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist DEVICE_TYPE_WATCH:I = 0x1

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mManufacturer:Ljava/lang/String;

.field private final blacklist mModel:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 165
    nop

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 170
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 171
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 172
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 173
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 174
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 175
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 166
    invoke-static/range {v1 .. v9}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/Device;->VALID_TYPES:Ljava/util/Set;

    .line 165
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Landroid/health/connect/datatypes/Device;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/Device$DeviceType;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Landroid/health/connect/datatypes/Device;->mManufacturer:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Landroid/health/connect/datatypes/Device;->mModel:Ljava/lang/String;

    .line 104
    iput p3, p0, Landroid/health/connect/datatypes/Device;->mType:I

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/health/connect/datatypes/Device-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/datatypes/Device;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 140
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/Device;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 141
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/Device;

    .line 142
    .local v1, "other":Landroid/health/connect/datatypes/Device;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 143
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 144
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    .line 142
    :goto_34
    return v0

    .line 146
    .end local v1    # "other":Landroid/health/connect/datatypes/Device;
    :cond_35
    return v2
.end method

.method public whitelist getManufacturer()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/health/connect/datatypes/Device;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getModel()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/health/connect/datatypes/Device;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/health/connect/datatypes/Device;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 156
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/Device;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
