.class final Lcom/android/server/wifi/scanner/WifiScannerImpl$2;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "r1"    # Landroid/net/wifi/ScanResult;
    .param p2, "r2"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 62
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    #@2
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 61
    check-cast p1, Landroid/net/wifi/ScanResult;

    #@2
    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/ScanResult;

    #@4
    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScannerImpl$2;->compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
