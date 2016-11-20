.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;
.super Landroid/util/Property;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnificationSpecProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 851
    const-class v0, Landroid/view/MagnificationSpec;

    #@2
    const-string/jumbo v1, "spec"

    #@5
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 850
    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p1, "object"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@0
    .prologue
    .line 856
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 857
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    monitor-exit v0

    #@a
    return-object v1

    #@b
    .line 856
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 855
    check-cast p1, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;->get(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public set(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "object"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    .param p2, "value"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 863
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 864
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-wrap0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 862
    return-void

    #@a
    .line 863
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 862
    check-cast p1, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Landroid/view/MagnificationSpec;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;->set(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V

    #@7
    return-void
.end method
