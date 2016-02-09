.class Lcom/android/internal/telephony/uicc/UiccCard$2;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    #@0
    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 325
    const/4 v1, -0x1

    #@8
    if-ne p2, v1, :cond_0

    #@a
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@c
    const-string/jumbo v3, "Reboot due to SIM swap"

    #@f
    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    #@12
    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@14
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get0(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    .line 328
    const-string/jumbo v3, "power"

    #@1b
    .line 327
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/os/PowerManager;

    #@21
    .line 329
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "SIM is added."

    #@24
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2

    #@28
    .line 323
    return-void

    #@29
    .line 324
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method
