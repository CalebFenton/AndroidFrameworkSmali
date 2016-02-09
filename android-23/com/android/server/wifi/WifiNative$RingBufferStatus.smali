.class public Lcom/android/server/wifi/WifiNative$RingBufferStatus;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingBufferStatus"
.end annotation


# instance fields
.field flag:I

.field name:Ljava/lang/String;

.field readBytes:I

.field ringBufferByteSize:I

.field ringBufferId:I

.field verboseLevel:I

.field writtenBytes:I

.field writtenRecords:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "name: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " flag: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " ringBufferId: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferId:I

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 2159
    const-string/jumbo v1, " ringBufferByteSize: "

    #@2f
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 2159
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferByteSize:I

    #@35
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 2159
    const-string/jumbo v1, " verboseLevel: "

    #@3c
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 2159
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->verboseLevel:I

    #@42
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 2160
    const-string/jumbo v1, " writtenBytes: "

    #@49
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 2160
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->writtenBytes:I

    #@4f
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 2160
    const-string/jumbo v1, " readBytes: "

    #@56
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 2160
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->readBytes:I

    #@5c
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 2161
    const-string/jumbo v1, " writtenRecords: "

    #@63
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 2161
    iget v1, p0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->writtenRecords:I

    #@69
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    return-object v0
.end method
