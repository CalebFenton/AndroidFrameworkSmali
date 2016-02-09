.class final Landroid/os/BatteryStats$TimerEntry;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimerEntry"
.end annotation


# instance fields
.field final mId:I

.field final mName:Ljava/lang/String;

.field final mTime:J

.field final mTimer:Landroid/os/BatteryStats$Timer;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "time"    # J

    #@0
    .prologue
    .line 2990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2991
    iput-object p1, p0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@5
    .line 2992
    iput p2, p0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    #@7
    .line 2993
    iput-object p3, p0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@9
    .line 2994
    iput-wide p4, p0, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    #@b
    .line 2990
    return-void
.end method
