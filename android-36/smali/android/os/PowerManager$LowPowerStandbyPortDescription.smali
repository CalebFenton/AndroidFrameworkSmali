.class public final Landroid/os/PowerManager$LowPowerStandbyPortDescription;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowPowerStandbyPortDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$LowPowerStandbyPortDescription$PortMatcher;,
        Landroid/os/PowerManager$LowPowerStandbyPortDescription$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist MATCH_PORT_LOCAL:I = 0x1

.field public static final whitelist MATCH_PORT_REMOTE:I = 0x2

.field public static final whitelist PROTOCOL_TCP:I = 0x6

.field public static final whitelist PROTOCOL_UDP:I = 0x11


# instance fields
.field private final blacklist mLocalAddress:Ljava/net/InetAddress;

.field private final blacklist mPortMatcher:I

.field private final blacklist mPortNumber:I

.field private final blacklist mProtocol:I


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "protocol"    # I
    .param p2, "portMatcher"    # I
    .param p3, "portNumber"    # I

    .line 3672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3673
    iput p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    .line 3674
    iput p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    .line 3675
    iput p3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    .line 3676
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    .line 3677
    return-void
.end method

.method public constructor whitelist <init>(IIILjava/net/InetAddress;)V
    .registers 5
    .param p1, "protocol"    # I
    .param p2, "portMatcher"    # I
    .param p3, "portNumber"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;

    .line 3693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3694
    iput p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    .line 3695
    iput p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    .line 3696
    iput p3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    .line 3697
    iput-object p4, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    .line 3698
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPortDescription;)Landroid/os/PowerManager$LowPowerStandbyPortDescription;
    .registers 6
    .param p0, "parcelablePortDescription"    # Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    .line 3827
    if-nez p0, :cond_4

    .line 3828
    const/4 v0, 0x0

    return-object v0

    .line 3831
    :cond_4
    const/4 v0, 0x0

    .line 3832
    .local v0, "localAddress":Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    if-eqz v1, :cond_19

    .line 3834
    :try_start_9
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 3837
    goto :goto_19

    .line 3835
    :catch_11
    move-exception v1

    .line 3836
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v2, "PowerManager"

    const-string v3, "Address has invalid length"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3839
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_19
    :goto_19
    new-instance v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    iget v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    iget v3, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    iget v4, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;-><init>(IIILjava/net/InetAddress;)V

    return-object v1
.end method

.method public static blacklist fromParcelable(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IPowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    .line 3849
    .local p0, "portDescriptions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IPowerManager$LowPowerStandbyPortDescription;>;"
    if-nez p0, :cond_4

    .line 3850
    const/4 v0, 0x0

    return-object v0

    .line 3853
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3854
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManager$LowPowerStandbyPortDescription;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    .line 3855
    .local v2, "port":Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    invoke-static {v2}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPortDescription;)Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3856
    .end local v2    # "port":Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    goto :goto_d

    .line 3857
    :cond_21
    return-object v0
.end method

.method private blacklist portMatcherToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "portMatcher"    # I

    .line 3709
    packed-switch p1, :pswitch_data_e

    .line 3713
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3711
    :pswitch_8
    const-string v0, "MATCH_PORT_REMOTE"

    return-object v0

    .line 3710
    :pswitch_b
    const-string v0, "MATCH_PORT_LOCAL"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist protocolToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "protocol"    # I

    .line 3701
    sparse-switch p1, :sswitch_data_e

    .line 3705
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3703
    :sswitch_8
    const-string v0, "UDP"

    return-object v0

    .line 3702
    :sswitch_b
    const-string v0, "TCP"

    return-object v0

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0x11 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist toParcelable(Landroid/os/PowerManager$LowPowerStandbyPortDescription;)Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    .registers 3
    .param p0, "portDescription"    # Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 3795
    if-nez p0, :cond_4

    .line 3796
    const/4 v0, 0x0

    return-object v0

    .line 3799
    :cond_4
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;-><init>()V

    .line 3801
    .local v0, "parcelablePortDescription":Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    .line 3802
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    .line 3803
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    .line 3804
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_21

    .line 3805
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    .line 3807
    :cond_21
    return-object v0
.end method

.method public static blacklist toParcelable(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/IPowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    .line 3813
    .local p0, "portDescriptions":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$LowPowerStandbyPortDescription;>;"
    if-nez p0, :cond_4

    .line 3814
    const/4 v0, 0x0

    return-object v0

    .line 3817
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3818
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IPowerManager$LowPowerStandbyPortDescription;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 3819
    .local v2, "port":Landroid/os/PowerManager$LowPowerStandbyPortDescription;
    invoke-static {v2}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Landroid/os/PowerManager$LowPowerStandbyPortDescription;)Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3820
    .end local v2    # "port":Landroid/os/PowerManager$LowPowerStandbyPortDescription;
    goto :goto_d

    .line 3821
    :cond_21
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 3779
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 3780
    :cond_4
    instance-of v1, p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 3781
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 3782
    .local v1, "that":Landroid/os/PowerManager$LowPowerStandbyPortDescription;
    iget v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    iget v4, v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    iget v4, v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    iget v4, v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v4, v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    .line 3783
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 3782
    :goto_2b
    return v0
.end method

.method public whitelist getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 3764
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getPortMatcher()I
    .registers 2

    .line 3742
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    return v0
.end method

.method public whitelist getPortNumber()I
    .registers 2

    .line 3752
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    return v0
.end method

.method public whitelist getProtocol()I
    .registers 2

    .line 3727
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 3789
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PortDescription{mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    .line 3770
    invoke-direct {p0, v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->protocolToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortMatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    .line 3771
    invoke-direct {p0, v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->portMatcherToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3769
    return-object v0
.end method
