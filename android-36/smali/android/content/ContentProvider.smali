.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$Transport;,
        Landroid/content/ContentProvider$CallingIdentity;,
        Landroid/content/ContentProvider$PipeDataWriter;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private greylist-max-r mAuthorities:[Ljava/lang/String;

.field private greylist mAuthority:Ljava/lang/String;

.field private blacklist mCallingAttributionSource:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mContext:Landroid/content/Context;

.field private greylist-max-o mExported:Z

.field private greylist-max-o mMyUid:I

.field private greylist-max-o mNoPerms:Z

.field private greylist mPathPermissions:[Landroid/content/pm/PathPermission;

.field private greylist mReadPermission:Ljava/lang/String;

.field private greylist-max-o mSingleUser:Z

.field private blacklist mSystemUserOnly:Z

.field private greylist-max-o mTransport:Landroid/content/ContentProvider$Transport;

.field private blacklist mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

.field private greylist mWritePermission:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/content/ContentProvider;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMyUid(Landroid/content/ContentProvider;)I
    .registers 1

    iget p0, p0, Landroid/content/ContentProvider;->mMyUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleUser(Landroid/content/ContentProvider;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemUserOnly(Landroid/content/ContentProvider;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckPermission(Landroid/content/ContentProvider;Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdeniedAccessSystemUserOnlyProvider(IZ)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/ContentProvider;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 182
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 203
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 207
    return-void
.end method

.method private greylist-max-o attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .line 2622
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 2623
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    .line 2629
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_71

    .line 2630
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2631
    if-eqz p1, :cond_21

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_21

    .line 2632
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2635
    :cond_21
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 2636
    if-eqz p2, :cond_5a

    .line 2637
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 2638
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 2639
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 2640
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 2641
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    move v0, v1

    goto :goto_48

    :cond_47
    move v0, v2

    :goto_48
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 2642
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_52

    goto :goto_53

    :cond_52
    move v1, v2

    :goto_53
    iput-boolean v1, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    .line 2643
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 2645
    :cond_5a
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6e

    .line 2646
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setTransportLoggingEnabled(Z)V

    .line 2649
    :cond_6e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 2651
    :cond_71
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 939
    const/4 v0, 0x0

    return v0

    .line 941
    :cond_c
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/AttributionSource;

    .line 942
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 941
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .registers 2
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .line 225
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_c

    .line 226
    move-object v0, p0

    check-cast v0, Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0

    .line 228
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;
    .registers 6
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2914
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2919
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2920
    .local v0, "userId":I
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2921
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2922
    return-object p0

    .line 2924
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2927
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2924
    const-string v3, "Given URI [%s] already has a user ID, different from given user handle [%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2930
    :cond_39
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2931
    .local v1, "builder":Landroid/net/Uri$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2932
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2931
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2933
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2915
    .end local v0    # "userId":I
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given URI [%s] is not a content URI: "

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist deniedAccessSystemUserOnlyProvider(IZ)Z
    .registers 3
    .param p0, "callingUserId"    # I
    .param p1, "systemUserOnly"    # Z

    .line 2967
    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "auth"    # Ljava/lang/String;

    .line 2872
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2873
    :cond_4
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2874
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2880
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2881
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2882
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2883
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUserHandleFromUri(Landroid/net/Uri;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2861
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;)I
    .registers 2
    .param p0, "auth"    # Ljava/lang/String;

    .line 2837
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;I)I
    .registers 7
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .line 2822
    if-nez p0, :cond_3

    return p1

    .line 2823
    :cond_3
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2824
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    return p1

    .line 2825
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2827
    .local v1, "userIdString":Ljava/lang/String;
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_17

    return v2

    .line 2828
    :catch_17
    move-exception v2

    .line 2829
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ContentProvider"

    const-string v4, "Error parsing userId."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2830
    const/16 v3, -0x2710

    return v3
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;)I
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2850
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;I)I
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    .line 2843
    if-nez p0, :cond_3

    return p1

    .line 2844
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "authority"    # Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isContentRedirectionAllowedForUser(I)Z
    .registers 7
    .param p1, "incomingUserId"    # I

    .line 908
    const-string/jumbo v0, "media"

    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 909
    iget-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 910
    .local v0, "incomingUserIdIndex":I
    if-ltz v0, :cond_1b

    .line 911
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    return v1

    .line 915
    :cond_1b
    iget-object v2, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 916
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_50

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v3

    .line 917
    invoke-virtual {v3}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 918
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v3

    .line 919
    .local v3, "parent":Landroid/os/UserHandle;
    if-eqz v3, :cond_50

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 920
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 921
    return v4

    .line 925
    .end local v3    # "parent":Landroid/os/UserHandle;
    :cond_50
    iget-object v3, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 926
    return v1

    .line 928
    .end local v0    # "incomingUserIdIndex":I
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_56
    return v1
.end method

.method public static greylist maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 2940
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2941
    :cond_4
    const/4 v0, -0x2

    if-eq p1, v0, :cond_46

    .line 2942
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2943
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 2945
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2946
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2947
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2950
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_46
    return-object p0
.end method

.method private greylist-max-o maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2813
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v0, :cond_5

    .line 2814
    return-object p1

    .line 2816
    :cond_5
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1139
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1140
    .local v0, "original":Landroid/content/AttributionSource;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1141
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCallingPackageChanged()V

    .line 1142
    return-object v0
.end method

.method private static blacklist traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;

    .line 2954
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2957
    :cond_1a
    return-void
.end method

.method public static greylist-max-o uriHasUserId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2889
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 2890
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist validateIncomingAuthority(Ljava/lang/String;)V
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2758
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 2759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the one of the contentProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2761
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 2762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 2764
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2766
    :goto_52
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2768
    .end local v0    # "message":Ljava/lang/String;
    :cond_58
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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

    .line 2674
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
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

    .line 2680
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2681
    .local v0, "numOperations":I
    new-array v1, v0, [Landroid/content/ContentProviderResult;

    .line 2682
    .local v1, "results":[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 2683
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2682
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2685
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method

.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 2618
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2619
    return-void
.end method

.method public greylist-max-r attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 2607
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2608
    return-void
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 1960
    array-length v0, p2

    .line 1961
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_c

    .line 1962
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1961
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1964
    .end local v1    # "i":I
    :cond_c
    return v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2714
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2709
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p1, "url"    # Landroid/net/Uri;

    .line 1805
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;II)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1883
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o checkUser(IILandroid/content/Context;)Z
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 875
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 877
    .local v0, "callingUserId":I
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 878
    const/4 v1, 0x0

    return v1

    .line 881
    :cond_e
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_31

    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v1, :cond_1a

    goto :goto_31

    .line 884
    :cond_1a
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_30

    .line 886
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_30

    .line 892
    :cond_2b
    invoke-direct {p0, v0}, Landroid/content/ContentProvider;->isContentRedirectionAllowedForUser(I)Z

    move-result v1

    return v1

    .line 888
    :cond_30
    :goto_30
    return v2

    .line 882
    :cond_31
    :goto_31
    return v2
.end method

.method public final whitelist clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;
    .registers 5

    .line 1280
    new-instance v0, Landroid/content/ContentProvider$CallingIdentity;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1281
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/content/ContentProvider$CallingIdentity;-><init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V

    .line 1280
    return-object v0
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2023
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2024
    .end local p2    # "extras":Landroid/os/Bundle;
    .local v0, "extras":Landroid/os/Bundle;
    :goto_6
    nop

    .line 2025
    const-string p2, "android:query-arg-sql-selection"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2026
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2024
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public abstract whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2754
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2755
    return-void
.end method

.method protected blacklist enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .registers 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 951
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 952
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 953
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 954
    .local v6, "missingPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 956
    .local v7, "strongestResult":I
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1e

    .line 957
    return v9

    .line 960
    :cond_1e
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_83

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 961
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v8

    .line 962
    .local v8, "componentPerm":Ljava/lang/String;
    if-eqz v8, :cond_3a

    .line 963
    invoke-direct {v0, v8, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v11

    .line 964
    .local v11, "result":I
    if-nez v11, :cond_35

    .line 965
    return v9

    .line 967
    :cond_35
    move-object v6, v8

    .line 968
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 974
    .end local v11    # "result":I
    :cond_3a
    if-nez v8, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    move v11, v9

    .line 976
    .local v11, "allowDefaultRead":Z
    :goto_3f
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v12

    .line 977
    .local v12, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v12, :cond_7e

    .line 978
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 979
    .local v13, "path":Ljava/lang/String;
    array-length v14, v12

    move v15, v9

    :goto_4b
    if-ge v15, v14, :cond_79

    move/from16 v16, v9

    aget-object v9, v12, v15

    .line 980
    .local v9, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v9}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v10

    .line 981
    .local v10, "pathPerm":Ljava/lang/String;
    if-eqz v10, :cond_70

    invoke-virtual {v9, v13}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_70

    .line 982
    move-object/from16 v17, v6

    .end local v6    # "missingPerm":Ljava/lang/String;
    .local v17, "missingPerm":Ljava/lang/String;
    invoke-direct {v0, v10, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 983
    .local v6, "result":I
    if-nez v6, :cond_66

    .line 984
    return v16

    .line 988
    :cond_66
    const/4 v11, 0x0

    .line 989
    move-object/from16 v17, v10

    .line 990
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v17

    goto :goto_74

    .line 981
    .end local v17    # "missingPerm":Ljava/lang/String;
    .local v6, "missingPerm":Ljava/lang/String;
    :cond_70
    move-object/from16 v17, v6

    .line 979
    .end local v6    # "missingPerm":Ljava/lang/String;
    .end local v9    # "pp":Landroid/content/pm/PathPermission;
    .end local v10    # "pathPerm":Ljava/lang/String;
    .restart local v17    # "missingPerm":Ljava/lang/String;
    move-object/from16 v6, v17

    .end local v17    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :goto_74
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    goto :goto_4b

    :cond_79
    move-object/from16 v17, v6

    move/from16 v16, v9

    .end local v6    # "missingPerm":Ljava/lang/String;
    .restart local v17    # "missingPerm":Ljava/lang/String;
    goto :goto_80

    .line 977
    .end local v13    # "path":Ljava/lang/String;
    .end local v17    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :cond_7e
    move/from16 v16, v9

    .line 998
    :goto_80
    if-eqz v11, :cond_85

    return v16

    .line 960
    .end local v8    # "componentPerm":Ljava/lang/String;
    .end local v11    # "allowDefaultRead":Z
    .end local v12    # "pps":[Landroid/content/pm/PathPermission;
    :cond_83
    move/from16 v16, v9

    .line 1002
    :cond_85
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1003
    .local v8, "callingUserId":I
    iget-boolean v9, v0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    invoke-static {v8, v9}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result v9

    if-eqz v9, :cond_93

    .line 1004
    const/4 v9, 0x2

    return v9

    .line 1006
    :cond_93
    iget-boolean v9, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v9, :cond_a4

    iget v9, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v9, v5}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v9

    if-nez v9, :cond_a4

    .line 1007
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    goto :goto_a5

    :cond_a4
    move-object v9, v1

    .line 1008
    .local v9, "userUri":Landroid/net/Uri;
    :goto_a5
    const/4 v10, 0x1

    invoke-virtual {v3, v9, v4, v5, v10}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v11

    if-nez v11, :cond_ad

    .line 1010
    return v16

    .line 1015
    :cond_ad
    if-ne v7, v10, :cond_b0

    .line 1016
    return v10

    .line 1020
    :cond_b0
    const-string v10, "android.permission.MANAGE_DOCUMENTS"

    iget-object v11, v0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_db

    .line 1022
    iget-boolean v10, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v10, :cond_d8

    .line 1023
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", or grantUriPermission()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "suffix":Ljava/lang/String;
    goto :goto_dd

    .line 1025
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_d8
    const-string v10, " requires the provider be exported, or grantUriPermission()"

    .restart local v10    # "suffix":Ljava/lang/String;
    goto :goto_dd

    .line 1021
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_db
    const-string v10, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 1027
    .restart local v10    # "suffix":Ljava/lang/String;
    :goto_dd
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1028
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uri "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected blacklist enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .registers 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1037
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1038
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1039
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 1040
    .local v6, "missingPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1042
    .local v7, "strongestResult":I
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1e

    .line 1043
    return v9

    .line 1046
    :cond_1e
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_83

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 1047
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v8

    .line 1048
    .local v8, "componentPerm":Ljava/lang/String;
    if-eqz v8, :cond_3a

    .line 1049
    invoke-direct {v0, v8, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v11

    .line 1050
    .local v11, "mode":I
    if-nez v11, :cond_35

    .line 1051
    return v9

    .line 1053
    :cond_35
    move-object v6, v8

    .line 1054
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1060
    .end local v11    # "mode":I
    :cond_3a
    if-nez v8, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    move v11, v9

    .line 1062
    .local v11, "allowDefaultWrite":Z
    :goto_3f
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v12

    .line 1063
    .local v12, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v12, :cond_7e

    .line 1064
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1065
    .local v13, "path":Ljava/lang/String;
    array-length v14, v12

    move v15, v9

    :goto_4b
    if-ge v15, v14, :cond_79

    move/from16 v16, v9

    aget-object v9, v12, v15

    .line 1066
    .local v9, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v9}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v10

    .line 1067
    .local v10, "pathPerm":Ljava/lang/String;
    if-eqz v10, :cond_70

    invoke-virtual {v9, v13}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_70

    .line 1068
    move-object/from16 v17, v6

    .end local v6    # "missingPerm":Ljava/lang/String;
    .local v17, "missingPerm":Ljava/lang/String;
    invoke-direct {v0, v10, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 1069
    .local v6, "mode":I
    if-nez v6, :cond_66

    .line 1070
    return v16

    .line 1074
    :cond_66
    const/4 v11, 0x0

    .line 1075
    move-object/from16 v17, v10

    .line 1076
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v17

    goto :goto_74

    .line 1067
    .end local v17    # "missingPerm":Ljava/lang/String;
    .local v6, "missingPerm":Ljava/lang/String;
    :cond_70
    move-object/from16 v17, v6

    .line 1065
    .end local v6    # "missingPerm":Ljava/lang/String;
    .end local v9    # "pp":Landroid/content/pm/PathPermission;
    .end local v10    # "pathPerm":Ljava/lang/String;
    .restart local v17    # "missingPerm":Ljava/lang/String;
    move-object/from16 v6, v17

    .end local v17    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :goto_74
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    goto :goto_4b

    :cond_79
    move-object/from16 v17, v6

    move/from16 v16, v9

    .end local v6    # "missingPerm":Ljava/lang/String;
    .restart local v17    # "missingPerm":Ljava/lang/String;
    goto :goto_80

    .line 1063
    .end local v13    # "path":Ljava/lang/String;
    .end local v17    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :cond_7e
    move/from16 v16, v9

    .line 1084
    :goto_80
    if-eqz v11, :cond_85

    return v16

    .line 1046
    .end local v8    # "componentPerm":Ljava/lang/String;
    .end local v11    # "allowDefaultWrite":Z
    .end local v12    # "pps":[Landroid/content/pm/PathPermission;
    :cond_83
    move/from16 v16, v9

    .line 1088
    :cond_85
    const/4 v8, 0x2

    invoke-virtual {v3, v1, v4, v5, v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v8

    if-nez v8, :cond_8d

    .line 1090
    return v16

    .line 1095
    :cond_8d
    const/4 v8, 0x1

    if-ne v7, v8, :cond_91

    .line 1096
    return v8

    .line 1099
    :cond_91
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_af

    .line 1100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " requires "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or grantUriPermission()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_b1

    .line 1101
    :cond_af
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    :goto_b1
    nop

    .line 1102
    .local v8, "failReason":Ljava/lang/String;
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: writing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public greylist-max-o getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 1407
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final whitelist getCallingAttributionSource()Landroid/content/AttributionSource;
    .registers 5

    .line 1181
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1182
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_19

    .line 1183
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1184
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1183
    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1186
    :cond_19
    return-object v0
.end method

.method public final whitelist getCallingAttributionTag()Ljava/lang/String;
    .registers 3

    .line 1203
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1204
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_f

    .line 1205
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1207
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public final greylist getCallingFeatureId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1215
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 1163
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1164
    .local v0, "callingAttributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_b

    .line 1165
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1164
    :goto_c
    return-object v1
.end method

.method public final whitelist getCallingPackageUnchecked()Ljava/lang/String;
    .registers 3

    .line 1234
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1235
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_f

    .line 1236
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1238
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 1113
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist getIContentProvider()Landroid/content/IContentProvider;
    .registers 2

    .line 2597
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final whitelist getPathPermissions()[Landroid/content/pm/PathPermission;
    .registers 2

    .line 1393
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final whitelist getReadPermission()Ljava/lang/String;
    .registers 2

    .line 1349
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 2394
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public whitelist getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1770
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getWritePermission()Ljava/lang/String;
    .registers 2

    .line 1371
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1940
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist isTemporary()Z
    .registers 2

    .line 2586
    const/4 v0, 0x0

    return v0
.end method

.method protected final greylist-max-o matchesOurAuthorities(Ljava/lang/String;)Z
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1318
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1320
    :cond_b
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 1321
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    .line 1322
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_24

    .line 1323
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    return v2

    .line 1322
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1326
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCallingPackageChanged()V
    .registers 1

    .line 1250
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1461
    return-void
.end method

.method public abstract whitelist onCreate()Z
.end method

.method public whitelist onLowMemory()V
    .registers 1

    .line 1473
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .line 1477
    return-void
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2268
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2269
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_10

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2330
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2144
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2214
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2347
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2348
    .local p1, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 2349
    .local v1, "count":I
    :goto_17
    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    .line 2352
    if-eqz p1, :cond_1f

    .line 2353
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2355
    :cond_1f
    if-nez v1, :cond_3a

    .line 2356
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2358
    :cond_3a
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple items at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2361
    :cond_53
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2362
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2363
    .local v0, "i":I
    if-ltz v0, :cond_61

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    .line 2364
    .local v3, "path":Ljava/lang/String;
    :goto_62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2365
    if-eqz v3, :cond_75

    .line 2369
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v4

    .line 2370
    .local v4, "modeBits":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    return-object v5

    .line 2366
    .end local v4    # "modeBits":I
    :cond_75
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Column _data not found."

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .registers 15
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
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2559
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v4, v0

    .line 2561
    .local v4, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/content/ContentProvider$1;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_20

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v3, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "args":Ljava/lang/Object;, "TT;"
    .end local p5    # "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    .local v3, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    .local v5, "uri":Landroid/net/Uri;
    .local v6, "mimeType":Ljava/lang/String;
    .local v7, "opts":Landroid/os/Bundle;
    .local v8, "args":Ljava/lang/Object;, "TT;"
    :try_start_d
    invoke-direct/range {v1 .. v8}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 2573
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2575
    const/4 p1, 0x0

    aget-object p1, v4, p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_1d

    return-object p1

    .line 2576
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .end local v3    # "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "opts":Landroid/os/Bundle;
    .end local v8    # "args":Ljava/lang/Object;, "TT;"
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "args":Ljava/lang/Object;, "TT;"
    .restart local p5    # "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :catch_20
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v3, p5

    move-object p1, v0

    .line 2577
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "args":Ljava/lang/Object;, "TT;"
    .end local p5    # "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    .restart local v3    # "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "opts":Landroid/os/Bundle;
    .restart local v8    # "args":Ljava/lang/Object;, "TT;"
    .local p1, "e":Ljava/io/IOException;
    :goto_27
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string p3, "failure making pipe"

    invoke-direct {p2, p3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2444
    const-string v0, "*/*"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "r"

    if-eqz v0, :cond_10

    .line 2446
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 2448
    :cond_10
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2449
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2452
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 2454
    :cond_21
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2513
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1712
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1716
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .local v0, "queryArgs":Landroid/os/Bundle;
    :goto_6
    const-string p3, "android:query-arg-sql-sort-order"

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1717
    .local p3, "sortClause":Ljava/lang/String;
    if-nez p3, :cond_1c

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1718
    invoke-static {v0}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    goto :goto_1d

    .line 1721
    :cond_1c
    move-object v6, p3

    .end local p3    # "sortClause":Ljava/lang/String;
    .local v6, "sortClause":Ljava/lang/String;
    :goto_1d
    nop

    .line 1724
    const-string p3, "android:query-arg-sql-selection"

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1725
    const-string p3, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1721
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local v2, "uri":Landroid/net/Uri;
    .local v3, "projection":[Ljava/lang/String;
    .local v7, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1625
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1857
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1899
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist requireContext()Landroid/content/Context;
    .registers 4

    .line 1126
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1127
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_7

    .line 1130
    return-object v0

    .line 1128
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find context from the provider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V
    .registers 4
    .param p1, "identity"    # Landroid/content/ContentProvider$CallingIdentity;

    .line 1292
    iget-wide v0, p1, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1293
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    iget-object v1, p1, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1294
    return-void
.end method

.method public final greylist setAppOps(II)V
    .registers 4
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .line 1399
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_c

    .line 1400
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 1401
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 1403
    :cond_c
    return-void
.end method

.method protected final greylist-max-o setAuthorities(Ljava/lang/String;)V
    .registers 5
    .param p1, "authorities"    # Ljava/lang/String;

    .line 1304
    if-eqz p1, :cond_1b

    .line 1305
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 1306
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1307
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_1b

    .line 1309
    :cond_11
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1310
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 1313
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected final whitelist setPathPermissions([Landroid/content/pm/PathPermission;)V
    .registers 2
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .line 1382
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 1383
    return-void
.end method

.method protected final whitelist setReadPermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1338
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 1339
    return-void
.end method

.method public final blacklist setTransportLoggingEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1412
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-nez v0, :cond_5

    .line 1413
    return-void

    .line 1415
    :cond_5
    if-eqz p1, :cond_19

    .line 1416
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    new-instance v1, Landroid/content/LoggingContentInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/content/LoggingContentInterface;-><init>(Ljava/lang/String;Landroid/content/ContentInterface;)V

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    goto :goto_1d

    .line 1418
    :cond_19
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput-object p0, v0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 1420
    :goto_1d
    return-void
.end method

.method protected final whitelist setWritePermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1360
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 1361
    return-void
.end method

.method public whitelist shutdown()V
    .registers 3

    .line 2740
    const-string v0, "ContentProvider"

    const-string/jumbo v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    return-void
.end method

.method public whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p1, "url"    # Landroid/net/Uri;

    .line 1824
    return-object p1
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2073
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2074
    .end local p3    # "extras":Landroid/os/Bundle;
    .local v0, "extras":Landroid/os/Bundle;
    :goto_6
    nop

    .line 2075
    const-string p3, "android:query-arg-sql-selection"

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2076
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2074
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    return p3
.end method

.method public abstract whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public blacklist validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2773
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2774
    .local v0, "auth":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_7f

    .line 2775
    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 2776
    .local v2, "userId":I
    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-boolean v4, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    invoke-static {v3, v4}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result v3

    if-nez v3, :cond_60

    .line 2781
    if-eq v2, v1, :cond_7f

    .line 2784
    invoke-static {}, Landroid/multiuser/Flags;->fixGetUserPropertyCache()Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, -0x2710

    if-eq v2, v1, :cond_7f

    :cond_27
    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2786
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v2, v1, :cond_7f

    .line 2789
    invoke-direct {p0, v2}, Landroid/content/ContentProvider;->isContentRedirectionAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_7f

    .line 2790
    :cond_36
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to query a ContentProvider in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2791
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with a uri belonging to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2778
    :cond_60
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to query a SYSTEM user only content provider from user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2779
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2794
    .end local v2    # "userId":I
    :cond_7f
    :goto_7f
    invoke-direct {p0, v0}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 2799
    .local v1, "encodedPath":Ljava/lang/String;
    if-eqz v1, :cond_ce

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ce

    .line 2800
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2801
    const-string v3, "//+"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2802
    .local v2, "normalized":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Normalized "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to avoid possible security issues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    return-object v2

    .line 2806
    .end local v2    # "normalized":Landroid/net/Uri;
    :cond_ce
    return-object p1
.end method
