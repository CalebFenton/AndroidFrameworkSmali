.class public final Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteTransmissionUpdateArgument;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteTransmissionUpdateArgument"
.end annotation


# instance fields
.field public blacklist callback:Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

.field public blacklist errorCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist subId:I


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;",
            "I)V"
        }
    .end annotation

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteTransmissionUpdateArgument;->errorCallback:Ljava/util/function/Consumer;

    .line 1400
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteTransmissionUpdateArgument;->callback:Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    .line 1401
    iput p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteTransmissionUpdateArgument;->subId:I

    return-void
.end method
