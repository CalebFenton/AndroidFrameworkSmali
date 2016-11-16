.class public Landroid/app/ActivityManager$RunningTaskInfo;
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
    name = "RunningTaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningTaskInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field public description:Ljava/lang/CharSequence;

.field public id:I

.field public isDockable:Z

.field public lastActiveTime:J

.field public numActivities:I

.field public numRunning:I

.field public resizeMode:I

.field public stackId:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public topActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1662
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1555
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1672
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1671
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1623
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    #@7
    .line 1647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    #@d
    .line 1648
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@13
    .line 1649
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@19
    .line 1650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 1651
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/graphics/Bitmap;

    #@27
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@29
    .line 1655
    :goto_0
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/lang/CharSequence;

    #@31
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    #@33
    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    #@39
    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    #@3f
    .line 1658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_1

    #@45
    const/4 v0, 0x1

    #@46
    :goto_1
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    #@48
    .line 1659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    #@4e
    .line 1645
    return-void

    #@4f
    .line 1653
    :cond_0
    const/4 v0, 0x0

    #@50
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@52
    goto :goto_0

    #@53
    :cond_1
    move v0, v1

    #@54
    .line 1658
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1627
    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1628
    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    #@9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1629
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@e
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@11
    .line 1630
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@13
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@16
    .line 1631
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1632
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1633
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@1f
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1637
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    #@24
    invoke-static {v2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@27
    .line 1639
    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    #@29
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 1640
    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    #@2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1641
    iget-boolean v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    #@33
    if-eqz v2, :cond_1

    #@35
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1642
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 1626
    return-void

    #@3e
    .line 1635
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    goto :goto_0

    #@42
    :cond_1
    move v0, v1

    #@43
    .line 1641
    goto :goto_1
.end method
