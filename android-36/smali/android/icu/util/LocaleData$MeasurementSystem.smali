.class public final Landroid/icu/util/LocaleData$MeasurementSystem;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeasurementSystem"
.end annotation


# static fields
.field public static final whitelist test-api SI:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final whitelist test-api UK:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final whitelist test-api US:Landroid/icu/util/LocaleData$MeasurementSystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 334
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    .line 339
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    .line 344
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
