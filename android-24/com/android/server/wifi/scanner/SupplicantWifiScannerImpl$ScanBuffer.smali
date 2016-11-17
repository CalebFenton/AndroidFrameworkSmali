.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanBuffer"
.end annotation


# instance fields
.field private final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 834
    iput p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    #@5
    .line 835
    new-instance v0, Ljava/util/ArrayDeque;

    #@7
    iget v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@e
    .line 833
    return-void
.end method


# virtual methods
.method public add(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->isFull()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 852
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    #@b
    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    #@10
    .line 850
    return-void
.end method

.method public capacity()I
    .locals 1

    #@0
    .prologue
    .line 843
    iget v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    #@2
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    #@5
    .line 857
    return-void
.end method

.method public get()[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ScanData;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Landroid/net/wifi/WifiScanner$ScanData;

    #@10
    return-object v0
.end method

.method public isFull()Z
    .locals 2

    #@0
    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
