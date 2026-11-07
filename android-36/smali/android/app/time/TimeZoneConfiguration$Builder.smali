.class public final Landroid/app/time/TimeZoneConfiguration$Builder;
.super Ljava/lang/Object;
.source "TimeZoneConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeZoneConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/app/time/TimeZoneConfiguration$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    .line 233
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/time/TimeZoneConfiguration;)V
    .registers 3
    .param p1, "toCopy"    # Landroid/app/time/TimeZoneConfiguration;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    .line 239
    invoke-virtual {p0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->mergeProperties(Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 240
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/time/TimeZoneConfiguration;
    .registers 3

    .line 292
    new-instance v0, Landroid/app/time/TimeZoneConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeZoneConfiguration;-><init>(Landroid/app/time/TimeZoneConfiguration$Builder;Landroid/app/time/TimeZoneConfiguration-IA;)V

    return-object v0
.end method

.method public blacklist mergeProperties(Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration$Builder;
    .registers 4
    .param p1, "other"    # Landroid/app/time/TimeZoneConfiguration;

    .line 250
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/time/TimeZoneConfiguration;->-$$Nest$fgetmBundle(Landroid/app/time/TimeZoneConfiguration;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 251
    return-object p0
.end method

.method public whitelist setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;
    .registers 4
    .param p1, "enabled"    # Z

    .line 265
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "autoDetectionEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    return-object p0
.end method

.method public whitelist setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;
    .registers 4
    .param p1, "enabled"    # Z

    .line 274
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "geoDetectionEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    return-object p0
.end method

.method public blacklist setNotificationsEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;
    .registers 4
    .param p1, "enabled"    # Z

    .line 285
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "notificationsEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    return-object p0
.end method

.method blacklist setPropertyBundleInternal(Landroid/os/Bundle;)Landroid/app/time/TimeZoneConfiguration$Builder;
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 256
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 257
    return-object p0
.end method
