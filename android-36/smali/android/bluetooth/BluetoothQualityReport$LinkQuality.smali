.class final enum Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LinkQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$LinkQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum blacklist HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum blacklist INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum blacklist LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum blacklist MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum blacklist STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum blacklist ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field private static final blacklist sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;


# direct methods
.method private static synthetic blacklist $values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .registers 6

    .line 243
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    sget-object v3, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    sget-object v4, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    sget-object v5, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    filled-new-array/range {v0 .. v5}, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 244
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "ULTRA_HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 245
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "HIGH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 246
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "STANDARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 247
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "MEDIUM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 248
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "LOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 249
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const-string v1, "INVALID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 243
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    .line 251
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

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

    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .registers 2
    .param p0, "n"    # I

    .line 254
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p0, v0, :cond_c

    .line 255
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aget-object v0, v0, p0

    return-object v0

    .line 257
    :cond_c
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
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

    .line 243
    const-class v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .registers 1

    .line 243
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method
