.class Lcom/android/internal/telephony/satellite/SatelliteController$4;
.super Landroid/database/ContentObserver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 951
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$4;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 2

    .line 954
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$4;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->initializeSatelliteModeRadios()V

    return-void
.end method
