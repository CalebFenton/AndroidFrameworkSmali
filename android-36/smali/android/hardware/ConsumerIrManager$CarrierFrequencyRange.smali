.class public final Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
.super Ljava/lang/Object;
.source "ConsumerIrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ConsumerIrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CarrierFrequencyRange"
.end annotation


# instance fields
.field private final greylist-max-o mMaxFrequency:I

.field private final greylist-max-o mMinFrequency:I


# direct methods
.method public constructor whitelist <init>(Landroid/hardware/ConsumerIrManager;II)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/ConsumerIrManager;
    .param p2, "min"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMinFrequency:I

    .line 106
    iput p3, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist getMaxFrequency()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    return v0
.end method

.method public whitelist getMinFrequency()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMinFrequency:I

    return v0
.end method
