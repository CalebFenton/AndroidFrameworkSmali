.class Lcom/android/server/CountryDetectorService$2;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CountryDetectorService;

.field final synthetic val$listener:Landroid/location/CountryListener;


# direct methods
.method constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/CountryDetectorService;
    .param p2, "val$listener"    # Landroid/location/CountryListener;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$2;->this$0:Lcom/android/server/CountryDetectorService;

    #@2
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$2;->val$listener:Landroid/location/CountryListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$2;->this$0:Lcom/android/server/CountryDetectorService;

    #@2
    invoke-static {v0}, Lcom/android/server/CountryDetectorService;->-get0(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/CountryDetectorService$2;->val$listener:Landroid/location/CountryListener;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->setCountryListener(Landroid/location/CountryListener;)V

    #@b
    .line 197
    return-void
.end method
