.class public final enum Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenericNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum blacklist LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum blacklist LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum blacklist SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;


# instance fields
.field greylist-max-o _fallbackTypeOf:[Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .registers 3

    .line 60
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 61
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string v1, "LONG"

    const-string v2, "SHORT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "LOCATION"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 62
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const/4 v3, 0x1

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 63
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const/4 v1, 0x2

    new-array v3, v5, [Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 60
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method

.method private varargs constructor blacklist <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .param p3, "fallbackTypeOf"    # [Ljava/lang/String;
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
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
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

    .line 60
    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .registers 1

    .line 60
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0}, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method


# virtual methods
.method public blacklist isFallbackTypeOf(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)Z
    .registers 9
    .param p1, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "typeStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 73
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 74
    const/4 v1, 0x1

    return v1

    .line 72
    .end local v5    # "t":Ljava/lang/String;
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 77
    :cond_18
    return v3
.end method
