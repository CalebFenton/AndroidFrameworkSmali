.class final Lcom/android/internal/telephony/satellite/SatelliteController$ProvisionSatelliteServiceArgument;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProvisionSatelliteServiceArgument"
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

.field public blacklist provisionData:[B

.field public blacklist subId:I

.field public blacklist token:Ljava/lang/String;
