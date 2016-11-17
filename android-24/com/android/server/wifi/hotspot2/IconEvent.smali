.class public Lcom/android/server/wifi/hotspot2/IconEvent;
.super Ljava/lang/Object;
.source "IconEvent.java"


# instance fields
.field private final mBSSID:J

.field private final mFileName:Ljava/lang/String;

.field private final mSize:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "size"    # I

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 9
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mBSSID:J

    #@5
    .line 10
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mFileName:Ljava/lang/String;

    #@7
    .line 11
    iput p4, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mSize:I

    #@9
    .line 8
    return-void
.end method


# virtual methods
.method public getBSSID()J
    .locals 2

    #@0
    .prologue
    .line 15
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mBSSID:J

    #@2
    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 23
    iget v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "IconEvent: BSSID="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 29
    const-string/jumbo v1, "%012x"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mBSSID:J

    #@14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4

    #@1b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 30
    const-string/jumbo v1, ", fileName=\'"

    #@26
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 30
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mFileName:Ljava/lang/String;

    #@2c
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 30
    const/16 v1, 0x27

    #@32
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 31
    const-string/jumbo v1, ", size="

    #@39
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 31
    iget v1, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mSize:I

    #@3f
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method
