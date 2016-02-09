.class Lcom/android/server/usb/UsbPortManager$2;
.super Landroid/os/UEventObserver;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;

    #@0
    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$2;->this$0:Lcom/android/server/usb/UsbPortManager;

    #@2
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    #@0
    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$2;->this$0:Lcom/android/server/usb/UsbPortManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->-wrap0(Lcom/android/server/usb/UsbPortManager;)V

    #@5
    .line 680
    return-void
.end method
