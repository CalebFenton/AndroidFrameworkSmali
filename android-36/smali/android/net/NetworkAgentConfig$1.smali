.class Landroid/net/NetworkAgentConfig$1;
.super Ljava/lang/Object;
.source "NetworkAgentConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkAgentConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkAgentConfig;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 572
    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    .line 573
    .local v0, "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    move v1, v3

    :goto_31
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    move v1, v3

    :goto_42
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4c

    move v1, v2

    goto :goto_4d

    :cond_4c
    move v1, v3

    :goto_4d
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/NetworkAgentConfig;->legacyType:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkAgentConfig;->-$$Nest$fputmLegacyExtraInfo(Landroid/net/NetworkAgentConfig;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_76

    move v1, v2

    goto :goto_77

    :cond_76
    move v1, v3

    :goto_77
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    move v2, v3

    :goto_81
    invoke-static {v0, v2}, Landroid/net/NetworkAgentConfig;->-$$Nest$fputmVpnRequiresValidation(Landroid/net/NetworkAgentConfig;Z)V

    .line 587
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 569
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgentConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkAgentConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/NetworkAgentConfig;
    .registers 3
    .param p1, "size"    # I

    .line 592
    new-array v0, p1, [Landroid/net/NetworkAgentConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 569
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgentConfig$1;->newArray(I)[Landroid/net/NetworkAgentConfig;

    move-result-object p1

    return-object p1
.end method
