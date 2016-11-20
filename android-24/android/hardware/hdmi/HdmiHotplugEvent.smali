.class public final Landroid/hardware/hdmi/HdmiHotplugEvent;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiHotplugEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiHotplugEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConnected:Z

.field private final mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;-><init>()V

    #@5
    .line 86
    sput-object v0, Landroid/hardware/hdmi/HdmiHotplugEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "connected"    # Z

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput p1, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    #@5
    .line 43
    iput-boolean p2, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    #@7
    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    #@2
    return v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 83
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    int-to-byte v0, v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@e
    .line 81
    return-void

    #@f
    .line 83
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method
