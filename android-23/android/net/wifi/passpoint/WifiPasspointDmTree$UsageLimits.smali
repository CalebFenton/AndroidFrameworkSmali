.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageLimits"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DataLimit:Ljava/lang/String;

.field public StartDate:Ljava/lang/String;

.field public TimeLimit:Ljava/lang/String;

.field public UsageTimePeriod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1178
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1143
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1153
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1152
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1157
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1168
    if-nez p1, :cond_0

    #@2
    .line 1167
    :goto_0
    return-void

    #@3
    .line 1171
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->DataLimit:Ljava/lang/String;

    #@9
    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->StartDate:Ljava/lang/String;

    #@f
    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->TimeLimit:Ljava/lang/String;

    #@15
    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->UsageTimePeriod:Ljava/lang/String;

    #@1b
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1161
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->DataLimit:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1162
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->StartDate:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 1163
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->TimeLimit:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 1164
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;->UsageTimePeriod:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1160
    return-void
.end method
