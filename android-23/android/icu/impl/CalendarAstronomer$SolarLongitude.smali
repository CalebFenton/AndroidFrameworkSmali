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
.field value:D


# direct methods
.method constructor <init>(D)V
    .locals 1
    .param p1, "val"    # D

    #@0
    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;->value:D

    #@5
    return-void
.end method
