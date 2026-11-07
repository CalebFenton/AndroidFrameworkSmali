.class Lcom/android/internal/telephony/satellite/SatelliteController$5;
.super Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 975
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$5;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChanged(Lcom/android/internal/telephony/configupdate/ConfigParser;)V
    .registers 4

    .line 978
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteControllerHandlerRequest;

    .line 979
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 980
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteControllerHandlerRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    .line 981
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$5;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/satellite/SatelliteController;ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method
