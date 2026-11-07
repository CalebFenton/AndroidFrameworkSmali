.class public final enum Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
.super Ljava/lang/Enum;
.source "OptionalBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

.field public static final enum blacklist FALSE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

.field public static final enum blacklist TRUE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

.field public static final enum blacklist UNSET:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;


# instance fields
.field private final blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 3

    .line 13
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->UNSET:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->TRUE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->FALSE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    filled-new-array {v0, v1, v2}, [Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->UNSET:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    .line 17
    new-instance v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    const-string v1, "TRUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->TRUE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    .line 20
    new-instance v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    const-string v1, "FALSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->FALSE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    .line 13
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->$values()[Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->$VALUES:[Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
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
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->mValue:I

    .line 28
    return-void
.end method

.method public static blacklist fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 35
    if-nez p0, :cond_5

    .line 36
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->UNSET:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    return-object v0

    .line 39
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->TRUE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    goto :goto_10

    :cond_e
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->FALSE:Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    :goto_10
    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
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

    .line 13
    const-class v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 1

    .line 13
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->$VALUES:[Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .registers 2

    .line 31
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->mValue:I

    return v0
.end method
