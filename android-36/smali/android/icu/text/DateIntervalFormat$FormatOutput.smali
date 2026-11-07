.class final Landroid/icu/text/DateIntervalFormat$FormatOutput;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FormatOutput"
.end annotation


# instance fields
.field blacklist firstIndex:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DateIntervalFormat-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/DateIntervalFormat$FormatOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist register(I)V
    .registers 4
    .param p1, "i"    # I

    .line 422
    iget v0, p0, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 423
    iput p1, p0, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    .line 425
    :cond_7
    return-void
.end method
