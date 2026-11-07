.class public final Landroid/icu/util/NoUnit;
.super Ljava/lang/Object;
.source "NoUnit.java"


# static fields
.field public static final blacklist BASE:Landroid/icu/util/MeasureUnit;

.field public static final blacklist PERCENT:Landroid/icu/util/MeasureUnit;

.field public static final blacklist PERMILLE:Landroid/icu/util/MeasureUnit;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/NoUnit;->BASE:Landroid/icu/util/MeasureUnit;

    .line 30
    sget-object v0, Landroid/icu/util/MeasureUnit;->PERCENT:Landroid/icu/util/MeasureUnit;

    sput-object v0, Landroid/icu/util/NoUnit;->PERCENT:Landroid/icu/util/MeasureUnit;

    .line 39
    sget-object v0, Landroid/icu/util/MeasureUnit;->PERMILLE:Landroid/icu/util/MeasureUnit;

    sput-object v0, Landroid/icu/util/NoUnit;->PERMILLE:Landroid/icu/util/MeasureUnit;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
