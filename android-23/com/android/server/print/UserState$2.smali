.class Lcom/android/server/print/UserState$2;
.super Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "this$0_1"    # Lcom/android/server/print/UserState;
    .param p3, "$anonymous0"    # Landroid/content/Context;

    #@0
    .prologue
    .line 342
    iput-object p2, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-direct {p0, p1, p3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;-><init>(Lcom/android/server/print/UserState;Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 2

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/server/print/UserState;->-set0(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@6
    .line 344
    return-void
.end method
