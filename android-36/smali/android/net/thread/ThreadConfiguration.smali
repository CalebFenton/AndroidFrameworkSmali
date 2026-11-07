.class public final Landroid/net/thread/ThreadConfiguration;
.super Ljava/lang/Object;
.source "ThreadConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/thread/ThreadConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/thread/ThreadConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBorderRouterEnabled:Z

.field private final blacklist mDhcpv6PdEnabled:Z

.field private final blacklist mNat64Enabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBorderRouterEnabled(Landroid/net/thread/ThreadConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDhcpv6PdEnabled(Landroid/net/thread/ThreadConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNat64Enabled(Landroid/net/thread/ThreadConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/net/thread/ThreadConfiguration$1;

    invoke-direct {v0}, Landroid/net/thread/ThreadConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/thread/ThreadConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/thread/ThreadConfiguration$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/net/thread/ThreadConfiguration$Builder;

    .line 52
    invoke-static {p1}, Landroid/net/thread/ThreadConfiguration$Builder;->-$$Nest$fgetmBorderRouterEnabled(Landroid/net/thread/ThreadConfiguration$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/net/thread/ThreadConfiguration$Builder;->-$$Nest$fgetmNat64Enabled(Landroid/net/thread/ThreadConfiguration$Builder;)Z

    move-result v1

    invoke-static {p1}, Landroid/net/thread/ThreadConfiguration$Builder;->-$$Nest$fgetmDhcpv6PdEnabled(Landroid/net/thread/ThreadConfiguration$Builder;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/thread/ThreadConfiguration;-><init>(ZZZ)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/thread/ThreadConfiguration$Builder;Landroid/net/thread/ThreadConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadConfiguration;-><init>(Landroid/net/thread/ThreadConfiguration$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZ)V
    .registers 4
    .param p1, "borderRouterEnabled"    # Z
    .param p2, "nat64Enabled"    # Z
    .param p3, "dhcpv6PdEnabled"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    .line 58
    iput-boolean p2, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    .line 59
    iput-boolean p3, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 96
    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Landroid/net/thread/ThreadConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 98
    return v2

    .line 100
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/thread/ThreadConfiguration;

    .line 101
    .local v1, "otherConfig":Landroid/net/thread/ThreadConfiguration;
    iget-boolean v3, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    iget-boolean v4, v1, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    iget-boolean v4, v1, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    iget-boolean v4, v1, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 109
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isBorderRouterEnabled()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    return v0
.end method

.method public blacklist isDhcpv6PdEnabled()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    return v0
.end method

.method public whitelist isNat64Enabled()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "borderRouterEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", nat64Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", dhcpv6PdEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mBorderRouterEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mNat64Enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-boolean v0, p0, Landroid/net/thread/ThreadConfiguration;->mDhcpv6PdEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 133
    return-void
.end method
