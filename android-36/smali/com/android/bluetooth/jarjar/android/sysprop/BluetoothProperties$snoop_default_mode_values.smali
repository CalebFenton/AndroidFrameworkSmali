.class public final enum Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;
.super Ljava/lang/Enum;
.source "BluetoothProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "snoop_default_mode_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

.field public static final enum blacklist DISABLED:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

.field public static final enum blacklist EMPTY:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

.field public static final enum blacklist FILTERED:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

.field public static final enum blacklist FULL:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;
    .registers 4

    .line 163
    sget-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->EMPTY:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    sget-object v1, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->DISABLED:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    sget-object v2, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->FILTERED:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    sget-object v3, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->FULL:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 164
    new-instance v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    const/4 v1, 0x0

    const-string v2, "empty"

    const-string v3, "EMPTY"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->EMPTY:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    .line 165
    new-instance v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    const/4 v1, 0x1

    const-string v2, "disabled"

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->DISABLED:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    .line 166
    new-instance v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    const/4 v1, 0x2

    const-string v2, "filtered"

    const-string v3, "FILTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->FILTERED:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    .line 167
    new-instance v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    const/4 v1, 0x3

    const-string v2, "full"

    const-string v3, "FULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->FULL:Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    .line 163
    invoke-static {}, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->$values()[Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->$VALUES:[Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->propValue:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;
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

    .line 163
    const-class v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;
    .registers 1

    .line 163
    sget-object v0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->$VALUES:[Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    invoke-virtual {v0}, [Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties$snoop_default_mode_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
