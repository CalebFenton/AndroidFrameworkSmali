.class Lcom/android/server/lights/LightsService$1;
.super Lcom/android/server/lights/LightsManager;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@2
    invoke-direct {p0}, Lcom/android/server/lights/LightsManager;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getLight(I)Lcom/android/server/lights/Light;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 140
    const/16 v0, 0x8

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 141
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@6
    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    #@8
    aget-object v0, v0, p1

    #@a
    return-object v0

    #@b
    .line 143
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method
