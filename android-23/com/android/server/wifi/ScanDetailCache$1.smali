.class Lcom/android/server/wifi/ScanDetailCache$1;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScanDetailCache;->trim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScanDetailCache;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanDetailCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ScanDetailCache;

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache$1;->this$0:Lcom/android/server/wifi/ScanDetailCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 94
    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    #@3
    .local v0, "a":Lcom/android/server/wifi/ScanDetail;
    move-object v1, p2

    #@4
    .line 95
    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    #@6
    .line 96
    .local v1, "b":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@d
    move-result-wide v4

    #@e
    cmp-long v2, v2, v4

    #@10
    if-lez v2, :cond_0

    #@12
    .line 97
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@1b
    move-result-wide v4

    #@1c
    cmp-long v2, v2, v4

    #@1e
    if-gez v2, :cond_1

    #@20
    .line 100
    const/4 v2, -0x1

    #@21
    return v2

    #@22
    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2d
    move-result v2

    #@2e
    return v2
.end method
