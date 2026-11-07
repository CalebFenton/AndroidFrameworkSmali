.class public final Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "WebTriggerRegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/WebTriggerRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDestination:Landroid/net/Uri;

.field private blacklist mWebTriggerParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebTriggerParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDestination(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->mDestination:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWebTriggerParams(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->mWebTriggerParams:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/util/List;Landroid/net/Uri;)V
    .registers 6
    .param p2, "destination"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebTriggerParams;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 128
    .local p1, "webTriggerParams":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/measurement/WebTriggerParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_2a

    .line 137
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 141
    iput-object p1, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->mWebTriggerParams:Ljava/util/List;

    .line 142
    iput-object p2, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->mDestination:Landroid/net/Uri;

    .line 144
    return-void

    .line 139
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination origin must have a scheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web trigger params size is not within bounds, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .registers 3

    .line 149
    new-instance v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/WebTriggerRegistrationRequest;-><init>(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;Landroid/adservices/measurement/WebTriggerRegistrationRequest-IA;)V

    return-object v0
.end method
