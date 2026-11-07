.class public final enum Landroid/icu/impl/units/UnitsConverter$Convertibility;
.super Ljava/lang/Enum;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Convertibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/units/UnitsConverter$Convertibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/units/UnitsConverter$Convertibility;

.field public static final enum blacklist CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

.field public static final enum blacklist RECIPROCAL:Landroid/icu/impl/units/UnitsConverter$Convertibility;

.field public static final enum blacklist UNCONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/units/UnitsConverter$Convertibility;
    .registers 3

    .line 280
    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    sget-object v1, Landroid/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    sget-object v2, Landroid/icu/impl/units/UnitsConverter$Convertibility;->UNCONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/units/UnitsConverter$Convertibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 281
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;

    const-string v1, "CONVERTIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Convertibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    .line 282
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;

    const-string v1, "RECIPROCAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Convertibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    .line 283
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;

    const-string v1, "UNCONVERTIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Convertibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->UNCONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    .line 280
    invoke-static {}, Landroid/icu/impl/units/UnitsConverter$Convertibility;->$values()[Landroid/icu/impl/units/UnitsConverter$Convertibility;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->$VALUES:[Landroid/icu/impl/units/UnitsConverter$Convertibility;

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

    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Convertibility;
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

    .line 280
    const-class v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/units/UnitsConverter$Convertibility;
    .registers 1

    .line 280
    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->$VALUES:[Landroid/icu/impl/units/UnitsConverter$Convertibility;

    invoke-virtual {v0}, [Landroid/icu/impl/units/UnitsConverter$Convertibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/units/UnitsConverter$Convertibility;

    return-object v0
.end method
