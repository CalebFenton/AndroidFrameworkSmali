.class Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HdmiControl"
.end annotation


# instance fields
.field private final mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@0
    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1257
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@5
    .line 1256
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public turnOnTv()V
    .locals 2

    #@0
    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1262
    return-void

    #@5
    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@7
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    #@9
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    #@f
    .line 1260
    return-void
.end method
