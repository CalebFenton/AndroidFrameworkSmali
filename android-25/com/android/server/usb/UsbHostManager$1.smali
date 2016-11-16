.class Lcom/android/server/usb/UsbHostManager$1;
.super Ljava/lang/Object;
.source "UsbHostManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbHostManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbHostManager;

    #@0
    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

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
    .line 256
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->-wrap0(Lcom/android/server/usb/UsbHostManager;)V

    #@5
    .line 255
    return-void
.end method
