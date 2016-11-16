.class Lcom/android/internal/app/PlatLogoActivity$1$1$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$1$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/app/PlatLogoActivity$1$1;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/app/PlatLogoActivity$1$1;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$1$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$1$1;

    #@2
    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@6
    new-instance v2, Landroid/content/Intent;

    #@8
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@b
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 135
    const v3, 0x10808000

    #@11
    .line 134
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@14
    move-result-object v2

    #@15
    .line 138
    const-string/jumbo v3, "com.android.internal.category.PLATLOGO"

    #@18
    .line 134
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 132
    :goto_0
    return-void

    #@20
    .line 139
    :catch_0
    move-exception v0

    #@21
    .line 140
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "PlatLogoActivity"

    #@24
    const-string/jumbo v2, "No more eggs."

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0
.end method
