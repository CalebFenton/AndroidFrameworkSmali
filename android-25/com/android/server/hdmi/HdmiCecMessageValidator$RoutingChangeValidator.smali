.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;
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
    name = "RoutingChangeValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    #@3
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3
    .param p1, "params"    # [B

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v0, 0x0

    #@2
    .line 330
    array-length v1, p1

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 331
    return v2

    #@6
    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@8
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap0(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@10
    const/4 v1, 0x2

    #@11
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap0(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    #@14
    move-result v0

    #@15
    .line 333
    :cond_1
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap1(Z)I

    #@18
    move-result v0

    #@19
    return v0
.end method
