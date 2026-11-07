.class Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchAttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api19Impl"
.end annotation


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPid:I

.field private final blacklist mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$menforceCallingPid(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->enforceCallingPid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$menforceCallingUid(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->enforceCallingUid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mUid:I

    .line 10
    .line 11
    iput p3, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mPid:I

    .line 12
    .line 13
    return-void
.end method

.method private blacklist checkCallingPid()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mPid:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq p0, v1, :cond_d

    .line 9
    .line 10
    if-eq p0, v0, :cond_d

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method private blacklist checkCallingUid()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mUid:I

    .line 6
    .line 7
    if-eq v0, p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method private blacklist enforceCallingPid()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->checkCallingPid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_36

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    new-instance p0, Ljava/lang/SecurityException;

    .line 14
    .line 15
    const-string v0, "Calling pid unavailable due to oneway Binder call."

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Calling pid: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " doesn\'t match source pid: "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mPid:I

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_36
    return-void
.end method

.method private blacklist enforceCallingUid()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->checkCallingUid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ljava/lang/SecurityException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Calling uid: "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " doesn\'t match source uid: "

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mUid:I

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v1
.end method


# virtual methods
.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getPid()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mPid:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getUid()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->mUid:I

    .line 2
    .line 3
    return p0
.end method
