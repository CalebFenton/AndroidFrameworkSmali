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


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mShowIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mTriggerTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1636
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo$1;

    invoke-direct {v0}, Landroid/app/AlarmManager$AlarmClockInfo$1;-><init>()V

    sput-object v0, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JLandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "triggerTime"    # J
    .param p3, "showIntent"    # Landroid/app/PendingIntent;

    .line 1586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1587
    iput-wide p1, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    .line 1588
    iput-object p3, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    .line 1589
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    .line 1598
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    .line 1599
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1650
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1651
    .local v0, "token":J
    const-wide v2, 0x10300000001L

    iget-wide v4, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1652
    iget-object v2, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1c

    .line 1653
    iget-object v2, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1655
    :cond_1c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1656
    return-void
.end method

.method public whitelist getShowIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 1622
    iget-object v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getTriggerTime()J
    .registers 3

    .line 1608
    iget-wide v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1632
    iget-wide v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mTriggerTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1633
    iget-object v0, p0, Landroid/app/AlarmManager$AlarmClockInfo;->mShowIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1634
    return-void
.end method
