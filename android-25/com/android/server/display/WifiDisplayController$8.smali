.class Lcom/android/server/display/WifiDisplayController$8;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$featureState:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$featureState"    # I

    #@0
    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    iput p2, p0, Lcom/android/server/display/WifiDisplayController$8;->val$featureState:I

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
    .line 348
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$8;->val$featureState:I

    #@8
    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onFeatureStateChanged(I)V

    #@b
    .line 347
    return-void
.end method
