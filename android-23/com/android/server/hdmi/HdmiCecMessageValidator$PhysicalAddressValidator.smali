.class Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
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
    name = "PhysicalAddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    #@3
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2
    .param p1, "params"    # [B

    #@0
    .prologue
    .line 299
    array-length v0, p1

    #@1
    const/4 v1, 0x2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 300
    const/4 v0, 0x4

    #@5
    return v0

    #@6
    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap0(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap1(Z)I

    #@10
    move-result v0

    #@11
    return v0
.end method
