.class final Landroid/os/CancellationSignal$Transport;
.super Landroid/os/ICancellationSignal$Stub;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field final mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    #@3
    .line 202
    new-instance v0, Landroid/os/CancellationSignal;

    #@5
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    #@8
    iput-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@a
    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CancellationSignal$Transport;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/os/CancellationSignal$Transport;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@2
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    #@5
    .line 205
    return-void
.end method
