.class final Landroid/os/Handler$MessengerImpl;
.super Landroid/os/IMessenger$Stub;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessengerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 718
    iput-object p1, p0, Landroid/os/Handler$MessengerImpl;->this$0:Landroid/os/Handler;

    #@2
    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Landroid/os/Handler$MessengerImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;)V

    #@3
    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    iput v0, p1, Landroid/os/Message;->sendingUid:I

    #@6
    .line 721
    iget-object v0, p0, Landroid/os/Handler$MessengerImpl;->this$0:Landroid/os/Handler;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@b
    .line 719
    return-void
.end method
