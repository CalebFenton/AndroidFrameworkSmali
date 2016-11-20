.class public Lcom/android/server/hdmi/SelectRequestBuffer;
.super Ljava/lang/Object;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/SelectRequestBuffer$1;,
        Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;,
        Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;,
        Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
    }
.end annotation


# static fields
.field public static final EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private static final TAG:Ljava/lang/String; = "SelectRequestBuffer"


# instance fields
.field private mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newDeviceSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;
    .locals 2
    .param p0, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 115
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;)V

    #@6
    return-object v0
.end method

.method public static newPortSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;
    .locals 2
    .param p0, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 120
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;)V

    #@6
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    #@3
    .line 138
    return-void
.end method

.method public process()V
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 133
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    #@6
    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->process()V

    #@9
    .line 134
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    #@c
    .line 131
    :cond_0
    return-void
.end method

.method public set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    #@2
    .line 127
    return-void
.end method
