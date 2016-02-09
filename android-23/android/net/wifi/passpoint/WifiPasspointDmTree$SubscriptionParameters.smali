.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;
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
    name = "SubscriptionParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CreationDate:Ljava/lang/String;

.field public ExpirationDate:Ljava/lang/String;

.field public TypeOfSubscription:Ljava/lang/String;

.field public usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1128
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1093
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1097
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@a
    .line 1099
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1097
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@a
    .line 1103
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 1102
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1107
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1118
    if-nez p1, :cond_0

    #@2
    .line 1117
    :goto_0
    return-void

    #@3
    .line 1121
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->CreationDate:Ljava/lang/String;

    #@9
    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->ExpirationDate:Ljava/lang/String;

    #@f
    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->TypeOfSubscription:Ljava/lang/String;

    #@15
    .line 1124
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@21
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@23
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1111
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->CreationDate:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1112
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->ExpirationDate:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 1113
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->TypeOfSubscription:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 1114
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 1110
    return-void
.end method
