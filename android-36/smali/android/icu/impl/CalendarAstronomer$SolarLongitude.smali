.class Landroid/icu/impl/CalendarAstronomer$SolarLongitude;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CalendarAstronomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SolarLongitude"
.end annotation


# instance fields
.field greylist-max-o value:D


# direct methods
.method constructor greylist-max-o <init>(D)V
    .registers 3
    .param p1, "val"    # D

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;->value:D

    return-void
.end method
