.class final Lcom/android/server/hdmi/HdmiControlService$BinderService;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@0
    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1334
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap4(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    #@a
    .line 1332
    return-void
.end method

.method public addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    #@0
    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1629
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap5(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    #@a
    .line 1627
    return-void
.end method

.method public addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1322
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap6(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@a
    .line 1320
    return-void
.end method

.method public addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@0
    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1384
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap7(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@a
    .line 1382
    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    #@0
    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1488
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap8(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    #@a
    .line 1486
    return-void
.end method

.method public canChangeSystemAudioMode()Z
    .locals 2

    #@0
    .prologue
    .line 1345
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1346
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@a
    move-result-object v0

    #@b
    .line 1347
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    #@d
    .line 1348
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 1350
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public clearTimerRecording(II[B)V
    .locals 2
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    #@0
    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1592
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;

    #@9
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1590
    return-void
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    #@9
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1220
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1634
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, "android.permission.DUMP"

    #@9
    const-string/jumbo v5, "HdmiControlService"

    #@c
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1635
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@11
    const-string/jumbo v3, "  "

    #@14
    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@17
    .line 1637
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "mHdmiControlEnabled: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@25
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->-get6(Lcom/android/server/hdmi/HdmiControlService;)Z

    #@28
    move-result v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 1638
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "mProhibitMode: "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@42
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->-get15(Lcom/android/server/hdmi/HdmiControlService;)Z

    #@45
    move-result v4

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 1639
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@53
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@56
    move-result-object v3

    #@57
    if-eqz v3, :cond_0

    #@59
    .line 1640
    const-string/jumbo v3, "mCecController: "

    #@5c
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 1641
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@62
    .line 1642
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@64
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@6b
    .line 1643
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@6e
    .line 1646
    :cond_0
    const-string/jumbo v3, "mMhlController: "

    #@71
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 1647
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@77
    .line 1648
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@79
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@80
    .line 1649
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@83
    .line 1651
    const-string/jumbo v3, "mPortInfo: "

    #@86
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 1652
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@8c
    .line 1653
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@8e
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get13(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    #@91
    move-result-object v3

    #@92
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v1

    #@96
    .local v1, "hdmiPortInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_1

    #@9c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v0

    #@a0
    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    #@a2
    .line 1654
    .local v0, "hdmiPortInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v4, "- "

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b9
    goto :goto_0

    #@ba
    .line 1656
    .end local v0    # "hdmiPortInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@bd
    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v4, "mPowerStatus: "

    #@c5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@cb
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->-get14(Lcom/android/server/hdmi/HdmiControlService;)I

    #@ce
    move-result v4

    #@cf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v3

    #@d7
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 1633
    return-void
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 11

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1199
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@7
    .line 1200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@c
    move-result-object v10

    #@d
    .line 1201
    .local v10, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v10, :cond_0

    #@f
    .line 1202
    const-string/jumbo v0, "HdmiControlService"

    #@12
    const-string/jumbo v1, "Local tv device not available"

    #@15
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 1203
    return-object v2

    #@19
    .line 1205
    :cond_0
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@1c
    move-result-object v8

    #@1d
    .line 1206
    .local v8, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 1207
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@25
    iget v1, v8, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@27
    .line 1208
    iget v2, v8, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@29
    .line 1209
    const-string/jumbo v6, ""

    #@2c
    const/4 v5, 0x0

    #@2d
    move v4, v3

    #@2e
    .line 1207
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    #@31
    return-object v0

    #@32
    .line 1211
    :cond_1
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@35
    move-result v7

    #@36
    .line 1212
    .local v7, "activePath":I
    const v0, 0xffff

    #@39
    if-eq v7, v0, :cond_3

    #@3b
    .line 1213
    invoke-virtual {v10, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3e
    move-result-object v9

    #@3f
    .line 1214
    .local v9, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v9, :cond_2

    #@41
    .end local v9    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_0
    return-object v9

    #@42
    .restart local v9    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    new-instance v9, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@44
    .end local v9    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@47
    move-result v0

    #@48
    invoke-direct {v9, v7, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    #@4b
    goto :goto_0

    #@4c
    .line 1216
    :cond_3
    return-object v2
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1419
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@a
    move-result-object v0

    #@b
    .line 1420
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    monitor-enter v2

    #@12
    .line 1421
    if-nez v0, :cond_0

    #@14
    .line 1422
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v1

    #@18
    :goto_0
    monitor-exit v2

    #@19
    .line 1421
    return-object v1

    #@1a
    .line 1423
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeCecDevicesLocked()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v1

    #@1e
    goto :goto_0

    #@1f
    .line 1420
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method public getInputDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1402
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1405
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@a
    move-result-object v1

    #@b
    .line 1406
    .local v1, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    monitor-enter v3

    #@12
    .line 1407
    if-nez v1, :cond_0

    #@14
    .line 1408
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    .line 1410
    .local v0, "cecDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@1a
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap3(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiUtils;->mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    monitor-exit v3

    #@23
    return-object v2

    #@24
    .line 1409
    .end local v0    # "cecDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeExternalInputsLocked()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-object v0

    #@28
    .restart local v0    # "cecDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    goto :goto_0

    #@29
    .line 1406
    .end local v0    # "cecDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
.end method

.method public getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1340
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 3

    #@0
    .prologue
    .line 1188
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1190
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get9(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    new-array v1, v2, [I

    #@11
    .line 1191
    .local v1, "localDevices":[I
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@13
    if-ge v0, v2, :cond_0

    #@15
    .line 1192
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@17
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get9(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/lang/Integer;

    #@21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v2

    #@25
    aput v2, v1, v0

    #@27
    .line 1191
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1194
    :cond_0
    return-object v1
.end method

.method public getSystemAudioMode()Z
    .locals 2

    #@0
    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1356
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@a
    move-result-object v0

    #@b
    .line 1357
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    #@d
    .line 1358
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 1360
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1300
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;

    #@9
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1298
    return-void
.end method

.method public portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1256
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;

    #@9
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1254
    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1311
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;

    #@9
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1309
    return-void
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1328
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap23(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@a
    .line 1326
    return-void
.end method

.method public removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@0
    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1391
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap24(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@a
    .line 1389
    return-void
.end method

.method public sendKeyEvent(IIZ)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "keyCode"    # I
    .param p3, "isPressed"    # Z

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1277
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;

    #@9
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1275
    return-void
.end method

.method public sendMhlVendorCommand(III[B)V
    .locals 7
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1608
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;

    #@9
    move-object v1, p0

    #@a
    move v2, p1

    #@b
    move v3, p2

    #@c
    move v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V

    #@11
    invoke-virtual {v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@14
    .line 1606
    return-void
.end method

.method public sendStandby(II)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1518
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    #@9
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1516
    return-void
.end method

.method public sendVendorCommand(II[BZ)V
    .locals 7
    .param p1, "deviceType"    # I
    .param p2, "targetAddress"    # I
    .param p3, "params"    # [B
    .param p4, "hasVendorId"    # Z

    #@0
    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1495
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;

    #@9
    move-object v1, p0

    #@a
    move v2, p1

    #@b
    move v3, p4

    #@c
    move v4, p2

    #@d
    move-object v5, p3

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V

    #@11
    invoke-virtual {v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@14
    .line 1493
    return-void
.end method

.method public setArcMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1463
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    #@9
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1461
    return-void
.end method

.method public setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    #@0
    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1539
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap25(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    #@a
    .line 1537
    return-void
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    #@0
    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1397
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap26(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    #@a
    .line 1395
    return-void
.end method

.method public setProhibitMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1478
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1479
    return-void

    #@e
    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setProhibitMode(Z)V

    #@13
    .line 1476
    return-void
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1366
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;

    #@9
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1364
    return-void
.end method

.method public setSystemAudioMute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1447
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;

    #@9
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1445
    return-void
.end method

.method public setSystemAudioVolume(III)V
    .locals 2
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxIndex"    # I

    #@0
    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1431
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;

    #@9
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1429
    return-void
.end method

.method public startOneTouchRecord(I[B)V
    .locals 2
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B

    #@0
    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1545
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;

    #@9
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1543
    return-void
.end method

.method public startTimerRecording(II[B)V
    .locals 2
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1576
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;

    #@9
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1574
    return-void
.end method

.method public stopOneTouchRecord(I)V
    .locals 2
    .param p1, "recorderAddress"    # I

    #@0
    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 1560
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    #@9
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@f
    .line 1558
    return-void
.end method
