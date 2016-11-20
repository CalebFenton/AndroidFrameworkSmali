.class public Lcom/android/ims/ImsConferenceState;
.super Ljava/lang/Object;
.source "ImsConferenceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConferenceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsConferenceState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_TEXT:Ljava/lang/String; = "display-text"

.field public static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field public static final SIP_STATUS_CODE:Ljava/lang/String; = "sipstatuscode"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_ALERTING:Ljava/lang/String; = "alerting"

.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_CONNECT_FAIL:Ljava/lang/String; = "connect-fail"

.field public static final STATUS_DIALING_IN:Ljava/lang/String; = "dialing-in"

.field public static final STATUS_DIALING_OUT:Ljava/lang/String; = "dialing-out"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_DISCONNECTING:Ljava/lang/String; = "disconnecting"

.field public static final STATUS_MUTED_VIA_FOCUS:Ljava/lang/String; = "muted-via-focus"

.field public static final STATUS_ON_HOLD:Ljava/lang/String; = "on-hold"

.field public static final STATUS_PENDING:Ljava/lang/String; = "pending"

.field public static final USER:Ljava/lang/String; = "user"


# instance fields
.field public mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Lcom/android/ims/ImsConferenceState$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsConferenceState$1;-><init>()V

    #@5
    .line 132
    sput-object v0, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@a
    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@a
    .line 94
    invoke-direct {p0, p1}, Lcom/android/ims/ImsConferenceState;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 93
    return-void
.end method

.method public static getConnectionStateForStatus(Ljava/lang/String;)I
    .locals 2
    .param p0, "status"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 152
    const-string/jumbo v0, "pending"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 153
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 154
    :cond_0
    const-string/jumbo v0, "dialing-in"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 155
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    .line 156
    :cond_1
    const-string/jumbo v0, "alerting"

    #@1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 157
    const-string/jumbo v0, "dialing-out"

    #@23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    .line 156
    if-eqz v0, :cond_3

    #@29
    .line 158
    :cond_2
    const/4 v0, 0x3

    #@2a
    return v0

    #@2b
    .line 159
    :cond_3
    const-string/jumbo v0, "on-hold"

    #@2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 160
    const/4 v0, 0x5

    #@35
    return v0

    #@36
    .line 161
    :cond_4
    const-string/jumbo v0, "connected"

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_5

    #@3f
    .line 162
    const-string/jumbo v0, "muted-via-focus"

    #@42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    .line 161
    if-nez v0, :cond_5

    #@48
    .line 163
    const-string/jumbo v0, "disconnecting"

    #@4b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    .line 161
    if-eqz v0, :cond_6

    #@51
    .line 164
    :cond_5
    return v1

    #@52
    .line 165
    :cond_6
    const-string/jumbo v0, "disconnected"

    #@55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_7

    #@5b
    .line 166
    const/4 v0, 0x6

    #@5c
    return v0

    #@5d
    .line 168
    :cond_7
    return v1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 125
    .local v1, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 127
    .local v3, "user":Ljava/lang/String;
    const/4 v4, 0x0

    #@c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/os/Bundle;

    #@12
    .line 128
    .local v2, "state":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@14
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 125
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 122
    .end local v2    # "state":Landroid/os/Bundle;
    .end local v3    # "user":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 104
    iget-object v3, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@6
    move-result v3

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 106
    iget-object v3, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@f
    move-result v3

    #@10
    if-lez v3, :cond_0

    #@12
    .line 107
    iget-object v3, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@14
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@17
    move-result-object v0

    #@18
    .line 109
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-eqz v0, :cond_0

    #@1a
    .line 110
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    .line 112
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/util/Map$Entry;

    #@2a
    .line 115
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Landroid/os/Parcelable;

    #@39
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3c
    goto :goto_0

    #@3d
    .line 103
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :cond_0
    return-void
.end method
