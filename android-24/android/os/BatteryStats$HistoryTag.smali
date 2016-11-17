.class public final Landroid/os/BatteryStats$HistoryTag;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryTag"
.end annotation


# instance fields
.field public poolIdx:I

.field public string:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1027
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 1028
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryTag;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1030
    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    #@15
    .line 1032
    .local v0, "that":Landroid/os/BatteryStats$HistoryTag;
    iget v1, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@17
    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@19
    if-eq v1, v2, :cond_3

    #@1b
    return v3

    #@1c
    .line 1033
    :cond_3
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@1e
    iget-object v2, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_4

    #@26
    return v3

    #@27
    .line 1035
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1040
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 1041
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget v2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@a
    add-int v0, v1, v2

    #@c
    .line 1042
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@6
    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@c
    .line 1022
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@f
    .line 1019
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryTag;

    #@0
    .prologue
    .line 1003
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4
    .line 1004
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@6
    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@8
    .line 1005
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@a
    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@c
    .line 1002
    return-void
.end method

.method public setTo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "_string"    # Ljava/lang/String;
    .param p2, "_uid"    # I

    #@0
    .prologue
    .line 1009
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@2
    .line 1010
    iput p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@4
    .line 1011
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@7
    .line 1008
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1015
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1016
    iget v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1014
    return-void
.end method
