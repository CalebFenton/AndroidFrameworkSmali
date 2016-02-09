.class Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@0
    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-get3(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 355
    return-void
.end method
