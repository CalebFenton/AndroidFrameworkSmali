.class Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportPhysicalAddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    #@3
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3
    .param p1, "params"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 320
    array-length v1, p1

    #@2
    const/4 v2, 0x3

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 321
    const/4 v0, 0x4

    #@6
    return v0

    #@7
    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@9
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap0(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    const/4 v0, 0x2

    #@10
    aget-byte v0, p1, v0

    #@12
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidType(I)Z

    #@15
    move-result v0

    #@16
    :cond_1
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap1(Z)I

    #@19
    move-result v0

    #@1a
    return v0
.end method
