.class final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;
.super Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EapMsChapV2ConfigUtils"
.end annotation


# static fields
.field private static final blacklist PASSWORD_KEY:Ljava/lang/String; = "PASSWORD_KEY"

.field private static final blacklist USERNAME_KEY:Ljava/lang/String; = "USERNAME_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;-><init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils-IA;)V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .param p1, "builder"    # Landroid/net/eap/EapSessionConfig$Builder;

    .line 225
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    const-string v0, "USERNAME_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASSWORD_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/eap/EapSessionConfig$Builder;->setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;

    .line 227
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "config"    # Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    .line 216
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 217
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "USERNAME_KEY"

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "PASSWORD_KEY"

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v0
.end method
