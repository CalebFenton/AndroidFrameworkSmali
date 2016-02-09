.class Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightListenerRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method public constructor <init>(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    #@5
    .line 94
    iput-object p2, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    #@7
    .line 92
    return-void
.end method


# virtual methods
.method public postUpdate()V
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 97
    return-void
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    #@2
    invoke-interface {v0}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged()V

    #@5
    .line 102
    return-void
.end method
