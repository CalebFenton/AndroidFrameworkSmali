.class Landroid/icu/impl/CalendarAstronomer$MoonAge;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CalendarAstronomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoonAge"
.end annotation


# instance fields
.field greylist-max-o value:D


# direct methods
.method constructor greylist-max-o <init>(D)V
    .registers 3
    .param p1, "val"    # D

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer$MoonAge;->value:D

    return-void
.end method
