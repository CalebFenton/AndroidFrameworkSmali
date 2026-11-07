.class public Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;
.super Ljava/lang/Object;
.source "NetworkStackBpfNetMaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$SingletonHolder;,
        Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mConfigurationMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U32;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSaverEnabledMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U8;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeps:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

.field private final blacklist mUidOwnerMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/android/net/UidOwnerValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 70
    new-instance v0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;-><init>(Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;)V
    .registers 5
    .param p1, "deps"    # Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 83
    iput-object p1, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDeps:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

    .line 84
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDeps:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;->getConfigurationMap()Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mConfigurationMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    .line 85
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDeps:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;->getUidOwnerMap()Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mUidOwnerMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    .line 86
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDeps:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;->getDataSaverEnabledMap()Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDataSaverEnabledMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    .line 87
    return-void

    .line 79
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-class v2, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported below Android T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;
    .registers 1

    .line 66
    sget-object v0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$SingletonHolder;->sInstance:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;

    return-object v0
.end method


# virtual methods
.method public blacklist getDataSaverEnabled()Z
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDataSaverEnabledMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    invoke-static {v0}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getDataSaverEnabled(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)Z

    move-result v0

    return v0
.end method

.method public blacklist getUidRule(II)I
    .registers 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I

    .line 150
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mUidOwnerMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getUidRule(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;II)I

    move-result v0

    return v0
.end method

.method public blacklist isChainEnabled(I)Z
    .registers 3
    .param p1, "chain"    # I

    .line 135
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mConfigurationMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    invoke-static {v0, p1}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->isChainEnabled(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isUidNetworkingBlocked(IZ)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 167
    iget-object v0, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mConfigurationMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    iget-object v1, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mUidOwnerMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    iget-object v2, p0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->mDataSaverEnabledMap:Landroid/net/connectivity/com/android/net/module/util/IBpfMap;

    invoke-static {p1, p2, v0, v1, v2}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->isUidNetworkingBlocked(IZLandroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)Z

    move-result v0

    return v0
.end method
