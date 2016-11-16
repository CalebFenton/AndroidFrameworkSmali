.class Lcom/android/server/location/ComprehensiveCountryDetector$3;
.super Ljava/util/TimerTask;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    #@0
    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    #@5
    .line 420
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    invoke-static {v0, v1, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->-wrap0(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    #@c
    .line 415
    return-void
.end method
