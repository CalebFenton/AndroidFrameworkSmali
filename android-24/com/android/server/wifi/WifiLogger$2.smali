.class Lcom/android/server/wifi/WifiLogger$2;
.super Ljava/lang/Object;
.source "WifiLogger.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiLogger;->fetchPacketFates()Ljava/util/ArrayList;
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
        "Lcom/android/server/wifi/WifiNative$FateReport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiLogger;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiLogger;

    #@0
    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger$2;->this$0:Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wifi/WifiNative$FateReport;Lcom/android/server/wifi/WifiNative$FateReport;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/wifi/WifiNative$FateReport;
    .param p2, "rhs"    # Lcom/android/server/wifi/WifiNative$FateReport;

    #@0
    .prologue
    .line 633
    iget-wide v0, p1, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    #@2
    iget-wide v2, p2, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 632
    check-cast p1, Lcom/android/server/wifi/WifiNative$FateReport;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/wifi/WifiNative$FateReport;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiLogger$2;->compare(Lcom/android/server/wifi/WifiNative$FateReport;Lcom/android/server/wifi/WifiNative$FateReport;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
