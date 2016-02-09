.class final Landroid/telecom/RemoteConnection$CallbackRecord;
.super Landroid/telecom/RemoteConnection$Callback;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/telecom/RemoteConnection$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1311
    invoke-direct {p0}, Landroid/telecom/RemoteConnection$Callback;-><init>()V

    #@3
    .line 1312
    iput-object p1, p0, Landroid/telecom/RemoteConnection$CallbackRecord;->mCallback:Landroid/telecom/RemoteConnection$Callback;

    #@5
    .line 1313
    iput-object p2, p0, Landroid/telecom/RemoteConnection$CallbackRecord;->mHandler:Landroid/os/Handler;

    #@7
    .line 1311
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/telecom/RemoteConnection$Callback;
    .locals 1

    #@0
    .prologue
    .line 1317
    iget-object v0, p0, Landroid/telecom/RemoteConnection$CallbackRecord;->mCallback:Landroid/telecom/RemoteConnection$Callback;

    #@2
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 1321
    iget-object v0, p0, Landroid/telecom/RemoteConnection$CallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method
