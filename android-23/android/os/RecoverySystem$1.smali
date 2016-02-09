.class final Landroid/os/RecoverySystem$1;
.super Landroid/content/BroadcastReceiver;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "val$condition"    # Landroid/os/ConditionVariable;

    #@0
    .prologue
    .line 415
    iput-object p1, p0, Landroid/os/RecoverySystem$1;->val$condition:Landroid/os/ConditionVariable;

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
    .line 418
    iget-object v0, p0, Landroid/os/RecoverySystem$1;->val$condition:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@5
    .line 417
    return-void
.end method
