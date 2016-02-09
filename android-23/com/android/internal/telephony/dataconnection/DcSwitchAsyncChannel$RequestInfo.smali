.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
.super Ljava/lang/Object;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


# instance fields
.field executed:Z

.field final priority:I

.field final request:Landroid/net/NetworkRequest;

.field private final requestLog:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I
    .param p3, "l"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@5
    .line 74
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    #@7
    .line 75
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->requestLog:Landroid/util/LocalLog;

    #@9
    .line 76
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@c
    .line 72
    return-void
.end method


# virtual methods
.method public getLog()Landroid/util/LocalLog;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->requestLog:Landroid/util/LocalLog;

    #@2
    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->requestLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[ request="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", executed="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 90
    const-string/jumbo v1, ", priority="

    #@22
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 90
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    #@28
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 90
    const-string/jumbo v1, "]"

    #@2f
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
