.class public Landroid/icu/impl/units/UnitPreferences$UnitPreference;
.super Ljava/lang/Object;
.source "UnitPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitPreference"
.end annotation


# instance fields
.field private final blacklist geq:Ljava/math/BigDecimal;

.field private final blacklist skeleton:Ljava/lang/String;

.field private final blacklist unit:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "geq"    # Ljava/lang/String;
    .param p3, "skeleton"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->unit:Ljava/lang/String;

    .line 175
    if-nez p2, :cond_e

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    :cond_e
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_13
    iput-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->geq:Ljava/math/BigDecimal;

    .line 176
    if-nez p3, :cond_1a

    const-string v0, ""

    goto :goto_1b

    :cond_1a
    move-object v0, p3

    :goto_1b
    iput-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->skeleton:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public blacklist getGeq()Ljava/math/BigDecimal;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->geq:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public blacklist getSkeleton()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->skeleton:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUnit()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->unit:Ljava/lang/String;

    return-object v0
.end method
