.class public final Landroid/content/AttributionSource;
.super Ljava/lang/Object;
.source "AttributionSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AttributionSource$ScopedParcelState;,
        Landroid/content/AttributionSource$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.AttributionSource"

.field private static final blacklist TAG:Ljava/lang/String; = "AttributionSource"

.field private static final blacklist sDefaultToken:Landroid/os/Binder;


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mNextCached:Landroid/content/AttributionSource;

.field private blacklist mRenouncedPermissionsCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;
    .registers 1

    iget-object p0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDefaultToken()Landroid/os/Binder;
    .registers 1

    sget-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 97
    new-instance v0, Landroid/os/Binder;

    const-string v1, "android.content.AttributionSource"

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    .line 624
    new-instance v0, Landroid/content/AttributionSource$1;

    invoke-direct {v0}, Landroid/content/AttributionSource$1;-><init>()V

    sput-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 121
    sget-object v5, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "uid":I
    .end local p2    # "pid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v1, "uid":I
    .local v2, "pid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 135
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "uid":I
    .end local p2    # "pid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "token":Landroid/os/IBinder;
    .local v1, "uid":I
    .local v2, "pid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "token":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "renouncedPermissions"    # [Ljava/lang/String;
    .param p7, "deviceId"    # I
    .param p8, "next"    # Landroid/content/AttributionSource;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 173
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 174
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p2, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 175
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p5, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 176
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p3, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p4, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p6, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 179
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p7, v0, Landroid/content/AttributionSourceState;->deviceId:I

    .line 180
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    if-eqz p8, :cond_33

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/AttributionSourceState;

    iget-object v3, p8, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    aput-object v3, v2, v1

    goto :goto_35

    .line 181
    :cond_33
    new-array v2, v1, [Landroid/content/AttributionSourceState;

    :goto_35
    iput-object v2, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILandroid/content/AttributionSource;)V
    .registers 17
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "renouncedPermissions"    # [Ljava/lang/String;
    .param p6, "deviceId"    # I
    .param p7, "next"    # Landroid/content/AttributionSource;

    .line 161
    sget-object v5, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 108
    const/4 v2, -0x1

    sget-object v5, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .local v1, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "virtualDeviceId"    # I

    .line 114
    sget-object v5, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "virtualDeviceId":I
    .local v1, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v7, "virtualDeviceId":I
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 116
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;

    .line 128
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "token":Landroid/os/IBinder;
    .local v1, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "token":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 130
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/content/AttributionSource;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "next"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .line 144
    .local p4, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    .line 145
    if-eqz p4, :cond_e

    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move-object v6, v0

    .line 144
    const/4 v2, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p5

    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p5    # "next":Landroid/content/AttributionSource;
    .local v1, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v8, "next":Landroid/content/AttributionSource;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V
    .registers 12
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "next"    # Landroid/content/AttributionSource;

    .line 152
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v6, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    .line 152
    move-object v0, p0

    move-object v8, p2

    .end local p2    # "next":Landroid/content/AttributionSource;
    .local v8, "next":Landroid/content/AttributionSource;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 155
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/AttributionSourceState;)V
    .registers 2
    .param p1, "attributionSourceState"    # Landroid/content/AttributionSourceState;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 210
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 185
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    invoke-direct {p0, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 187
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 194
    invoke-virtual {p0}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 200
    .local v0, "callingPid":I
    if-nez v0, :cond_1f

    .line 201
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v2, -0x1

    iput v2, v1, Landroid/content/AttributionSourceState;->pid:I

    .line 204
    :cond_1f
    invoke-virtual {p0}, Landroid/content/AttributionSource;->enforceCallingPid()V

    .line 205
    return-void

    .line 188
    .end local v0    # "callingPid":I
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "AttributionSource should be unparceled during a binder transaction for proper verification."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkCallingPid()Z
    .registers 4

    .line 394
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 395
    .local v0, "callingPid":I
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    if-eq v0, v1, :cond_13

    .line 397
    const/4 v1, 0x0

    return v1

    .line 399
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist myAttributionSource()Landroid/content/AttributionSource;
    .registers 5

    .line 276
    invoke-static {}, Landroid/app/ActivityThread;->currentAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 277
    .local v0, "globalSource":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 278
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enforceDefaultDeviceIdInMyAttributionSource()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 279
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 280
    const-string v2, "AttributionSource"

    const-string v3, "Avoid using myAttributionSource() to fetch an attributionSource with a non-default device Id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/AttributionSource;->withDeviceId(I)Landroid/content/AttributionSource;

    move-result-object v1

    return-object v1

    .line 285
    :cond_1f
    return-object v0

    .line 288
    :cond_20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 289
    .local v2, "uid":I
    if-nez v2, :cond_28

    .line 290
    const/16 v2, 0x3e8

    .line 293
    :cond_28
    :try_start_28
    new-instance v3, Landroid/content/AttributionSource$Builder;

    invoke-direct {v3, v2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 294
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/AttributionSource$Builder;->setPid(I)Landroid/content/AttributionSource$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3, v1}, Landroid/content/AttributionSource$Builder;->setDeviceId(I)Landroid/content/AttributionSource$Builder;

    move-result-object v3

    .line 296
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4b} :catch_4c

    .line 293
    return-object v1

    .line 298
    :catch_4c
    move-exception v1

    .line 301
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to resolve AttributionSource"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;
    .registers 2

    .line 254
    new-instance v0, Landroid/content/AttributionSource$ScopedParcelState;

    invoke-direct {v0, p0}, Landroid/content/AttributionSource$ScopedParcelState;-><init>(Landroid/content/AttributionSource;)V

    return-object v0
.end method

.method public blacklist asState()Landroid/content/AttributionSourceState;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    return-object v0
.end method

.method public whitelist checkCallingUid()Z
    .registers 4

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 358
    .local v0, "callingUid":I
    if-eqz v0, :cond_16

    .line 359
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    if-eq v0, v1, :cond_16

    .line 361
    const/4 v1, 0x0

    return v1

    .line 364
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceCallingPid()V
    .registers 4

    .line 378
    invoke-direct {p0}, Landroid/content/AttributionSource;->checkCallingPid()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    if-nez v0, :cond_14

    .line 380
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling pid unavailable due to oneway Binder call."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t match source pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_3f
    return-void
.end method

.method public whitelist enforceCallingUid()V
    .registers 4

    .line 341
    invoke-virtual {p0}, Landroid/content/AttributionSource;->checkCallingUid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 346
    return-void

    .line 342
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t match source uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 582
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 583
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 584
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/AttributionSource;

    .line 585
    .local v2, "that":Landroid/content/AttributionSource;
    invoke-virtual {p0, v2}, Landroid/content/AttributionSource;->equalsExceptToken(Landroid/content/AttributionSource;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 583
    .end local v2    # "that":Landroid/content/AttributionSource;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist equalsExceptToken(Landroid/content/AttributionSource;)Z
    .registers 5
    .param p1, "o"    # Landroid/content/AttributionSource;

    .line 598
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 599
    :cond_4
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    iget-object v2, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    if-ne v1, v2, :cond_48

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 600
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 602
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iget-object v2, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 604
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 606
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    nop

    .line 599
    :goto_49
    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 557
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v0, v0, Landroid/content/AttributionSourceState;->deviceId:I

    return v0
.end method

.method public whitelist getNext()Landroid/content/AttributionSource;
    .registers 4

    .line 573
    iget-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 575
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iput-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    .line 577
    :cond_1f
    iget-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public blacklist getNextAttributionTag()Ljava/lang/String;
    .registers 3

    .line 452
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 454
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object v0

    .line 456
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextDeviceId()I
    .registers 3

    .line 480
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 482
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/content/AttributionSourceState;->deviceId:I

    return v0

    .line 484
    :cond_17
    return v1
.end method

.method public blacklist getNextPackageName()Ljava/lang/String;
    .registers 3

    .line 438
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 440
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object v0

    .line 442
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextToken()Landroid/os/IBinder;
    .registers 3

    .line 466
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 468
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-object v0

    .line 470
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextUid()I
    .registers 3

    .line 425
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 427
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    return v0

    .line 429
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 538
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 531
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v0, v0, Landroid/content/AttributionSourceState;->pid:I

    return v0
.end method

.method public whitelist getRenouncedPermissions()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 510
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 511
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    goto :goto_1c

    .line 514
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    .line 517
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 566
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 524
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 611
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 613
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 611
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isTrusted(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 495
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    const-class v0, Landroid/permission/PermissionManager;

    .line 496
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 497
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 495
    :goto_17
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 404
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_83

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributionSource { uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v1, :cond_73

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v1, v1

    if-lez v1, :cond_73

    .line 413
    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    invoke-virtual {v1}, Landroid/content/AttributionSource;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    :goto_74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    return-object v0

    .line 416
    :cond_83
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withDefaultToken()Landroid/content/AttributionSource;
    .registers 2

    .line 232
    sget-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withDeviceId(I)Landroid/content/AttributionSource;
    .registers 11
    .param p1, "deviceId"    # I

    .line 243
    new-instance v0, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v6, v6, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    move v7, p1

    .end local p1    # "deviceId":I
    .local v7, "deviceId":I
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 243
    return-object v0
.end method

.method public blacklist withNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 11
    .param p1, "next"    # Landroid/content/AttributionSource;

    .line 214
    new-instance v0, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v6, v6, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    move-object v8, p1

    .end local p1    # "next":Landroid/content/AttributionSource;
    .local v8, "next":Landroid/content/AttributionSource;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 214
    return-object v0
.end method

.method public blacklist withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 220
    new-instance v0, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v6, v3, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    move-object v3, p1

    .end local p1    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 220
    return-object v0
.end method

.method public blacklist withPid(I)Landroid/content/AttributionSource;
    .registers 11
    .param p1, "pid"    # I

    .line 237
    new-instance v0, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v6, v2, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    move v2, p1

    .end local p1    # "pid":I
    .local v2, "pid":I
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 237
    return-object v0
.end method

.method public blacklist withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;

    .line 226
    new-instance v0, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v6, v5, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    move-object v5, p1

    .end local p1    # "token":Landroid/os/IBinder;
    .local v5, "token":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 226
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 618
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {v0, p1, p2}, Landroid/content/AttributionSourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 619
    return-void
.end method
