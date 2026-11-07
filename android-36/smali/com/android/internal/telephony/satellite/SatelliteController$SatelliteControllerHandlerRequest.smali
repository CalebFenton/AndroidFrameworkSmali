.class public final Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteControllerHandlerRequest;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteControllerHandlerRequest"
.end annotation


# instance fields
.field public blacklist argument:Ljava/lang/Object;

.field public blacklist phone:Lcom/android/internal/telephony/Phone;

.field public blacklist result:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteControllerHandlerRequest;->argument:Ljava/lang/Object;

    .line 1322
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteControllerHandlerRequest;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method
