.class public final Landroid/adservices/measurement/WebTriggerParams$Builder;
.super Ljava/lang/Object;
.source "WebTriggerParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/WebTriggerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDebugKeyAllowed:Z

.field private final blacklist mRegistrationUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugKeyAllowed(Landroid/adservices/measurement/WebTriggerParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/adservices/measurement/WebTriggerParams$Builder;->mDebugKeyAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationUri(Landroid/adservices/measurement/WebTriggerParams$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebTriggerParams$Builder;->mRegistrationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 4
    .param p1, "registrationUri"    # Landroid/net/Uri;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 131
    iput-object p1, p0, Landroid/adservices/measurement/WebTriggerParams$Builder;->mRegistrationUri:Landroid/net/Uri;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebTriggerParams$Builder;->mDebugKeyAllowed:Z

    .line 133
    return-void

    .line 129
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registrationUri must have an HTTPS scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/measurement/WebTriggerParams;
    .registers 3

    .line 156
    new-instance v0, Landroid/adservices/measurement/WebTriggerParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/WebTriggerParams;-><init>(Landroid/adservices/measurement/WebTriggerParams$Builder;Landroid/adservices/measurement/WebTriggerParams-IA;)V

    return-object v0
.end method

.method public whitelist setDebugKeyAllowed(Z)Landroid/adservices/measurement/WebTriggerParams$Builder;
    .registers 2
    .param p1, "debugKeyAllowed"    # Z

    .line 145
    iput-boolean p1, p0, Landroid/adservices/measurement/WebTriggerParams$Builder;->mDebugKeyAllowed:Z

    .line 146
    return-object p0
.end method
