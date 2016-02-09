.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@0
    .prologue
    .line 4905
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;->this$1:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 4907
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;->this$1:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->dispatchRotationChanged()V

    #@5
    .line 4906
    return-void
.end method
