.class public Landroid/net/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkInfo$DetailedState;,
        Landroid/net/NetworkInfo$State;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private greylist-max-o mExtraInfo:Ljava/lang/String;

.field private greylist-max-o mIsAvailable:Z

.field private greylist-max-o mIsFailover:Z

.field private greylist-max-o mIsRoaming:Z

.field private greylist-max-o mNetworkType:I

.field private greylist-max-o mReason:Ljava/lang/String;

.field private greylist-max-o mState:Landroid/net/NetworkInfo$State;

.field private greylist-max-o mSubtype:I

.field private greylist-max-o mSubtypeName:Ljava/lang/String;

.field private greylist-max-o mTypeName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDetailedState(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtraInfo(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAvailable(Landroid/net/NetworkInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsFailover(Landroid/net/NetworkInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRoaming(Landroid/net/NetworkInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReason(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    .line 126
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v0, Landroid/net/NetworkInfo$1;

    invoke-direct {v0}, Landroid/net/NetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "subtype"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "subtypeName"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    goto :goto_26

    .line 171
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_26
    :goto_26
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 174
    iput p2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 175
    iput-object p3, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 177
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 179
    return-void
.end method

.method public constructor greylist <init>(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/net/NetworkInfo;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    if-nez p1, :cond_c

    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 188
    :cond_c
    monitor-enter p1

    .line 189
    :try_start_d
    iget v0, p1, Landroid/net/NetworkInfo;->mNetworkType:I

    iput v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 190
    iget v0, p1, Landroid/net/NetworkInfo;->mSubtype:I

    iput v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 191
    iget-object v0, p1, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 194
    iget-object v0, p1, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 195
    iget-object v0, p1, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 197
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsFailover:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    .line 198
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsAvailable:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 199
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsRoaming:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 200
    monitor-exit p1

    .line 201
    return-void

    .line 200
    :catchall_3b
    move-exception v0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    monitor-enter p0

    .line 491
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    monitor-exit p0

    return-object v0

    .line 492
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getExtraInfo()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    monitor-enter p0

    .line 561
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 562
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getReason()Ljava/lang/String;
    .registers 2

    .line 546
    monitor-enter p0

    .line 547
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 548
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getState()Landroid/net/NetworkInfo$State;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    monitor-enter p0

    .line 473
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    monitor-exit p0

    return-object v0

    .line 474
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getSubtype()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    monitor-enter p0

    .line 246
    :try_start_1
    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    monitor-exit p0

    return v0

    .line 247
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getSubtypeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    monitor-enter p0

    .line 289
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 290
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    monitor-exit p0

    return v0

    .line 223
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getTypeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 278
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist isAvailable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    monitor-enter p0

    .line 378
    :try_start_1
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    monitor-exit p0

    return v0

    .line 379
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist isConnected()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    .line 333
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist isConnectedOrConnecting()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    .line 313
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist isFailover()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    monitor-exit p0

    return v0

    .line 410
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist isRoaming()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    monitor-enter p0

    .line 442
    :try_start_1
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    monitor-exit p0

    return v0

    .line 443
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist isSuspended()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    monitor-enter p0

    .line 350
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    .line 351
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    monitor-enter p0

    .line 511
    :try_start_1
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 512
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 513
    iput-object p2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 514
    iput-object p3, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    if-nez v0, :cond_35

    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_35

    .line 519
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DetailedState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/NetworkInfo;
    .end local p1    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "extraInfo":Ljava/lang/String;
    throw v0

    .line 521
    .restart local p0    # "this":Landroid/net/NetworkInfo;
    .restart local p1    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .restart local p2    # "reason":Ljava/lang/String;
    .restart local p3    # "extraInfo":Ljava/lang/String;
    :cond_35
    :goto_35
    monitor-exit p0

    .line 522
    return-void

    .line 521
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public greylist-max-o setExtraInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "extraInfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    monitor-enter p0

    .line 534
    :try_start_1
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 535
    monitor-exit p0

    .line 536
    return-void

    .line 535
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist setFailover(Z)V
    .registers 3
    .param p1, "isFailover"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    monitor-enter p0

    .line 424
    :try_start_1
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    .line 425
    monitor-exit p0

    .line 426
    return-void

    .line 425
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist setIsAvailable(Z)V
    .registers 3
    .param p1, "isAvailable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    monitor-enter p0

    .line 393
    :try_start_1
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 394
    monitor-exit p0

    .line 395
    return-void

    .line 394
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist setRoaming(Z)V
    .registers 3
    .param p1, "isRoaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    monitor-enter p0

    .line 455
    :try_start_1
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 456
    monitor-exit p0

    .line 457
    return-void

    .line 456
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist setSubtype(ILjava/lang/String;)V
    .registers 4
    .param p1, "subtype"    # I
    .param p2, "subtypeName"    # Ljava/lang/String;

    .line 255
    monitor-enter p0

    .line 256
    :try_start_1
    iput p1, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 257
    iput-object p2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 258
    monitor-exit p0

    .line 259
    return-void

    .line 258
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public greylist-max-o setType(I)V
    .registers 3
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    monitor-enter p0

    .line 233
    :try_start_1
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 234
    monitor-exit p0

    .line 235
    return-void

    .line 234
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .registers 5

    .line 586
    monitor-enter p0

    .line 587
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "subtype":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 592
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_26
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    if-eqz v2, :cond_39

    .line 598
    const-string v2, " ROAMING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_39
    iget-object v2, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    if-eqz v2, :cond_48

    .line 601
    const-string v2, " extra: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 604
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "subtype":Ljava/lang/String;
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 567
    monitor-enter p0

    .line 568
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], state: "

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    if-nez v2, :cond_49

    const-string v2, "(unspecified)"

    goto :goto_4b

    :cond_49
    iget-object v2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    :goto_4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    if-nez v2, :cond_5c

    const-string v2, "(none)"

    goto :goto_5e

    :cond_5c
    iget-object v2, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    :goto_5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failover: "

    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", available: "

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roaming: "

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 578
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_91
    move-exception v0

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_1 .. :try_end_93} :catchall_91

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 614
    monitor-enter p0

    .line 615
    :try_start_1
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    monitor-exit p0

    .line 627
    return-void

    .line 626
    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_52

    throw v0
.end method
