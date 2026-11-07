.class public final Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;
.super Ljava/lang/IllegalStateException;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect$Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreachableAfterRepeatingIndefinitelyException"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1507
    const-string v0, "Compositions ending in an indefinitely repeating effect can\'t be extended"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1508
    return-void
.end method
