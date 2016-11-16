.class public Lcom/android/server/usb/UsbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 59
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 71
    const/16 v0, 0x226

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 72
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    #@6
    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    #@9
    .line 70
    :cond_0
    :goto_0
    return-void

    #@a
    .line 73
    :cond_1
    const/16 v0, 0x3e8

    #@c
    if-ne p1, v0, :cond_0

    #@e
    .line 74
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    #@10
    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->bootCompleted()V

    #@13
    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Lcom/android/server/usb/UsbService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService$Lifecycle;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    #@b
    .line 66
    const-string/jumbo v0, "usb"

    #@e
    iget-object v1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@13
    .line 64
    return-void
.end method
