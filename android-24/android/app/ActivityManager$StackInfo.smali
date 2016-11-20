.class public Landroid/app/ActivityManager$StackInfo;
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
    name = "StackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$StackInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public displayId:I

.field public position:I

.field public stackId:I

.field public taskBounds:[Landroid/graphics/Rect;

.field public taskIds:[I

.field public taskNames:[Ljava/lang/String;

.field public taskUserIds:[I

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2446
    new-instance v0, Landroid/app/ActivityManager$StackInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$StackInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 2370
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2372
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@a
    .line 2457
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2372
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@a
    .line 2461
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 2460
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$StackInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$StackInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 2386
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v3

    #@5
    iput v3, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@7
    .line 2421
    new-instance v3, Landroid/graphics/Rect;

    #@9
    .line 2422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v4

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v5

    #@11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v6

    #@15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v7

    #@19
    .line 2421
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1c
    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@1e
    .line 2423
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@24
    .line 2424
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@2a
    .line 2425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    .line 2426
    .local v0, "boundsCount":I
    if-lez v0, :cond_0

    #@30
    .line 2427
    new-array v3, v0, [Landroid/graphics/Rect;

    #@32
    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@34
    .line 2428
    const/4 v1, 0x0

    #@35
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@37
    .line 2429
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@39
    new-instance v4, Landroid/graphics/Rect;

    #@3b
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@3e
    aput-object v4, v3, v1

    #@40
    .line 2430
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@42
    aget-object v3, v3, v1

    #@44
    .line 2431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v4

    #@48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v5

    #@4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v6

    #@50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v7

    #@54
    .line 2430
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@57
    .line 2428
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 2434
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    #@5b
    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@5d
    .line 2436
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@60
    move-result-object v3

    #@61
    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    #@63
    .line 2437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v3

    #@67
    iput v3, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@69
    .line 2438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v3

    #@6d
    iput v3, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    #@6f
    .line 2439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v3

    #@73
    if-lez v3, :cond_2

    #@75
    const/4 v2, 0x1

    #@76
    :cond_2
    iput-boolean v2, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    #@78
    .line 2440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v2

    #@7c
    iput v2, p0, Landroid/app/ActivityManager$StackInfo;->position:I

    #@7e
    .line 2441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v2

    #@82
    if-lez v2, :cond_3

    #@84
    .line 2442
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@87
    move-result-object v2

    #@88
    iput-object v2, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    #@8a
    .line 2419
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2490
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$StackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x100

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 2466
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v2, "Stack id="

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    .line 2467
    const-string/jumbo v2, " bounds="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 2468
    const-string/jumbo v2, " displayId="

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 2469
    const-string/jumbo v2, " userId="

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    .line 2470
    const-string/jumbo v2, "\n"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 2471
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, "  "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object p1

    #@54
    .line 2472
    const/4 v0, 0x0

    #@55
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@57
    array-length v2, v2

    #@58
    if-ge v0, v2, :cond_2

    #@5a
    .line 2473
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    const-string/jumbo v2, "taskId="

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@65
    aget v2, v2, v0

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 2474
    const-string/jumbo v2, ": "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@72
    aget-object v2, v2, v0

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 2475
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@79
    if-eqz v2, :cond_0

    #@7b
    .line 2476
    const-string/jumbo v2, " bounds="

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@83
    aget-object v2, v2, v0

    #@85
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 2478
    :cond_0
    const-string/jumbo v2, " userId="

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    #@95
    aget v3, v3, v0

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    .line 2479
    const-string/jumbo v2, " visible="

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    iget-boolean v3, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    #@a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a6
    .line 2480
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    #@a8
    if-eqz v2, :cond_1

    #@aa
    .line 2481
    const-string/jumbo v2, " topActivity="

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    .line 2483
    :cond_1
    const-string/jumbo v2, "\n"

    #@b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    .line 2472
    add-int/lit8 v0, v0, 0x1

    #@be
    goto :goto_0

    #@bf
    .line 2485
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2391
    iget v3, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 2392
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@9
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 2393
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@10
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 2394
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@17
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 2395
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@1e
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@20
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 2396
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@25
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@28
    .line 2397
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@2a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2d
    .line 2398
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@2f
    if-nez v3, :cond_0

    #@31
    move v0, v2

    #@32
    .line 2399
    .local v0, "boundsCount":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 2400
    const/4 v1, 0x0

    #@36
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@38
    .line 2401
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@3a
    aget-object v3, v3, v1

    #@3c
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@3e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 2402
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@43
    aget-object v3, v3, v1

    #@45
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@47
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 2403
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@4c
    aget-object v3, v3, v1

    #@4e
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@50
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 2404
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@55
    aget-object v3, v3, v1

    #@57
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@59
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 2400
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 2398
    .end local v0    # "boundsCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@61
    array-length v0, v3

    #@62
    goto :goto_0

    #@63
    .line 2406
    .restart local v0    # "boundsCount":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    #@65
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@68
    .line 2407
    iget v3, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@6a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 2408
    iget v3, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    #@6f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 2409
    iget-boolean v3, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    #@74
    if-eqz v3, :cond_2

    #@76
    move v3, v4

    #@77
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 2410
    iget v3, p0, Landroid/app/ActivityManager$StackInfo;->position:I

    #@7c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 2411
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    #@81
    if-eqz v3, :cond_3

    #@83
    .line 2412
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 2413
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    #@88
    invoke-virtual {v3, p1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@8b
    .line 2390
    :goto_3
    return-void

    #@8c
    :cond_2
    move v3, v2

    #@8d
    .line 2409
    goto :goto_2

    #@8e
    .line 2415
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    goto :goto_3
.end method
