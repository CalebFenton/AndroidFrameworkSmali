.class public final Landroid/app/AlarmManager$AlarmClockInfo;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlarmClockInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mShowIntent:Landroid/app/PendingIntent;

.field private final mTriggerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 850
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/AlarmManager$AlarmClockInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 788
    return-void
.end method

.method public constructor <init>(JLandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "triggerTime"    # J
    .param p3, "showIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 802
    iput-wide p1, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    #@5
    .line 803
    iput-object p3, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    #@7
    .line 801
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    #@9
    .line 812
    const-class v0, Landroid/app/PendingIntent;

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/PendingIntent;

    #@15
    iput-object v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    #@17
    .line 810
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 841
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getShowIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getTriggerTime()J
    .locals 2

    #@0
    .prologue
    .line 822
    iget-wide v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 846
    iget-wide v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 847
    iget-object v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 845
    return-void
.end method
