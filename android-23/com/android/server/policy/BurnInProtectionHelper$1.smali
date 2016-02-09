.class Lcom/android/server/policy/BurnInProtectionHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BurnInProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BurnInProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BurnInProtectionHelper;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BurnInProtectionHelper;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper$1;->this$0:Lcom/android/server/policy/BurnInProtectionHelper;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper$1;->this$0:Lcom/android/server/policy/BurnInProtectionHelper;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/BurnInProtectionHelper;->-wrap0(Lcom/android/server/policy/BurnInProtectionHelper;)V

    #@5
    .line 82
    return-void
.end method
