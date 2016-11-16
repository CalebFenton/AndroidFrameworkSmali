.class Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 422
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->pkgName:Ljava/lang/String;

    #@7
    .line 421
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 427
    const/4 v1, -0x1

    #@8
    if-ne p2, v1, :cond_1

    #@a
    .line 428
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.action.VIEW"

    #@f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 429
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "market://details?id="

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->pkgName:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@2f
    .line 430
    const/high16 v1, 0x10000000

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@34
    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@36
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get0(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .end local v0    # "market":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    #@3e
    .line 425
    return-void

    #@3f
    .line 432
    :cond_1
    const/4 v1, -0x2

    #@40
    if-ne p2, v1, :cond_0

    #@42
    .line 433
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@44
    const-string/jumbo v3, "Not now clicked for carrier app dialog."

    #@47
    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 426
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit v2

    #@4d
    throw v1
.end method
