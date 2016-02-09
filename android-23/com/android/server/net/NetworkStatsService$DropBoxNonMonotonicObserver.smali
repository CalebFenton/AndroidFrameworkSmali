.class Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/net/NetworkStats$NonMonotonicObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxNonMonotonicObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/NetworkStats$NonMonotonicObserver",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    #@0
    .prologue
    .line 1320
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V
    .locals 6
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "leftIndex"    # I
    .param p3, "right"    # Landroid/net/NetworkStats;
    .param p4, "rightIndex"    # I
    .param p5, "cookie"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v5, p5

    #@1
    .line 1322
    check-cast v5, Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move v4, p4

    #@8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/String;)V

    #@b
    return-void
.end method

.method public foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/String;)V
    .locals 5
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "leftIndex"    # I
    .param p3, "right"    # Landroid/net/NetworkStats;
    .param p4, "rightIndex"    # I
    .param p5, "cookie"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 1324
    const-string/jumbo v2, "NetworkStats"

    #@5
    const-string/jumbo v3, "found non-monotonic values; saving to dropbox"

    #@8
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 1328
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "found non-monotonic "

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " values at left["

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 1329
    const-string/jumbo v3, "] - right["

    #@29
    .line 1328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 1329
    const-string/jumbo v3, "]\n"

    #@34
    .line 1328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 1330
    const-string/jumbo v2, "left="

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 1331
    const-string/jumbo v2, "right="

    #@48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    .line 1333
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@55
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->-get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    #@58
    move-result-object v2

    #@59
    .line 1334
    const-string/jumbo v3, "dropbox"

    #@5c
    .line 1333
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Landroid/os/DropBoxManager;

    #@62
    .line 1335
    .local v1, "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v2, "netstats_error"

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 1323
    return-void
.end method
