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
.field public static final SI:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final UK:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final US:Landroid/icu/util/LocaleData$MeasurementSystem;


# instance fields
.field private systemID:I


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleData$MeasurementSystem;->equals(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 327
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>(I)V

    #@6
    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@8
    .line 333
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>(I)V

    #@e
    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@10
    .line 339
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    #@12
    const/4 v1, 0x2

    #@13
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>(I)V

    #@16
    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@18
    .line 321
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 343
    iput p1, p0, Landroid/icu/util/LocaleData$MeasurementSystem;->systemID:I

    #@5
    .line 342
    return-void
.end method

.method private equals(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 347
    iget v0, p0, Landroid/icu/util/LocaleData$MeasurementSystem;->systemID:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
