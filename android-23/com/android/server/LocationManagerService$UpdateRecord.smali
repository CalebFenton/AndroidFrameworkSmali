.class Lcom/android/server/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRecord"
.end annotation


# instance fields
.field mLastFixBroadcast:Landroid/location/Location;

.field mLastStatusBroadcast:J

.field final mProvider:Ljava/lang/String;

.field final mReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field final mRequest:Landroid/location/LocationRequest;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/location/LocationRequest;
    .param p4, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    #@0
    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1431
    iput-object p2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@7
    .line 1432
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@9
    .line 1433
    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@b
    .line 1435
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/ArrayList;

    #@15
    .line 1436
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-nez v0, :cond_0

    #@17
    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    #@19
    .end local v0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 1438
    .restart local v0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 1440
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 1441
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1445
    :cond_1
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    #@2f
    move-result-object v1

    #@30
    .line 1446
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@32
    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@34
    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    #@37
    move-result-wide v4

    #@38
    .line 1445
    invoke-virtual {v1, v2, p2, v4, v5}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;J)V

    #@3b
    .line 1430
    return-void
.end method


# virtual methods
.method disposeLocked(Z)V
    .locals 5
    .param p1, "removeReceiver"    # Z

    #@0
    .prologue
    .line 1453
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@8
    iget-object v3, v3, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@a
    iget-object v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v3, v4}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1456
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    #@11
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/ArrayList;

    #@1d
    .line 1457
    .local v0, "globalRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v0, :cond_0

    #@1f
    .line 1458
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@22
    .line 1461
    :cond_0
    if-nez p1, :cond_1

    #@24
    return-void

    #@25
    .line 1464
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@27
    iget-object v1, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@29
    .line 1465
    .local v1, "receiverRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_2

    #@2b
    .line 1466
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@2d
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 1469
    if-eqz p1, :cond_2

    #@32
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_2

    #@38
    .line 1470
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    #@3a
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@3c
    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    #@3f
    .line 1452
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1478
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UpdateRecord["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 1479
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 1480
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@18
    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const/16 v2, 0x28

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 1481
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@25
    iget v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const/16 v2, 0x29

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 1482
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    .line 1483
    const/16 v1, 0x5d

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    .line 1484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1
.end method
