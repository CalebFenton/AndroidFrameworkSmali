.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Landroid/os/UEventObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    const-string/jumbo v1, "1"

    #@5
    const-string/jumbo v2, "SWITCH_STATE"

    #@8
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    #@13
    .line 695
    return-void
.end method
