.class public final Landroid/hardware/devicestate/DeviceStateInfo;
.super Ljava/lang/Object;
.source "DeviceStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateInfo$ChangeFlags;
    }
.end annotation


# static fields
.field public static final blacklist CHANGED_BASE_STATE:I = 0x2

.field public static final blacklist CHANGED_CURRENT_STATE:I = 0x4

.field public static final blacklist CHANGED_SUPPORTED_STATES:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/devicestate/DeviceStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist baseState:Landroid/hardware/devicestate/DeviceState;

.field public final blacklist currentState:Landroid/hardware/devicestate/DeviceState;

.field public final blacklist supportedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Landroid/hardware/devicestate/DeviceStateInfo$1;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceStateInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "numberOfSupportedStates":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v1, "supportedStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/devicestate/DeviceState;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_28

    .line 155
    sget-object v3, Landroid/hardware/devicestate/DeviceState$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 157
    .local v3, "configuration":Landroid/hardware/devicestate/DeviceState$Configuration;
    new-instance v4, Landroid/hardware/devicestate/DeviceState;

    invoke-direct {v4, v3}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    .end local v3    # "configuration":Landroid/hardware/devicestate/DeviceState$Configuration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 159
    .end local v2    # "i":I
    :cond_28
    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 161
    new-instance v2, Landroid/hardware/devicestate/DeviceState;

    sget-object v3, Landroid/hardware/devicestate/DeviceState$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 162
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-direct {v2, v3}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    iput-object v2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    .line 163
    new-instance v2, Landroid/hardware/devicestate/DeviceState;

    sget-object v3, Landroid/hardware/devicestate/DeviceState$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-direct {v2, v3}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    iput-object v2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/devicestate/DeviceStateInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V
    .registers 4
    .param p2, "baseState"    # Landroid/hardware/devicestate/DeviceState;
    .param p3, "state"    # Landroid/hardware/devicestate/DeviceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;",
            "Landroid/hardware/devicestate/DeviceState;",
            "Landroid/hardware/devicestate/DeviceState;",
            ")V"
        }
    .end annotation

    .line 84
    .local p1, "supportedStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/devicestate/DeviceState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 86
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    .line 87
    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist diff(Landroid/hardware/devicestate/DeviceStateInfo;)I
    .registers 5
    .param p1, "other"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "diff":I
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 120
    or-int/lit8 v0, v0, 0x1

    .line 122
    :cond_d
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 123
    or-int/lit8 v0, v0, 0x2

    .line 125
    :cond_19
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 126
    or-int/lit8 v0, v0, 0x4

    .line 128
    :cond_25
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 101
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 102
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 103
    .local v2, "that":Landroid/hardware/devicestate/DeviceStateInfo;
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3, v4}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 104
    invoke-virtual {v3, v4}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 105
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 103
    :goto_35
    return v0

    .line 101
    .end local v2    # "that":Landroid/hardware/devicestate/DeviceStateInfo;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 110
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 143
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 146
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    return-void
.end method
