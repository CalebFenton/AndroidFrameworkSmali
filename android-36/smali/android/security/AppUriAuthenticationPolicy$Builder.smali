.class public final Landroid/security/AppUriAuthenticationPolicy$Builder;
.super Ljava/lang/Object;
.source "AppUriAuthenticationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/AppUriAuthenticationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPackageNameToUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/UrisToAliases;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/security/AppUriAuthenticationPolicy$Builder;->mPackageNameToUris:Ljava/util/Map;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist addAppAndUriMapping(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/security/AppUriAuthenticationPolicy$Builder;
    .registers 6
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy$Builder;->mPackageNameToUris:Ljava/util/Map;

    new-instance v1, Landroid/security/UrisToAliases;

    invoke-direct {v1}, Landroid/security/UrisToAliases;-><init>()V

    .line 115
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/UrisToAliases;

    .line 116
    .local v0, "urisToAliases":Landroid/security/UrisToAliases;
    invoke-virtual {v0, p2, p3}, Landroid/security/UrisToAliases;->addUriToAlias(Landroid/net/Uri;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy$Builder;->mPackageNameToUris:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object p0
.end method

.method public blacklist addAppAndUriMapping(Ljava/lang/String;Landroid/security/UrisToAliases;)Landroid/security/AppUriAuthenticationPolicy$Builder;
    .registers 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "urisToAliases"    # Landroid/security/UrisToAliases;

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy$Builder;->mPackageNameToUris:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
.end method

.method public whitelist build()Landroid/security/AppUriAuthenticationPolicy;
    .registers 4

    .line 145
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy;

    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy$Builder;->mPackageNameToUris:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/AppUriAuthenticationPolicy;-><init>(Ljava/util/Map;Landroid/security/AppUriAuthenticationPolicy-IA;)V

    return-object v0
.end method
