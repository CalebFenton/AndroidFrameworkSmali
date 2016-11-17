.class Lcom/android/server/power/Notifier$4;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$wakefulness:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;
    .param p2, "val$wakefulness"    # I

    #@0
    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    #@2
    iput p2, p0, Lcom/android/server/power/Notifier$4;->val$wakefulness:I

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
    .line 306
    iget-object v0, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    #@2
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get0(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/power/Notifier$4;->val$wakefulness:I

    #@8
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->onWakefulnessChanged(I)V

    #@b
    .line 305
    return-void
.end method
