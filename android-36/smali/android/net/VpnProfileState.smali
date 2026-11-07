.class public final Landroid/net/VpnProfileState;
.super Ljava/lang/Object;
.source "VpnProfileState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnProfileState$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/VpnProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_CONNECTED:I = 0x2

.field public static final whitelist STATE_CONNECTING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x0

.field public static final whitelist STATE_FAILED:I = 0x3


# instance fields
.field private final blacklist mAlwaysOn:Z

.field private final blacklist mLockdown:Z

.field private final blacklist mSessionKey:Ljava/lang/String;

.field private final blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/net/VpnProfileState$1;

    invoke-direct {v0}, Landroid/net/VpnProfileState$1;-><init>()V

    sput-object v0, Landroid/net/VpnProfileState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;ZZ)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "sessionKey"    # Ljava/lang/String;
    .param p3, "alwaysOn"    # Z
    .param p4, "lockdown"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid/net/VpnProfileState;->mState:I

    .line 60
    iput-object p2, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    .line 61
    iput-boolean p3, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    .line 62
    iput-boolean p4, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    .line 63
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/VpnProfileState;->mState:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/VpnProfileState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/VpnProfileState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist convertStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .line 157
    packed-switch p1, :pswitch_data_12

    .line 167
    const-string v0, "UNKNOWN"

    return-object v0

    .line 165
    :pswitch_6
    const-string v0, "FAILED"

    return-object v0

    .line 159
    :pswitch_9
    const-string v0, "CONNECTED"

    return-object v0

    .line 161
    :pswitch_c
    const-string v0, "CONNECTING"

    return-object v0

    .line 163
    :pswitch_f
    const-string v0, "DISCONNECTED"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p1, Landroid/net/VpnProfileState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 184
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/VpnProfileState;

    .line 185
    .local v0, "that":Landroid/net/VpnProfileState;
    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_37

    .line 186
    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 187
    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v3

    if-ne v2, v3, :cond_37

    .line 188
    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    .line 185
    :goto_38
    return v1
.end method

.method public whitelist getSessionId()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/net/VpnProfileState;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 193
    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAlwaysOn()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    return v0
.end method

.method public whitelist isLockdownEnabled()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 173
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "{"

    const-string/jumbo v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 174
    .local v0, "resultJoiner":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/VpnProfileState;->convertStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Always-on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget v0, p0, Landroid/net/VpnProfileState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    return-void
.end method
