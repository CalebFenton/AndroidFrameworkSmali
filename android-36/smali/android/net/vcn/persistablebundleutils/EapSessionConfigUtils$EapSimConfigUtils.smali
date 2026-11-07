.class final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;
.super Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EapSimConfigUtils"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;-><init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils-IA;)V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .param p1, "builder"    # Landroid/net/eap/EapSessionConfig$Builder;

    .line 168
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const-string v0, "SUB_ID_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "APP_TYPE_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/net/eap/EapSessionConfig$Builder;->setEapSimConfig(II)Landroid/net/eap/EapSessionConfig$Builder;

    .line 170
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapSimConfig;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "config"    # Landroid/net/eap/EapSessionConfig$EapSimConfig;

    .line 163
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapUiccConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method
