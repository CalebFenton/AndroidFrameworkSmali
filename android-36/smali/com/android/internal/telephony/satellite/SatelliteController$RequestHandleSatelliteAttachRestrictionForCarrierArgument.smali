.class final Lcom/android/internal/telephony/satellite/SatelliteController$RequestHandleSatelliteAttachRestrictionForCarrierArgument;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestHandleSatelliteAttachRestrictionForCarrierArgument"
.end annotation


# instance fields
.field public blacklist callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist reason:I

.field public blacklist subId:I


# direct methods
.method constructor blacklist <init>(IILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestHandleSatelliteAttachRestrictionForCarrierArgument;->subId:I

    .line 1354
    iput p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestHandleSatelliteAttachRestrictionForCarrierArgument;->reason:I

    .line 1355
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestHandleSatelliteAttachRestrictionForCarrierArgument;->callback:Ljava/util/function/Consumer;

    return-void
.end method
