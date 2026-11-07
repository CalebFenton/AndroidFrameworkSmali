.class Landroid/net/TetheringManager$5;
.super Landroid/net/ITetheringEventCallback$Stub;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mErrorStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/TetheringInterface;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastLocalOnlyInterfaces:[Landroid/net/TetheringInterface;

.field private blacklist mLastTetherableInterfaces:[Landroid/net/TetheringInterface;

.field private blacklist mLastTetheredInterfaces:[Landroid/net/TetheringInterface;

.field final synthetic blacklist val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$7xkWCfpycU4-CE739o4eaYab5Ss(Landroid/net/TetheringManager$5;Landroid/net/TetherStatesParcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->lambda$onTetherStatesChanged$5(Landroid/net/TetherStatesParcel;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xi856wBZCigrPbXMGWaqY-4cixI(Landroid/net/TetheringManager$5;Landroid/net/TetheringConfigurationParcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->lambda$onConfigurationChanged$4(Landroid/net/TetheringConfigurationParcel;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xlPOSclmJkEEdtUOwVal737fZ5I(Landroid/net/TetheringManager$5;Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/TetheringCallbackStartedParcel;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/TetheringManager$5;->lambda$onCallbackStarted$1(Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/TetheringCallbackStartedParcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/TetheringManager;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/TetheringManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1872
    iput-object p2, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-direct {p0}, Landroid/net/ITetheringEventCallback$Stub;-><init>()V

    .line 1874
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/net/TetheringManager$5;->mErrorStates:Ljava/util/HashMap;

    .line 1875
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/net/TetheringManager$5;->mLastTetherableInterfaces:[Landroid/net/TetheringInterface;

    .line 1876
    iput-object p2, p0, Landroid/net/TetheringManager$5;->mLastTetheredInterfaces:[Landroid/net/TetheringInterface;

    .line 1877
    iput-object p2, p0, Landroid/net/TetheringManager$5;->mLastLocalOnlyInterfaces:[Landroid/net/TetheringInterface;

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackStarted$1(Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/TetheringCallbackStartedParcel;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;
    .param p2, "parcel"    # Landroid/net/TetheringCallbackStartedParcel;

    .line 1927
    iget-wide v0, p2, Landroid/net/TetheringCallbackStartedParcel;->supportedTypes:J

    invoke-static {v0, v1}, Landroid/net/TetheringManager;->unpackBits(J)Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onSupportedTetheringTypes(Ljava/util/Set;)V

    .line 1928
    iget-wide v0, p2, Landroid/net/TetheringCallbackStartedParcel;->supportedTypes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-interface {p1, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onTetheringSupported(Z)V

    .line 1929
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->upstreamNetwork:Landroid/net/Network;

    invoke-interface {p1, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V

    .line 1930
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->states:Landroid/net/TetherStatesParcel;

    invoke-direct {p0, v0}, Landroid/net/TetheringManager$5;->sendErrorCallbacks(Landroid/net/TetherStatesParcel;)V

    .line 1931
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->config:Landroid/net/TetheringConfigurationParcel;

    invoke-direct {p0, v0}, Landroid/net/TetheringManager$5;->sendRegexpsChanged(Landroid/net/TetheringConfigurationParcel;)V

    .line 1932
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->states:Landroid/net/TetherStatesParcel;

    invoke-direct {p0, v0}, Landroid/net/TetheringManager$5;->maybeSendTetherableIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V

    .line 1933
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->states:Landroid/net/TetherStatesParcel;

    invoke-direct {p0, v0}, Landroid/net/TetheringManager$5;->maybeSendTetheredIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V

    .line 1934
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->states:Landroid/net/TetherStatesParcel;

    invoke-direct {p0, v0}, Landroid/net/TetheringManager$5;->maybeSendLocalOnlyIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V

    .line 1935
    iget-object v0, p2, Landroid/net/TetheringCallbackStartedParcel;->tetheredClients:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onClientsChanged(Ljava/util/Collection;)V

    .line 1936
    iget v0, p2, Landroid/net/TetheringCallbackStartedParcel;->offloadStatus:I

    invoke-interface {p1, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onOffloadStatusChanged(I)V

    .line 1937
    return-void
.end method

.method static synthetic blacklist lambda$onCallbackStopped$2(I)V
    .registers 1
    .param p0, "errorCode"    # I

    .line 1943
    invoke-static {p0}, Landroid/net/TetheringManager;->-$$Nest$smthrowIfPermissionFailure(I)V

    .line 1944
    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$4(Landroid/net/TetheringConfigurationParcel;)V
    .registers 2
    .param p1, "config"    # Landroid/net/TetheringConfigurationParcel;

    .line 1963
    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->sendRegexpsChanged(Landroid/net/TetheringConfigurationParcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOffloadStatusChanged$7(Landroid/net/TetheringManager$TetheringEventCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;
    .param p1, "status"    # I

    .line 1983
    invoke-interface {p0, p1}, Landroid/net/TetheringManager$TetheringEventCallback;->onOffloadStatusChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSupportedTetheringTypes$3(Landroid/net/TetheringManager$TetheringEventCallback;J)V
    .registers 4
    .param p0, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;
    .param p1, "supportedBitmap"    # J

    .line 1950
    invoke-static {p1, p2}, Landroid/net/TetheringManager;->unpackBits(J)Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onSupportedTetheringTypes(Ljava/util/Set;)V

    .line 1951
    return-void
.end method

.method static synthetic blacklist lambda$onTetherClientsChanged$6(Landroid/net/TetheringManager$TetheringEventCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;
    .param p1, "clients"    # Ljava/util/List;

    .line 1978
    invoke-interface {p0, p1}, Landroid/net/TetheringManager$TetheringEventCallback;->onClientsChanged(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTetherStatesChanged$5(Landroid/net/TetherStatesParcel;)V
    .registers 2
    .param p1, "states"    # Landroid/net/TetherStatesParcel;

    .line 1969
    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->sendErrorCallbacks(Landroid/net/TetherStatesParcel;)V

    .line 1970
    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->maybeSendTetherableIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V

    .line 1971
    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->maybeSendTetheredIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V

    .line 1972
    invoke-direct {p0, p1}, Landroid/net/TetheringManager$5;->maybeSendLocalOnlyIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V

    .line 1973
    return-void
.end method

.method static synthetic blacklist lambda$onUpstreamChanged$0(Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/Network;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;
    .param p1, "network"    # Landroid/net/Network;

    .line 1882
    invoke-interface {p0, p1}, Landroid/net/TetheringManager$TetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V

    .line 1883
    return-void
.end method

.method private declared-synchronized blacklist maybeSendLocalOnlyIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V
    .registers 5
    .param p1, "newStates"    # Landroid/net/TetherStatesParcel;

    monitor-enter p0

    .line 1917
    :try_start_1
    iget-object v0, p0, Landroid/net/TetheringManager$5;->mLastLocalOnlyInterfaces:[Landroid/net/TetheringInterface;

    iget-object v1, p1, Landroid/net/TetherStatesParcel;->localOnlyList:[Landroid/net/TetheringInterface;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-eqz v0, :cond_d

    monitor-exit p0

    return-void

    .line 1918
    :cond_d
    :try_start_d
    iget-object v0, p1, Landroid/net/TetherStatesParcel;->localOnlyList:[Landroid/net/TetheringInterface;

    invoke-virtual {v0}, [Landroid/net/TetheringInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/TetheringInterface;

    iput-object v0, p0, Landroid/net/TetheringManager$5;->mLastLocalOnlyInterfaces:[Landroid/net/TetheringInterface;

    .line 1919
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/net/TetheringManager$5;->mLastLocalOnlyInterfaces:[Landroid/net/TetheringInterface;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 1920
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1919
    invoke-interface {v0, v1}, Landroid/net/TetheringManager$TetheringEventCallback;->onLocalOnlyInterfacesChanged(Ljava/util/Set;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1921
    monitor-exit p0

    return-void

    .line 1916
    .end local p0    # "this":Landroid/net/TetheringManager$5;
    .end local p1    # "newStates":Landroid/net/TetherStatesParcel;
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private declared-synchronized blacklist maybeSendTetherableIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V
    .registers 5
    .param p1, "newStates"    # Landroid/net/TetherStatesParcel;

    monitor-enter p0

    .line 1901
    :try_start_1
    iget-object v0, p0, Landroid/net/TetheringManager$5;->mLastTetherableInterfaces:[Landroid/net/TetheringInterface;

    iget-object v1, p1, Landroid/net/TetherStatesParcel;->availableList:[Landroid/net/TetheringInterface;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-eqz v0, :cond_d

    monitor-exit p0

    return-void

    .line 1902
    :cond_d
    :try_start_d
    iget-object v0, p1, Landroid/net/TetherStatesParcel;->availableList:[Landroid/net/TetheringInterface;

    invoke-virtual {v0}, [Landroid/net/TetheringInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/TetheringInterface;

    iput-object v0, p0, Landroid/net/TetheringManager$5;->mLastTetherableInterfaces:[Landroid/net/TetheringInterface;

    .line 1903
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/net/TetheringManager$5;->mLastTetherableInterfaces:[Landroid/net/TetheringInterface;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 1904
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1903
    invoke-interface {v0, v1}, Landroid/net/TetheringManager$TetheringEventCallback;->onTetherableInterfacesChanged(Ljava/util/Set;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1905
    monitor-exit p0

    return-void

    .line 1900
    .end local p0    # "this":Landroid/net/TetheringManager$5;
    .end local p1    # "newStates":Landroid/net/TetherStatesParcel;
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private declared-synchronized blacklist maybeSendTetheredIfacesChangedCallback(Landroid/net/TetherStatesParcel;)V
    .registers 5
    .param p1, "newStates"    # Landroid/net/TetherStatesParcel;

    monitor-enter p0

    .line 1909
    :try_start_1
    iget-object v0, p0, Landroid/net/TetheringManager$5;->mLastTetheredInterfaces:[Landroid/net/TetheringInterface;

    iget-object v1, p1, Landroid/net/TetherStatesParcel;->tetheredList:[Landroid/net/TetheringInterface;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-eqz v0, :cond_d

    monitor-exit p0

    return-void

    .line 1910
    :cond_d
    :try_start_d
    iget-object v0, p1, Landroid/net/TetherStatesParcel;->tetheredList:[Landroid/net/TetheringInterface;

    invoke-virtual {v0}, [Landroid/net/TetheringInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/TetheringInterface;

    iput-object v0, p0, Landroid/net/TetheringManager$5;->mLastTetheredInterfaces:[Landroid/net/TetheringInterface;

    .line 1911
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/net/TetheringManager$5;->mLastTetheredInterfaces:[Landroid/net/TetheringInterface;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 1912
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1911
    invoke-interface {v0, v1}, Landroid/net/TetheringManager$TetheringEventCallback;->onTetheredInterfacesChanged(Ljava/util/Set;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1913
    monitor-exit p0

    return-void

    .line 1908
    .end local p0    # "this":Landroid/net/TetheringManager$5;
    .end local p1    # "newStates":Landroid/net/TetherStatesParcel;
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private declared-synchronized blacklist sendErrorCallbacks(Landroid/net/TetherStatesParcel;)V
    .registers 8
    .param p1, "newStates"    # Landroid/net/TetherStatesParcel;

    monitor-enter p0

    .line 1887
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p1, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 1888
    iget-object v1, p1, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    aget-object v1, v1, v0

    .line 1889
    .local v1, "tetherIface":Landroid/net/TetheringInterface;
    iget-object v2, p0, Landroid/net/TetheringManager$5;->mErrorStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1890
    .local v2, "lastError":Ljava/lang/Integer;
    iget-object v3, p1, Landroid/net/TetherStatesParcel;->lastErrorList:[I

    aget v3, v3, v0

    .line 1891
    .local v3, "newError":I
    if-eqz v3, :cond_28

    .line 1892
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1893
    iget-object v4, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-interface {v4, v1, v3}, Landroid/net/TetheringManager$TetheringEventCallback;->onError(Landroid/net/TetheringInterface;I)V

    .line 1895
    .end local p0    # "this":Landroid/net/TetheringManager$5;
    :cond_28
    iget-object v4, p0, Landroid/net/TetheringManager$5;->mErrorStates:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_37

    .line 1887
    nop

    .end local v1    # "tetherIface":Landroid/net/TetheringInterface;
    .end local v2    # "lastError":Ljava/lang/Integer;
    .end local v3    # "newError":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1897
    .end local v0    # "i":I
    :cond_35
    monitor-exit p0

    return-void

    .line 1886
    .end local p1    # "newStates":Landroid/net/TetherStatesParcel;
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private blacklist sendRegexpsChanged(Landroid/net/TetheringConfigurationParcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/net/TetheringConfigurationParcel;

    .line 1955
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v1, Landroid/net/TetheringManager$TetheringInterfaceRegexps;

    iget-object v2, p1, Landroid/net/TetheringConfigurationParcel;->tetherableBluetoothRegexs:[Ljava/lang/String;

    iget-object v3, p1, Landroid/net/TetheringConfigurationParcel;->tetherableUsbRegexs:[Ljava/lang/String;

    iget-object v4, p1, Landroid/net/TetheringConfigurationParcel;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/TetheringManager$TetheringInterfaceRegexps;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/net/TetheringManager$TetheringEventCallback;->onTetherableInterfaceRegexpsChanged(Landroid/net/TetheringManager$TetheringInterfaceRegexps;)V

    .line 1959
    return-void
.end method


# virtual methods
.method public blacklist onCallbackStarted(Landroid/net/TetheringCallbackStartedParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/net/TetheringCallbackStartedParcel;

    .line 1926
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v2, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;-><init>(Landroid/net/TetheringManager$5;Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/TetheringCallbackStartedParcel;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1938
    return-void
.end method

.method public blacklist onCallbackStopped(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 1942
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1945
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/net/TetheringConfigurationParcel;)V
    .registers 4
    .param p1, "config"    # Landroid/net/TetheringConfigurationParcel;

    .line 1963
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;-><init>(Landroid/net/TetheringManager$5;Landroid/net/TetheringConfigurationParcel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1964
    return-void
.end method

.method public blacklist onOffloadStatusChanged(I)V
    .registers 5
    .param p1, "status"    # I

    .line 1983
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v2, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/net/TetheringManager$TetheringEventCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1984
    return-void
.end method

.method public blacklist onSupportedTetheringTypes(J)V
    .registers 6
    .param p1, "supportedBitmap"    # J

    .line 1949
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v2, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, p2}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda2;-><init>(Landroid/net/TetheringManager$TetheringEventCallback;J)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1952
    return-void
.end method

.method public blacklist onTetherClientsChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 1978
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheredClient;>;"
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v2, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda6;-><init>(Landroid/net/TetheringManager$TetheringEventCallback;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1979
    return-void
.end method

.method public blacklist onTetherStatesChanged(Landroid/net/TetherStatesParcel;)V
    .registers 4
    .param p1, "states"    # Landroid/net/TetherStatesParcel;

    .line 1968
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda7;-><init>(Landroid/net/TetheringManager$5;Landroid/net/TetherStatesParcel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1974
    return-void
.end method

.method public blacklist onUpstreamChanged(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Landroid/net/TetheringManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$5;->val$callback:Landroid/net/TetheringManager$TetheringEventCallback;

    new-instance v2, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/Network;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1884
    return-void
.end method
