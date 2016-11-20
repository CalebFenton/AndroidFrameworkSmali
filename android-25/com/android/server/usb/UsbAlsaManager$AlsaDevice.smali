.class final Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlsaDevice"
.end annotation


# static fields
.field public static final TYPE_CAPTURE:I = 0x2

.field public static final TYPE_MIDI:I = 0x3

.field public static final TYPE_PLAYBACK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public mCard:I

.field public mDevice:I

.field public mType:I

.field final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p2, "type"    # I
    .param p3, "card"    # I
    .param p4, "device"    # I

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 93
    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    #@7
    .line 94
    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    #@9
    .line 95
    iput p4, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    #@b
    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    instance-of v2, p1, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 100
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 102
    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@9
    .line 103
    .local v0, "other":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    #@b
    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    #@11
    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    #@17
    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AlsaDevice: [card: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 109
    const-string/jumbo v1, ", device: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 110
    const-string/jumbo v1, ", type: "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 111
    const-string/jumbo v1, "]"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1
.end method
