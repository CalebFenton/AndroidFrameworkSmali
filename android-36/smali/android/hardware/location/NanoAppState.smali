.class public final Landroid/hardware/location/NanoAppState;
.super Ljava/lang/Object;
.source "NanoAppState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIsEnabled:Z

.field private greylist-max-o mNanoAppId:J

.field private blacklist mNanoAppPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNanoAppRpcServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNanoAppVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Landroid/hardware/location/NanoAppState$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppState$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JIZ)V
    .registers 6
    .param p1, "nanoAppId"    # J
    .param p3, "appVersion"    # I
    .param p4, "enabled"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    .line 52
    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    .line 53
    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    .line 54
    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(JIZLjava/util/List;)V
    .registers 7
    .param p1, "nanoAppId"    # J
    .param p3, "appVersion"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p5, "nanoAppPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    .line 66
    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    .line 67
    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    .line 68
    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    .line 69
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(JIZLjava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "nanoAppId"    # J
    .param p3, "appVersion"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p5, "nanoAppPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "nanoAppRpcServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppRpcService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    .line 84
    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    .line 85
    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    .line 86
    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    .line 87
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 88
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    .line 89
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    .line 139
    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 140
    const-class v0, Landroid/hardware/location/NanoAppRpcService;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/location/NanoAppRpcService;

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/NanoAppRpcService;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    .line 143
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNanoAppId()J
    .registers 3

    .line 95
    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist getNanoAppPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNanoAppVersion()J
    .registers 3

    .line 109
    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getRpcServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/hardware/location/NanoAppRpcService;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/NanoAppRpcService;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 157
    return-void
.end method
