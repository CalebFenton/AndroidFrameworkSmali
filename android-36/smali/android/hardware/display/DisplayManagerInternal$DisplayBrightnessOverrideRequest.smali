.class public Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayBrightnessOverrideRequest"
.end annotation


# instance fields
.field public blacklist brightness:F

.field public blacklist tag:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->brightness:F

    return-void
.end method
