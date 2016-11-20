.class public Landroid/app/ActivityManager$RecentTaskInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentTaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RecentTaskInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public affiliatedTaskColor:I

.field public affiliatedTaskId:I

.field public baseActivity:Landroid/content/ComponentName;

.field public baseIntent:Landroid/content/Intent;

.field public bounds:Landroid/graphics/Rect;

.field public description:Ljava/lang/CharSequence;

.field public firstActiveTime:J

.field public id:I

.field public isDockable:Z

.field public lastActiveTime:J

.field public numActivities:I

.field public origActivity:Landroid/content/ComponentName;

.field public persistentId:I

.field public realActivity:Landroid/content/ComponentName;

.field public resizeMode:I

.field public stackId:I

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1428
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$1;-><init>()V

    #@5
    .line 1427
    sput-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1240
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1438
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1437
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1361
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    #@9
    .line 1405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    #@f
    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    if-lez v0, :cond_0

    #@15
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/content/Intent;

    #@1d
    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@1f
    .line 1407
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    #@25
    .line 1408
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    #@2b
    .line 1409
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/lang/CharSequence;

    #@33
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    #@35
    .line 1410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    if-lez v0, :cond_1

    #@3b
    .line 1411
    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    #@43
    .line 1410
    :goto_1
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@45
    .line 1412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    #@4b
    .line 1413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    #@51
    .line 1414
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@54
    move-result-wide v4

    #@55
    iput-wide v4, p0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    #@57
    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5a
    move-result-wide v4

    #@5b
    iput-wide v4, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    #@5d
    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v0

    #@61
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    #@63
    .line 1417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v0

    #@67
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    #@69
    .line 1418
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@6f
    .line 1419
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@75
    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v0

    #@79
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    #@7b
    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v0

    #@7f
    if-lez v0, :cond_2

    #@81
    .line 1422
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@86
    move-result-object v0

    #@87
    check-cast v0, Landroid/graphics/Rect;

    #@89
    .line 1421
    :goto_2
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    #@8b
    .line 1423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v0

    #@8f
    if-ne v0, v2, :cond_3

    #@91
    move v0, v2

    #@92
    :goto_3
    iput-boolean v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    #@94
    .line 1424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v0

    #@98
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    #@9a
    .line 1403
    return-void

    #@9b
    :cond_0
    move-object v0, v1

    #@9c
    .line 1406
    goto :goto_0

    #@9d
    :cond_1
    move-object v0, v1

    #@9e
    .line 1411
    goto :goto_1

    #@9f
    :cond_2
    move-object v0, v1

    #@a0
    .line 1422
    goto :goto_2

    #@a1
    :cond_3
    move v0, v3

    #@a2
    .line 1423
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1366
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1367
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    #@9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1368
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1369
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1370
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@15
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1374
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    #@1a
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@1d
    .line 1375
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    #@1f
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@22
    .line 1376
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    #@24
    invoke-static {v2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@27
    .line 1378
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1379
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1380
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@30
    invoke-virtual {v2, p1, v1}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 1384
    :goto_1
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    #@35
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1385
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    #@3a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 1386
    iget-wide v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    #@3f
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@42
    .line 1387
    iget-wide v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    #@44
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@47
    .line 1388
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    #@49
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 1389
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    #@4e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 1390
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@53
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@56
    .line 1391
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@58
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@5b
    .line 1392
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    #@5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 1393
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    #@62
    if-eqz v2, :cond_2

    #@64
    .line 1394
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    .line 1395
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    #@69
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@6c
    .line 1399
    :goto_2
    iget-boolean v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    #@6e
    if-eqz v2, :cond_3

    #@70
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 1400
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    #@75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@78
    .line 1365
    return-void

    #@79
    .line 1372
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7c
    goto :goto_0

    #@7d
    .line 1382
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    goto :goto_1

    #@81
    .line 1397
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    goto :goto_2

    #@85
    :cond_3
    move v0, v1

    #@86
    .line 1399
    goto :goto_3
.end method
