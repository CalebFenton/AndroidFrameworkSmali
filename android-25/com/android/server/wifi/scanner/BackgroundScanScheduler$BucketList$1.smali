.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;->this$1:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)I
    .locals 2
    .param p1, "b1"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .param p2, "b2"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@0
    .prologue
    .line 254
    iget v0, p1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@2
    iget v1, p2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "b1"    # Ljava/lang/Object;
    .param p2, "b2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 253
    check-cast p1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@2
    .end local p1    # "b1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@4
    .end local p2    # "b2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;->compare(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
