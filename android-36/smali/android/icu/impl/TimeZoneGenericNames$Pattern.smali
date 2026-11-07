.class public final enum Landroid/icu/impl/TimeZoneGenericNames$Pattern;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/TimeZoneGenericNames$Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum blacklist FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum blacklist REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;


# instance fields
.field greylist-max-o _defaultVal:Ljava/lang/String;

.field greylist-max-o _key:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .registers 2

    .line 85
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    filled-new-array {v0, v1}, [Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 87
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const-string v1, "regionFormat"

    const-string v2, "({0})"

    const-string v3, "REGION_FORMAT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    .line 94
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const-string v1, "fallbackFormat"

    const-string v2, "{1} ({0})"

    const-string v3, "FALLBACK_FORMAT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    .line 85
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$Pattern;
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

    .line 85
    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .registers 1

    .line 85
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    invoke-virtual {v0}, [Landroid/icu/impl/TimeZoneGenericNames$Pattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    return-object v0
.end method


# virtual methods
.method greylist-max-o defaultValue()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o key()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    return-object v0
.end method
