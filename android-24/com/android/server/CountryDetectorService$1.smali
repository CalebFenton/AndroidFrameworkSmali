.class Lcom/android/server/CountryDetectorService$1;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CountryDetectorService;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/CountryDetectorService;

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$1;->this$0:Lcom/android/server/CountryDetectorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$1;->this$0:Lcom/android/server/CountryDetectorService;

    #@2
    invoke-static {v0}, Lcom/android/server/CountryDetectorService;->-get1(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/CountryDetectorService$1$1;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$1$1;-><init>(Lcom/android/server/CountryDetectorService$1;Landroid/location/Country;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 178
    return-void
.end method
