.class public Landroid/net/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkInfo$State;,
        Landroid/net/NetworkInfo$DetailedState;,
        Landroid/net/NetworkInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private mExtraInfo:Ljava/lang/String;

.field private mIsAvailable:Z

.field private mIsFailover:Z

.field private mIsRoaming:Z

.field private mNetworkType:I

.field private mReason:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$State;

.field private mSubtype:I

.field private mSubtypeName:Ljava/lang/String;

.field private mTypeName:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/NetworkInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/net/NetworkInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/net/NetworkInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/util/EnumMap;

    #@2
    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    #@4
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    .line 94
    sput-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@9
    .line 98
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@d
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 99
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@14
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@16
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 100
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@1d
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@1f
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 101
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@26
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@28
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 102
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@2f
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@31
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 103
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@38
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@3a
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 104
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@41
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@43
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 105
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@4a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@4c
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@4e
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 106
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@53
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@55
    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@57
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 107
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@5c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@5e
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    #@60
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 108
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@65
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@67
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 109
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@6e
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@70
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 110
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@77
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@79
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 453
    new-instance v0, Landroid/net/NetworkInfo$1;

    #@80
    invoke-direct {v0}, Landroid/net/NetworkInfo$1;-><init>()V

    #@83
    .line 452
    sput-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@85
    .line 31
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "subtype"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "subtypeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 133
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Invalid network type: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 136
    :cond_0
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    #@27
    .line 137
    iput p2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    #@29
    .line 138
    iput-object p3, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    #@2b
    .line 139
    iput-object p4, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    #@2d
    .line 140
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@2f
    invoke-virtual {p0, v0, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 141
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #@34
    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@36
    .line 142
    iput-boolean v1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    #@38
    .line 143
    iput-boolean v1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    #@3a
    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 148
    if-eqz p1, :cond_0

    #@5
    .line 149
    monitor-enter p1

    #@6
    .line 150
    :try_start_0
    iget v0, p1, Landroid/net/NetworkInfo;->mNetworkType:I

    #@8
    iput v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    #@a
    .line 151
    iget v0, p1, Landroid/net/NetworkInfo;->mSubtype:I

    #@c
    iput v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    #@e
    .line 152
    iget-object v0, p1, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    #@12
    .line 153
    iget-object v0, p1, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    #@14
    iput-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    #@16
    .line 154
    iget-object v0, p1, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@18
    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@1a
    .line 155
    iget-object v0, p1, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    #@1c
    iput-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    #@1e
    .line 156
    iget-object v0, p1, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@20
    iput-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@22
    .line 157
    iget-object v0, p1, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    #@24
    iput-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    #@26
    .line 158
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsFailover:Z

    #@28
    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    #@2a
    .line 159
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsRoaming:Z

    #@2c
    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    #@2e
    .line 160
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsAvailable:Z

    #@30
    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit p1

    #@33
    .line 147
    :cond_0
    return-void

    #@34
    .line 149
    :catchall_0
    move-exception v0

    #@35
    monitor-exit p1

    #@36
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 425
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    #@0
    .prologue
    .line 347
    monitor-enter p0

    #@1
    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 347
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 399
    monitor-enter p0

    #@1
    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 399
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 388
    monitor-enter p0

    #@1
    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 388
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getState()Landroid/net/NetworkInfo$State;
    .locals 1

    #@0
    .prologue
    .line 337
    monitor-enter p0

    #@1
    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 337
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getSubtype()I
    .locals 1

    #@0
    .prologue
    .line 194
    monitor-enter p0

    #@1
    .line 195
    :try_start_0
    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 194
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getSubtypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 225
    monitor-enter p0

    #@1
    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 225
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 174
    monitor-enter p0

    #@1
    .line 175
    :try_start_0
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 174
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    monitor-enter p0

    #@1
    .line 216
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 215
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 270
    monitor-enter p0

    #@1
    .line 271
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 270
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isConnected()Z
    .locals 2

    #@0
    .prologue
    .line 252
    monitor-enter p0

    #@1
    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@3
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit p0

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 252
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public isConnectedOrConnecting()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 240
    monitor-enter p0

    #@2
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@4
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@6
    if-eq v1, v2, :cond_0

    #@8
    iget-object v1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@a
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-ne v1, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    monitor-exit p0

    #@f
    return v0

    #@10
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0

    #@12
    .line 240
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public isFailover()Z
    .locals 1

    #@0
    .prologue
    .line 295
    monitor-enter p0

    #@1
    .line 296
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 295
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 319
    monitor-enter p0

    #@1
    .line 320
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 319
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 362
    monitor-enter p0

    #@1
    .line 363
    :try_start_0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    #@3
    .line 364
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/NetworkInfo$State;

    #@b
    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@d
    .line 365
    iput-object p2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@f
    .line 366
    iput-object p3, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 361
    return-void

    #@13
    .line 362
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "extraInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 377
    monitor-enter p0

    #@1
    .line 378
    :try_start_0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 376
    return-void

    #@5
    .line 377
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setFailover(Z)V
    .locals 1
    .param p1, "isFailover"    # Z

    #@0
    .prologue
    .line 307
    monitor-enter p0

    #@1
    .line 308
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 306
    return-void

    #@5
    .line 307
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setIsAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    #@0
    .prologue
    .line 282
    monitor-enter p0

    #@1
    .line 283
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 281
    return-void

    #@5
    .line 282
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "isRoaming"    # Z

    #@0
    .prologue
    .line 327
    monitor-enter p0

    #@1
    .line 328
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 326
    return-void

    #@5
    .line 327
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setSubtype(ILjava/lang/String;)V
    .locals 1
    .param p1, "subtype"    # I
    .param p2, "subtypeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    monitor-enter p0

    #@1
    .line 204
    :try_start_0
    iput p1, p0, Landroid/net/NetworkInfo;->mSubtype:I

    #@3
    .line 205
    iput-object p2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 202
    return-void

    #@7
    .line 203
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 183
    monitor-enter p0

    #@1
    .line 184
    :try_start_0
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 182
    return-void

    #@5
    .line 183
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 406
    monitor-enter p0

    #@1
    .line 407
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const-string/jumbo v1, "["

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 408
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "["

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 409
    const-string/jumbo v2, "], state: "

    #@2a
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 409
    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@30
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 409
    const-string/jumbo v2, "/"

    #@37
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 409
    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 410
    const-string/jumbo v2, ", reason: "

    #@44
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 410
    iget-object v1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@4a
    if-nez v1, :cond_0

    #@4c
    const-string/jumbo v1, "(unspecified)"

    #@4f
    .line 408
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 411
    const-string/jumbo v2, ", extra: "

    #@56
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 411
    iget-object v1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    #@5c
    if-nez v1, :cond_1

    #@5e
    const-string/jumbo v1, "(none)"

    #@61
    .line 408
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    .line 412
    const-string/jumbo v2, ", roaming: "

    #@68
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    .line 412
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    #@6e
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 413
    const-string/jumbo v2, ", failover: "

    #@75
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 413
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    #@7b
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    .line 414
    const-string/jumbo v2, ", isAvailable: "

    #@82
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    .line 414
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    #@88
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    .line 415
    const-string/jumbo v2, "]"

    #@8f
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    move-result-object v1

    #@96
    monitor-exit p0

    #@97
    return-object v1

    #@98
    .line 410
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@9a
    goto :goto_0

    #@9b
    .line 411
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    goto :goto_1

    #@9e
    .line 406
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    #@9f
    monitor-exit p0

    #@a0
    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 433
    monitor-enter p0

    #@3
    .line 434
    :try_start_0
    iget v2, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    #@5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 435
    iget v2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    #@a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 436
    iget-object v2, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 437
    iget-object v2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 438
    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    #@19
    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 439
    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    #@22
    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 440
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    #@2b
    if-eqz v2, :cond_0

    #@2d
    move v2, v0

    #@2e
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 441
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    #@33
    if-eqz v2, :cond_1

    #@35
    move v2, v0

    #@36
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 442
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    #@3b
    if-eqz v2, :cond_2

    #@3d
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 443
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@45
    .line 444
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    #@47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit p0

    #@4b
    .line 432
    return-void

    #@4c
    :cond_0
    move v2, v1

    #@4d
    .line 440
    goto :goto_0

    #@4e
    :cond_1
    move v2, v1

    #@4f
    .line 441
    goto :goto_1

    #@50
    :cond_2
    move v0, v1

    #@51
    .line 442
    goto :goto_2

    #@52
    .line 433
    :catchall_0
    move-exception v0

    #@53
    monitor-exit p0

    #@54
    throw v0
.end method
