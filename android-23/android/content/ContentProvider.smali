.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$Transport;,
        Landroid/content/ContentProvider$PipeDataWriter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mSingleUser:Z

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@6
    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    #@8
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@b
    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    #@d
    .line 121
    new-instance v0, Landroid/content/ContentProvider$Transport;

    #@f
    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    #@12
    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@14
    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@6
    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    #@8
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@b
    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    #@d
    .line 121
    new-instance v0, Landroid/content/ContentProvider$Transport;

    #@f
    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    #@12
    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@14
    .line 159
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@16
    .line 160
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    #@18
    .line 161
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    #@1a
    .line 162
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    #@1c
    .line 158
    return-void
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1727
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    #@3
    .line 1733
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@5
    if-nez v0, :cond_2

    #@7
    .line 1734
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@9
    .line 1735
    if-eqz p1, :cond_0

    #@b
    .line 1736
    iget-object v2, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@d
    .line 1737
    const-string/jumbo v0, "appops"

    #@10
    .line 1736
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/AppOpsManager;

    #@16
    iput-object v0, v2, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@18
    .line 1739
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    #@1e
    .line 1740
    if-eqz p2, :cond_1

    #@20
    .line 1741
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@22
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    #@25
    .line 1742
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@27
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    #@2a
    .line 1743
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@2c
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    #@2f
    .line 1744
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@31
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    #@33
    .line 1745
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    #@35
    const/high16 v2, 0x40000000    # 2.0f

    #@37
    and-int/2addr v0, v2

    #@38
    if-eqz v0, :cond_3

    #@3a
    const/4 v0, 0x1

    #@3b
    :goto_0
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    #@3d
    .line 1746
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@3f
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    #@42
    .line 1748
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    #@45
    .line 1726
    :cond_2
    return-void

    #@46
    :cond_3
    move v0, v1

    #@47
    .line 1745
    goto :goto_0
.end method

.method private checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 520
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v2

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v3

    #@d
    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 522
    const/4 v1, 0x2

    #@14
    return v1

    #@15
    .line 525
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    .line 526
    .local v0, "permOp":I
    const/4 v1, -0x1

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    .line 527
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@1e
    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@20
    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 530
    :cond_1
    return v4
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 180
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 181
    check-cast p0, Landroid/content/ContentProvider$Transport;

    #@6
    .end local p0    # "abstractInterface":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 183
    .restart local p0    # "abstractInterface":Landroid/content/IContentProvider;
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method public static getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1900
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 1901
    :cond_0
    const/16 v1, 0x40

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v0

    #@a
    .line 1902
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1907
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 1908
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    .line 1909
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@13
    .line 1910
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p0, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1879
    const/4 v0, -0x2

    #@1
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;I)I
    .locals 5
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    #@0
    .prologue
    .line 1865
    if-nez p0, :cond_0

    #@2
    return p1

    #@3
    .line 1866
    :cond_0
    const/16 v3, 0x40

    #@5
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@8
    move-result v1

    #@9
    .line 1867
    .local v1, "end":I
    const/4 v3, -0x1

    #@a
    if-ne v1, v3, :cond_1

    #@c
    return p1

    #@d
    .line 1868
    :cond_1
    const/4 v3, 0x0

    #@e
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 1870
    .local v2, "userIdString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v3

    #@16
    return v3

    #@17
    .line 1871
    :catch_0
    move-exception v0

    #@18
    .line 1872
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ContentProvider"

    #@1b
    const-string/jumbo v4, "Error parsing userId."

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 1873
    const/16 v3, -0x2710

    #@23
    return v3
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1890
    const/4 v0, -0x2

    #@1
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;I)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    #@0
    .prologue
    .line 1884
    if-nez p0, :cond_0

    #@2
    return p1

    #@3
    .line 1885
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1921
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 1922
    :cond_0
    const/4 v1, -0x2

    #@5
    if-eq p1, v1, :cond_1

    #@7
    .line 1923
    const-string/jumbo v1, "content"

    #@a
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    .line 1922
    if-eqz v1, :cond_1

    #@14
    .line 1924
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1926
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@1d
    move-result-object v0

    #@1e
    .line 1927
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, ""

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "@"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@44
    .line 1928
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@47
    move-result-object v1

    #@48
    return-object v1

    #@49
    .line 1931
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    return-object p0
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 698
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 699
    .local v0, "original":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@d
    .line 700
    return-object v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1915
    if-nez p0, :cond_0

    #@3
    return v0

    #@4
    .line 1916
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    :goto_0
    return v0

    #@f
    :cond_1
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method private validateIncomingUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 1845
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1846
    .local v0, "auth":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    #@8
    move-result v2

    #@9
    .line 1847
    .local v2, "userId":I
    if-eq v2, v3, :cond_0

    #@b
    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    #@10
    move-result v3

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 1848
    new-instance v3, Ljava/lang/SecurityException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "trying to query a ContentProvider in user "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 1849
    iget-object v5, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    #@26
    move-result v5

    #@27
    .line 1848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 1849
    const-string/jumbo v5, " with a uri belonging to user "

    #@2e
    .line 1848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3

    #@3e
    .line 1851
    :cond_0
    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {p0, v3}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_2

    #@48
    .line 1852
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "The authority of the uri "

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    const-string/jumbo v4, " does not match the one of the "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    .line 1853
    const-string/jumbo v4, "contentProvider: "

    #@62
    .line 1852
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 1854
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    #@6c
    if-eqz v3, :cond_1

    #@6e
    .line 1855
    new-instance v3, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    iget-object v4, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    .line 1859
    :goto_0
    new-instance v3, Ljava/lang/SecurityException;

    #@83
    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@86
    throw v3

    #@87
    .line 1857
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    iget-object v4, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    #@92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    goto :goto_0

    #@9b
    .line 1844
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1772
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    .line 1773
    .local v1, "numOperations":I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    #@6
    .line 1774
    .local v2, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 1775
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/content/ContentProviderOperation;

    #@f
    invoke-virtual {v3, p0, v2, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    #@12
    move-result-object v3

    #@13
    aput-object v3, v2, v0

    #@15
    .line 1774
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1777
    :cond_0
    return-object v2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 1723
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    #@4
    .line 1722
    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 1712
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    #@4
    .line 1711
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1139
    array-length v1, p2

    #@1
    .line 1140
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 1141
    aget-object v2, p2, v0

    #@6
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@9
    .line 1140
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 1143
    :cond_0
    return v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1800
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1071
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method checkUser(IILandroid/content/Context;)Z
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 508
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@5
    move-result v2

    #@6
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    #@9
    move-result v3

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 509
    iget-boolean v2, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    #@e
    .line 508
    if-nez v2, :cond_0

    #@10
    .line 510
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    #@13
    invoke-virtual {p3, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 508
    :cond_0
    :goto_0
    return v0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    .line 510
    goto :goto_0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1840
    const-string/jumbo v0, "nothing to dump"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1839
    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v4

    #@4
    .line 537
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v6

    #@8
    .line 538
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v7

    #@c
    .line 539
    .local v7, "uid":I
    const/4 v14, 0x0

    #@d
    .line 540
    .local v14, "missingPerm":Ljava/lang/String;
    const/16 v20, 0x0

    #@f
    .line 542
    .local v20, "strongestMode":I
    move-object/from16 v0, p0

    #@11
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    #@13
    invoke-static {v7, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_0

    #@19
    .line 543
    const/4 v8, 0x0

    #@1a
    return v8

    #@1b
    .line 546
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    #@1f
    if-eqz v8, :cond_7

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v6, v7, v4}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_7

    #@29
    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    #@2c
    move-result-object v12

    #@2d
    .line 548
    .local v12, "componentPerm":Ljava/lang/String;
    if-eqz v12, :cond_2

    #@2f
    .line 549
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, p2

    #@33
    move-object/from16 v2, p3

    #@35
    invoke-direct {v0, v12, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    #@38
    move-result v15

    #@39
    .line 550
    .local v15, "mode":I
    if-nez v15, :cond_1

    #@3b
    .line 551
    const/4 v8, 0x0

    #@3c
    return v8

    #@3d
    .line 553
    :cond_1
    move-object v14, v12

    #@3e
    .line 554
    .local v14, "missingPerm":Ljava/lang/String;
    move/from16 v0, v20

    #@40
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    #@43
    move-result v20

    #@44
    .line 560
    .end local v14    # "missingPerm":Ljava/lang/String;
    .end local v15    # "mode":I
    :cond_2
    if-nez v12, :cond_3

    #@46
    const/4 v10, 0x1

    #@47
    .line 562
    .local v10, "allowDefaultRead":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    #@4a
    move-result-object v19

    #@4b
    .line 563
    .local v19, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v19, :cond_6

    #@4d
    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@50
    move-result-object v16

    #@51
    .line 565
    .local v16, "path":Ljava/lang/String;
    const/4 v8, 0x0

    #@52
    move-object/from16 v0, v19

    #@54
    array-length v9, v0

    #@55
    :goto_1
    if-ge v8, v9, :cond_6

    #@57
    aget-object v18, v19, v8

    #@59
    .line 566
    .local v18, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    #@5c
    move-result-object v17

    #@5d
    .line 567
    .local v17, "pathPerm":Ljava/lang/String;
    if-eqz v17, :cond_5

    #@5f
    move-object/from16 v0, v18

    #@61
    move-object/from16 v1, v16

    #@63
    invoke-virtual {v0, v1}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    #@66
    move-result v21

    #@67
    if-eqz v21, :cond_5

    #@69
    .line 568
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, v17

    #@6d
    move-object/from16 v2, p2

    #@6f
    move-object/from16 v3, p3

    #@71
    invoke-direct {v0, v1, v2, v3}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    #@74
    move-result v15

    #@75
    .line 569
    .restart local v15    # "mode":I
    if-nez v15, :cond_4

    #@77
    .line 570
    const/4 v8, 0x0

    #@78
    return v8

    #@79
    .line 560
    .end local v10    # "allowDefaultRead":Z
    .end local v15    # "mode":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "pathPerm":Ljava/lang/String;
    .end local v18    # "pp":Landroid/content/pm/PathPermission;
    .end local v19    # "pps":[Landroid/content/pm/PathPermission;
    :cond_3
    const/4 v10, 0x0

    #@7a
    .restart local v10    # "allowDefaultRead":Z
    goto :goto_0

    #@7b
    .line 574
    .restart local v15    # "mode":I
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "pathPerm":Ljava/lang/String;
    .restart local v18    # "pp":Landroid/content/pm/PathPermission;
    .restart local v19    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v10, 0x0

    #@7c
    .line 575
    move-object/from16 v14, v17

    #@7e
    .line 576
    .restart local v14    # "missingPerm":Ljava/lang/String;
    move/from16 v0, v20

    #@80
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    #@83
    move-result v20

    #@84
    .line 565
    .end local v14    # "missingPerm":Ljava/lang/String;
    .end local v15    # "mode":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    #@86
    goto :goto_1

    #@87
    .line 584
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "pathPerm":Ljava/lang/String;
    .end local v18    # "pp":Landroid/content/pm/PathPermission;
    :cond_6
    if-eqz v10, :cond_7

    #@89
    const/4 v8, 0x0

    #@8a
    return v8

    #@8b
    .line 588
    .end local v10    # "allowDefaultRead":Z
    .end local v12    # "componentPerm":Ljava/lang/String;
    .end local v19    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@8e
    move-result v11

    #@8f
    .line 589
    .local v11, "callingUserId":I
    move-object/from16 v0, p0

    #@91
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    #@93
    if-eqz v8, :cond_8

    #@95
    move-object/from16 v0, p0

    #@97
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    #@99
    invoke-static {v8, v7}, Landroid/os/UserHandle;->isSameUser(II)Z

    #@9c
    move-result v8

    #@9d
    if-eqz v8, :cond_9

    #@9f
    .line 590
    :cond_8
    move-object/from16 v5, p1

    #@a1
    .line 591
    .local v5, "userUri":Landroid/net/Uri;
    :goto_2
    const/4 v8, 0x1

    #@a2
    move-object/from16 v9, p3

    #@a4
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    #@a7
    move-result v8

    #@a8
    if-nez v8, :cond_a

    #@aa
    .line 593
    const/4 v8, 0x0

    #@ab
    return v8

    #@ac
    .line 590
    .end local v5    # "userUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p1

    #@ae
    invoke-static {v0, v11}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@b1
    move-result-object v5

    #@b2
    .restart local v5    # "userUri":Landroid/net/Uri;
    goto :goto_2

    #@b3
    .line 598
    :cond_a
    const/4 v8, 0x1

    #@b4
    move/from16 v0, v20

    #@b6
    if-ne v0, v8, :cond_b

    #@b8
    .line 599
    const/4 v8, 0x1

    #@b9
    return v8

    #@ba
    .line 602
    :cond_b
    move-object/from16 v0, p0

    #@bc
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    #@be
    if-eqz v8, :cond_c

    #@c0
    .line 603
    new-instance v8, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v9, " requires "

    #@c8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v8

    #@cc
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v8

    #@d0
    const-string/jumbo v9, ", or grantUriPermission()"

    #@d3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v8

    #@d7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v13

    #@db
    .line 605
    .local v13, "failReason":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/SecurityException;

    #@dd
    new-instance v9, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v21, "Permission Denial: reading "

    #@e5
    move-object/from16 v0, v21

    #@e7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v9

    #@eb
    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    #@ee
    move-result-object v21

    #@ef
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f2
    move-result-object v21

    #@f3
    .line 605
    move-object/from16 v0, v21

    #@f5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v9

    #@f9
    .line 606
    const-string/jumbo v21, " uri "

    #@fc
    .line 605
    move-object/from16 v0, v21

    #@fe
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v9

    #@102
    move-object/from16 v0, p1

    #@104
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v9

    #@108
    .line 606
    const-string/jumbo v21, " from pid="

    #@10b
    .line 605
    move-object/from16 v0, v21

    #@10d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v9

    #@111
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@114
    move-result-object v9

    #@115
    .line 607
    const-string/jumbo v21, ", uid="

    #@118
    .line 605
    move-object/from16 v0, v21

    #@11a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v9

    #@11e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v9

    #@126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v9

    #@12a
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12d
    throw v8

    #@12e
    .line 604
    .end local v13    # "failReason":Ljava/lang/String;
    :cond_c
    const-string/jumbo v13, " requires the provider be exported, or grantUriPermission()"

    #@131
    .restart local v13    # "failReason":Ljava/lang/String;
    goto :goto_3
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v3

    #@4
    .line 614
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v5

    #@8
    .line 615
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v6

    #@c
    .line 616
    .local v6, "uid":I
    const/4 v12, 0x0

    #@d
    .line 617
    .local v12, "missingPerm":Ljava/lang/String;
    const/16 v18, 0x0

    #@f
    .line 619
    .local v18, "strongestMode":I
    move-object/from16 v0, p0

    #@11
    iget v4, v0, Landroid/content/ContentProvider;->mMyUid:I

    #@13
    invoke-static {v6, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 620
    const/4 v4, 0x0

    #@1a
    return v4

    #@1b
    .line 623
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-boolean v4, v0, Landroid/content/ContentProvider;->mExported:Z

    #@1f
    if-eqz v4, :cond_7

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5, v6, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_7

    #@29
    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    #@2c
    move-result-object v10

    #@2d
    .line 625
    .local v10, "componentPerm":Ljava/lang/String;
    if-eqz v10, :cond_2

    #@2f
    .line 626
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, p2

    #@33
    move-object/from16 v2, p3

    #@35
    invoke-direct {v0, v10, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    #@38
    move-result v13

    #@39
    .line 627
    .local v13, "mode":I
    if-nez v13, :cond_1

    #@3b
    .line 628
    const/4 v4, 0x0

    #@3c
    return v4

    #@3d
    .line 630
    :cond_1
    move-object v12, v10

    #@3e
    .line 631
    .local v12, "missingPerm":Ljava/lang/String;
    move/from16 v0, v18

    #@40
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    #@43
    move-result v18

    #@44
    .line 637
    .end local v12    # "missingPerm":Ljava/lang/String;
    .end local v13    # "mode":I
    :cond_2
    if-nez v10, :cond_3

    #@46
    const/4 v9, 0x1

    #@47
    .line 639
    .local v9, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    #@4a
    move-result-object v17

    #@4b
    .line 640
    .local v17, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v17, :cond_6

    #@4d
    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@50
    move-result-object v14

    #@51
    .line 642
    .local v14, "path":Ljava/lang/String;
    const/4 v4, 0x0

    #@52
    move-object/from16 v0, v17

    #@54
    array-length v7, v0

    #@55
    :goto_1
    if-ge v4, v7, :cond_6

    #@57
    aget-object v16, v17, v4

    #@59
    .line 643
    .local v16, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    #@5c
    move-result-object v15

    #@5d
    .line 644
    .local v15, "pathPerm":Ljava/lang/String;
    if-eqz v15, :cond_5

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-virtual {v0, v14}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    #@64
    move-result v8

    #@65
    if-eqz v8, :cond_5

    #@67
    .line 645
    move-object/from16 v0, p0

    #@69
    move-object/from16 v1, p2

    #@6b
    move-object/from16 v2, p3

    #@6d
    invoke-direct {v0, v15, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    #@70
    move-result v13

    #@71
    .line 646
    .restart local v13    # "mode":I
    if-nez v13, :cond_4

    #@73
    .line 647
    const/4 v4, 0x0

    #@74
    return v4

    #@75
    .line 637
    .end local v9    # "allowDefaultWrite":Z
    .end local v13    # "mode":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "pathPerm":Ljava/lang/String;
    .end local v16    # "pp":Landroid/content/pm/PathPermission;
    .end local v17    # "pps":[Landroid/content/pm/PathPermission;
    :cond_3
    const/4 v9, 0x0

    #@76
    .restart local v9    # "allowDefaultWrite":Z
    goto :goto_0

    #@77
    .line 651
    .restart local v13    # "mode":I
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "pathPerm":Ljava/lang/String;
    .restart local v16    # "pp":Landroid/content/pm/PathPermission;
    .restart local v17    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v9, 0x0

    #@78
    .line 652
    move-object v12, v15

    #@79
    .line 653
    .restart local v12    # "missingPerm":Ljava/lang/String;
    move/from16 v0, v18

    #@7b
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    #@7e
    move-result v18

    #@7f
    .line 642
    .end local v12    # "missingPerm":Ljava/lang/String;
    .end local v13    # "mode":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@81
    goto :goto_1

    #@82
    .line 661
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "pathPerm":Ljava/lang/String;
    .end local v16    # "pp":Landroid/content/pm/PathPermission;
    :cond_6
    if-eqz v9, :cond_7

    #@84
    const/4 v4, 0x0

    #@85
    return v4

    #@86
    .line 665
    .end local v9    # "allowDefaultWrite":Z
    .end local v10    # "componentPerm":Ljava/lang/String;
    .end local v17    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7
    const/4 v7, 0x2

    #@87
    move-object/from16 v4, p1

    #@89
    move-object/from16 v8, p3

    #@8b
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    #@8e
    move-result v4

    #@8f
    if-nez v4, :cond_8

    #@91
    .line 667
    const/4 v4, 0x0

    #@92
    return v4

    #@93
    .line 672
    :cond_8
    const/4 v4, 0x1

    #@94
    move/from16 v0, v18

    #@96
    if-ne v0, v4, :cond_9

    #@98
    .line 673
    const/4 v4, 0x1

    #@99
    return v4

    #@9a
    .line 676
    :cond_9
    move-object/from16 v0, p0

    #@9c
    iget-boolean v4, v0, Landroid/content/ContentProvider;->mExported:Z

    #@9e
    if-eqz v4, :cond_a

    #@a0
    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v7, " requires "

    #@a8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v4

    #@b0
    const-string/jumbo v7, ", or grantUriPermission()"

    #@b3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v11

    #@bb
    .line 679
    .local v11, "failReason":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/SecurityException;

    #@bd
    new-instance v7, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v8, "Permission Denial: writing "

    #@c5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    #@cc
    move-result-object v8

    #@cd
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d0
    move-result-object v8

    #@d1
    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v7

    #@d5
    .line 680
    const-string/jumbo v8, " uri "

    #@d8
    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    move-object/from16 v0, p1

    #@de
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    .line 680
    const-string/jumbo v8, " from pid="

    #@e5
    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v7

    #@e9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v7

    #@ed
    .line 681
    const-string/jumbo v8, ", uid="

    #@f0
    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v7

    #@f4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v7

    #@f8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v7

    #@fc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    invoke-direct {v4, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@103
    throw v4

    #@104
    .line 678
    .end local v11    # "failReason":Ljava/lang/String;
    :cond_a
    const-string/jumbo v11, " requires the provider be exported, or grantUriPermission()"

    #@107
    .restart local v11    # "failReason":Ljava/lang/String;
    goto :goto_2
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    #@0
    .prologue
    .line 835
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@2
    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@4
    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 718
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 719
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 720
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@c
    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@15
    .line 722
    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 690
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    #@0
    .prologue
    .line 1703
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@2
    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    #@0
    .prologue
    .line 822
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    #@2
    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 778
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1502
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    #@0
    .prologue
    .line 1693
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 746
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 747
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    #@6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 749
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 750
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    #@11
    array-length v1, v2

    #@12
    .line 751
    .local v1, "length":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@15
    .line 752
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    #@17
    aget-object v2, v2, v0

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 751
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 755
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_2
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 875
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 886
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 889
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1374
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@4
    move-result-object v1

    #@5
    .line 1375
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    #@7
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@9
    const-wide/16 v2, 0x0

    #@b
    const-wide/16 v4, -0x1

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    #@10
    :cond_0
    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1437
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1248
    new-instance v0, Ljava/io/FileNotFoundException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "No files supported by provider at "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1318
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1456
    new-array v2, v11, [Ljava/lang/String;

    #@5
    const-string/jumbo v0, "_data"

    #@8
    aput-object v0, v2, v1

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object v4, v3

    #@d
    move-object v5, v3

    #@e
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@11
    move-result-object v6

    #@12
    .line 1457
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@17
    move-result v7

    #@18
    .line 1458
    .local v7, "count":I
    :goto_0
    if-eq v7, v11, :cond_3

    #@1a
    .line 1461
    if-eqz v6, :cond_0

    #@1c
    .line 1462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@1f
    .line 1464
    :cond_0
    if-nez v7, :cond_2

    #@21
    .line 1465
    new-instance v0, Ljava/io/FileNotFoundException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "No entry for "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 1457
    .end local v7    # "count":I
    :cond_1
    const/4 v7, 0x0

    #@3c
    .restart local v7    # "count":I
    goto :goto_0

    #@3d
    .line 1467
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "Multiple items at "

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 1470
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@5a
    .line 1471
    const-string/jumbo v0, "_data"

    #@5d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@60
    move-result v8

    #@61
    .line 1472
    .local v8, "i":I
    if-ltz v8, :cond_4

    #@63
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@66
    move-result-object v10

    #@67
    .line 1473
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@6a
    .line 1474
    if-nez v10, :cond_5

    #@6c
    .line 1475
    new-instance v0, Ljava/io/FileNotFoundException;

    #@6e
    const-string/jumbo v1, "Column _data not found."

    #@71
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@74
    throw v0

    #@75
    .line 1472
    :cond_4
    const/4 v10, 0x0

    #@76
    .local v10, "path":Ljava/lang/String;
    goto :goto_1

    #@77
    .line 1478
    .end local v10    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    #@7a
    move-result v9

    #@7b
    .line 1479
    .local v9, "modeBits":I
    new-instance v0, Ljava/io/File;

    #@7d
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@80
    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@83
    move-result-object v0

    #@84
    return-object v0
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1666
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v3

    #@4
    .line 1668
    .local v3, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/ContentProvider$1;

    #@6
    move-object v1, p0

    #@7
    move-object v2, p5

    #@8
    move-object v4, p1

    #@9
    move-object v5, p2

    #@a
    move-object v6, p3

    #@b
    move-object v7, p4

    #@c
    invoke-direct/range {v0 .. v7}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    #@f
    .line 1680
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@11
    const/4 v1, 0x0

    #@12
    check-cast v1, [Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@17
    .line 1682
    const/4 v1, 0x0

    #@18
    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-object v1

    #@1b
    .line 1683
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    #@1c
    .line 1684
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    #@1e
    const-string/jumbo v2, "failure making pipe"

    #@21
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1552
    const-string/jumbo v1, "*/*"

    #@3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1554
    const-string/jumbo v1, "r"

    #@c
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 1556
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1557
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1560
    const-string/jumbo v1, "r"

    #@20
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 1562
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "Can\'t open "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, " as type "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1620
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 1017
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1106
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "0"

    #@7
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final setAppOps(II)V
    .locals 1
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    #@0
    .prologue
    .line 827
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 828
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@6
    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    #@8
    .line 829
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    #@a
    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    #@c
    .line 826
    :cond_0
    return-void
.end method

.method protected final setAuthorities(Ljava/lang/String;)V
    .locals 3
    .param p1, "authorities"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 733
    if-eqz p1, :cond_0

    #@3
    .line 734
    const/16 v0, 0x3b

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v0

    #@9
    const/4 v1, -0x1

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 735
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    #@e
    .line 736
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    #@10
    .line 732
    :cond_0
    :goto_0
    return-void

    #@11
    .line 738
    :cond_1
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    #@13
    .line 739
    const-string/jumbo v0, ";"

    #@16
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    #@1c
    goto :goto_0
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    #@0
    .prologue
    .line 811
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    #@2
    .line 810
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 767
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    #@2
    .line 766
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 789
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    #@2
    .line 788
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 1826
    const-string/jumbo v0, "ContentProvider"

    #@3
    const-string/jumbo v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1825
    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1089
    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
