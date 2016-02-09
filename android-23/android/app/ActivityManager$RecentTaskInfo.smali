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

.field public description:Ljava/lang/CharSequence;

.field public firstActiveTime:J

.field public id:I

.field public lastActiveTime:J

.field public numActivities:I

.field public origActivity:Landroid/content/ComponentName;

.field public persistentId:I

.field public stackId:I

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 953
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$1;-><init>()V

    #@5
    .line 952
    sput-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 804
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 963
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 962
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
    .line 900
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
    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    #@7
    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    #@d
    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_0

    #@13
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/content/Intent;

    #@1b
    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@1d
    .line 937
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    #@23
    .line 938
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/CharSequence;

    #@2b
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    #@2d
    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    if-lez v0, :cond_1

    #@33
    .line 940
    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    #@3b
    .line 939
    :goto_1
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@3d
    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    #@43
    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    #@49
    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4c
    move-result-wide v0

    #@4d
    iput-wide v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    #@4f
    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@52
    move-result-wide v0

    #@53
    iput-wide v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    #@55
    .line 945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v0

    #@59
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    #@5b
    .line 946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    #@61
    .line 947
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@67
    .line 948
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@6a
    move-result-object v0

    #@6b
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@6d
    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v0

    #@71
    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    #@73
    .line 933
    return-void

    #@74
    :cond_0
    move-object v0, v1

    #@75
    .line 936
    goto :goto_0

    #@76
    :cond_1
    move-object v0, v1

    #@77
    .line 940
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 905
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 906
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 907
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 908
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 909
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@15
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 913
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    #@1a
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@1d
    .line 914
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    #@1f
    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@22
    .line 916
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 917
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 918
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2b
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 922
    :goto_1
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 923
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 924
    iget-wide v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    #@3a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@3d
    .line 925
    iget-wide v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    #@3f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@42
    .line 926
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 927
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 928
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@4e
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@51
    .line 929
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@53
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@56
    .line 930
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    #@58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 904
    return-void

    #@5c
    .line 911
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_0

    #@60
    .line 920
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    goto :goto_1
.end method
