.class final enum Landroid/bluetooth/BluetoothQualityReport$AirMode;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AirMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$AirMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field private static final blacklist sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;


# direct methods
.method private static synthetic blacklist $values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .registers 5

    .line 261
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;->aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$AirMode;->CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    sget-object v3, Landroid/bluetooth/BluetoothQualityReport$AirMode;->transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    sget-object v4, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 262
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v1, "uLaw"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 263
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v1, "aLaw"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 264
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v1, "CVSD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 265
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v1, "transparent_msbc"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 266
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v1, "INVALID"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 261
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 268
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

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

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .registers 2
    .param p0, "n"    # I

    .line 271
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p0, v0, :cond_c

    .line 272
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aget-object v0, v0, p0

    return-object v0

    .line 274
    :cond_c
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$AirMode;
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

    .line 261
    const-class v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .registers 1

    .line 261
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$AirMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method
