.class public final Landroid/os/BatteryStats$HistoryStepDetails;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryStepDetails"
.end annotation


# instance fields
.field public appCpuSTime1:I

.field public appCpuSTime2:I

.field public appCpuSTime3:I

.field public appCpuUTime1:I

.field public appCpuUTime2:I

.field public appCpuUTime3:I

.field public appCpuUid1:I

.field public appCpuUid2:I

.field public appCpuUid3:I

.field public statIOWaitTime:I

.field public statIdlTime:I

.field public statIrqTime:I

.field public statSoftIrqTime:I

.field public statSystemTime:I

.field public statUserTime:I

.field public systemTime:I

.field public userTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 999
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    #@6
    .line 998
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1003
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@4
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@6
    .line 1004
    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@8
    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@a
    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@c
    .line 1006
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@e
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@10
    .line 1005
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@12
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@14
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@16
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@18
    .line 1002
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@6
    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@c
    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@12
    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@18
    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@1e
    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@24
    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@2a
    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@30
    .line 1038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@36
    .line 1039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@3c
    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@42
    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@48
    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@4e
    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@54
    .line 1044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@5a
    .line 1045
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@60
    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v0

    #@64
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@66
    .line 1029
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1010
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1011
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1012
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1013
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1014
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1015
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1016
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 1017
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1018
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1019
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1020
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 1021
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1022
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1023
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 1024
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 1025
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 1026
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 1009
    return-void
.end method
