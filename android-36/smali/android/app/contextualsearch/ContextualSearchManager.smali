.class public final Landroid/app/contextualsearch/ContextualSearchManager;
.super Ljava/lang/Object;
.source "ContextualSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/ContextualSearchManager$Entrypoint;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_LAUNCH_CONTEXTUAL_SEARCH:Ljava/lang/String; = "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ENTRYPOINT_LONG_PRESS_HOME:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_LONG_PRESS_META:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_LONG_PRESS_NAV_HANDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_LONG_PRESS_OVERVIEW:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_OVERVIEW_ACTION:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_OVERVIEW_MENU:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_SYSTEM_ACTION:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ENTRYPOINT:Ljava/lang/String; = "android.app.contextualsearch.extra.ENTRYPOINT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FLAG_SECURE_FOUND:Ljava/lang/String; = "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_INVOCATION_TIME_MS:Ljava/lang/String; = "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

.field public static final blacklist EXTRA_IS_AUDIO_PLAYING:Ljava/lang/String; = "android.app.contextualsearch.extra.IS_AUDIO_PLAYING"

.field public static final whitelist EXTRA_IS_MANAGED_PROFILE_VISIBLE:Ljava/lang/String; = "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SCREENSHOT:Ljava/lang/String; = "android.app.contextualsearch.extra.SCREENSHOT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_TOKEN:Ljava/lang/String; = "android.app.contextualsearch.extra.TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VISIBLE_PACKAGE_NAMES:Ljava/lang/String; = "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FEATURE_CONTEXTUAL_SEARCH:Ljava/lang/String; = "com.google.android.feature.CONTEXTUAL_SEARCH"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VALID_ENTRYPOINT_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mService:Landroid/app/contextualsearch/IContextualSearchManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 234
    new-instance v0, Ljava/util/HashSet;

    .line 235
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 236
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 237
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 238
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 239
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 240
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 241
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Integer;

    move-result-object v1

    .line 234
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->VALID_ENTRYPOINT_VALUES:Ljava/util/Set;

    .line 244
    const-class v0, Landroid/app/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 253
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    .line 254
    return-void
.end method


# virtual methods
.method public blacklist startContextualSearch()V
    .registers 2

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    invoke-interface {v0}, Landroid/app/contextualsearch/IContextualSearchManager;->startContextualSearchForForegroundApp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 303
    goto :goto_a

    .line 300
    :catch_6
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist startContextualSearch(I)V
    .registers 5
    .param p1, "entrypoint"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 276
    sget-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->VALID_ENTRYPOINT_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 281
    :try_start_c
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    invoke-interface {v0, p1}, Landroid/app/contextualsearch/IContextualSearchManager;->startContextualSearch(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 285
    goto :goto_16

    .line 282
    :catch_12
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void

    .line 277
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid entrypoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
