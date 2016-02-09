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

.field public lastActiveTime:J

.field public numActivities:I

.field public numRunning:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public topActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1153
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1070
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1163
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1162
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
    .line 1120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    #@6
    .line 1141
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@c
    .line 1142
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@12
    .line 1143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1144
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/graphics/Bitmap;

    #@20
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@22
    .line 1148
    :goto_0
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/CharSequence;

    #@2a
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    #@2c
    .line 1149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    #@32
    .line 1150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    #@38
    .line 1139
    return-void

    #@39
    .line 1146
    :cond_0
    const/4 v0, 0x0

    #@3a
    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@3c
    goto :goto_0
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
    .line 1124
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1125
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@9
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@c
    .line 1126
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@e
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@11
    .line 1127
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1128
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1129
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    #@1a
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 1133
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    #@1f
    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@22
    .line 1135
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1136
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 1123
    return-void

    #@2d
    .line 1131
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    goto :goto_0
.end method
