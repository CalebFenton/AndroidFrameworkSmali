.class public abstract Landroid/net/connectivity/org/chromium/net/CronetProvider;
.super Ljava/lang/Object;
.source "CronetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    }
.end annotation


# static fields
.field private static final blacklist GMS_CORE_CRONET_PROVIDER_CLASS:Ljava/lang/String; = "com.google.android.gms.net.GmsCoreCronetProvider"

.field private static final blacklist JAVA_CRONET_PROVIDER_CLASS:Ljava/lang/String; = "org.chromium.net.impl.JavaCronetProvider"

.field private static final blacklist NATIVE_CRONET_PROVIDER_CLASS:Ljava/lang/String; = "android.net.connectivity.org.chromium.net.impl.NativeCronetProvider"

.field private static final blacklist PLAY_SERVICES_CRONET_PROVIDER_CLASS:Ljava/lang/String; = "com.google.android.gms.net.PlayServicesCronetProvider"

.field public static final blacklist PROVIDER_NAME_APP_PACKAGED:Ljava/lang/String; = "App-Packaged-Cronet-Provider"

.field public static final blacklist PROVIDER_NAME_FALLBACK:Ljava/lang/String; = "Fallback-Cronet-Provider"

.field private static final blacklist RES_KEY_CRONET_IMPL_CLASS:Ljava/lang/String; = "CronetProviderClassName"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    const-class v0, Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/CronetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_8

    .line 65
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/CronetProvider;->mContext:Landroid/content/Context;

    .line 66
    return-void

    .line 63
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist addCronetProviderFromResourceFile(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logSource"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;",
            "Ljava/util/Set<",
            "Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;",
            ">;)Z"
        }
    .end annotation

    .line 286
    .local p2, "providers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;>;"
    nop

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v2, "CronetProviderClassName"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "resId":I
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 293
    return v1

    .line 295
    :cond_15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_6c

    .line 300
    const-string v4, "com.google.android.gms.net.PlayServicesCronetProvider"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 301
    const-string v4, "com.google.android.gms.net.GmsCoreCronetProvider"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 302
    const-string v4, "org.chromium.net.impl.JavaCronetProvider"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 303
    const-string v4, "android.net.connectivity.org.chromium.net.impl.NativeCronetProvider"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_6c

    .line 307
    :cond_3c
    const/4 v1, 0x1

    invoke-static {p0, v3, p1, p2, v1}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->addCronetProviderImplByClassName(Landroid/content/Context;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;Z)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 308
    sget-object v4, Landroid/net/connectivity/org/chromium/net/CronetProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate Cronet implementation class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that is listed as in the app string resource file under "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_6b
    return v1

    .line 304
    :cond_6c
    :goto_6c
    return v1
.end method

.method private static blacklist addCronetProviderImplByClassName(Landroid/content/Context;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;Z)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "logSource"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    .param p4, "logError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;",
            "Ljava/util/Set<",
            "Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 229
    .local p3, "providers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 231
    .local v0, "loader":Ljava/lang/ClassLoader;
    nop

    .line 232
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 233
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/net/connectivity/org/chromium/net/CronetProvider;>;"
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    .line 234
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 235
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/net/connectivity/org/chromium/net/CronetProvider;>;"
    new-instance v5, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    invoke-direct {v5}, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;-><init>()V

    .line 236
    .local v5, "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/org/chromium/net/CronetProvider;

    iput-object v6, v5, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    .line 237
    iput-object p2, v5, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->logSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 238
    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_31} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_31} :catch_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_31} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_31} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_31} :catch_32

    .line 239
    return v3

    .line 248
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/net/connectivity/org/chromium/net/CronetProvider;>;"
    .end local v4    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/net/connectivity/org/chromium/net/CronetProvider;>;"
    .end local v5    # "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    :catch_32
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p1, p4, v2}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->logReflectiveOperationException(Ljava/lang/String;ZLjava/lang/Exception;)V

    goto :goto_4b

    .line 246
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_37
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {p1, p4, v2}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->logReflectiveOperationException(Ljava/lang/String;ZLjava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_4a

    .line 244
    :catch_3c
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {p1, p4, v2}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->logReflectiveOperationException(Ljava/lang/String;ZLjava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_4a

    .line 242
    :catch_41
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p1, p4, v2}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->logReflectiveOperationException(Ljava/lang/String;ZLjava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_4a

    .line 240
    :catch_46
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {p1, p4, v2}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->logReflectiveOperationException(Ljava/lang/String;ZLjava/lang/Exception;)V

    .line 250
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :goto_4a
    nop

    .line 251
    :goto_4b
    return v1
.end method

.method static blacklist getAllProviderInfos(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 186
    .local v0, "providers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;>;"
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {p0, v1, v0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->addCronetProviderFromResourceFile(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;)Z

    .line 188
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v2, "com.google.android.gms.net.PlayServicesCronetProvider"

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v0, v3}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->addCronetProviderImplByClassName(Landroid/content/Context;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;Z)Z

    .line 194
    const-string v1, "com.google.android.gms.net.GmsCoreCronetProvider"

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {p0, v1, v2, v0, v3}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->addCronetProviderImplByClassName(Landroid/content/Context;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;Z)Z

    .line 200
    const-string v1, "android.net.connectivity.org.chromium.net.impl.NativeCronetProvider"

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {p0, v1, v2, v0, v3}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->addCronetProviderImplByClassName(Landroid/content/Context;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;Z)Z

    .line 206
    const-string v1, "org.chromium.net.impl.JavaCronetProvider"

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {p0, v1, v2, v0, v3}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->addCronetProviderImplByClassName(Landroid/content/Context;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;Ljava/util/Set;Z)Z

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getAllProviders(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/CronetProvider;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/chromium/net/CronetProvider;>;"
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getAllProviderInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    .line 173
    .local v2, "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    iget-object v3, v2, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    goto :goto_d

    .line 175
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist logReflectiveOperationException(Ljava/lang/String;ZLjava/lang/Exception;)V
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "logError"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 260
    if-eqz p1, :cond_1b

    .line 261
    sget-object v0, Landroid/net/connectivity/org/chromium/net/CronetProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load provider class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 263
    :cond_1b
    sget-object v0, Landroid/net/connectivity/org/chromium/net/CronetProvider;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 264
    sget-object v0, Landroid/net/connectivity/org/chromium/net/CronetProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider class but it wasn\'t included in the app classpath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public abstract blacklist createBuilder()Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getVersion()Ljava/lang/String;
.end method

.method public abstract blacklist isEnabled()Z
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method
