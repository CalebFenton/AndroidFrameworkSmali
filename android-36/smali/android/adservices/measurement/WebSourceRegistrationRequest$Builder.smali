.class public final Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/WebSourceRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppDestination:Landroid/net/Uri;

.field private blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mTopOriginUri:Landroid/net/Uri;

.field private blacklist mVerifiedDestination:Landroid/net/Uri;

.field private blacklist mWebDestination:Landroid/net/Uri;

.field private final blacklist mWebSourceParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppDestination(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mAppDestination:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputEvent(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/view/InputEvent;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopOriginUri(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mTopOriginUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerifiedDestination(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mVerifiedDestination:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWebDestination(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mWebDestination:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWebSourceParams(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mWebSourceParams:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/util/List;Landroid/net/Uri;)V
    .registers 6
    .param p2, "topOriginUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebSourceParams;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 261
    .local p1, "webSourceParams":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/measurement/WebSourceParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_1c

    .line 269
    iput-object p1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mWebSourceParams:Ljava/util/List;

    .line 270
    iput-object p2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mTopOriginUri:Landroid/net/Uri;

    .line 271
    return-void

    .line 265
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web source params size is not within bounds, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
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
.method public whitelist build()Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .registers 3

    .line 344
    new-instance v0, Landroid/adservices/measurement/WebSourceRegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/WebSourceRegistrationRequest;-><init>(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;Landroid/adservices/measurement/WebSourceRegistrationRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAppDestination(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .registers 6
    .param p1, "appDestination"    # Landroid/net/Uri;

    .line 295
    if-eqz p1, :cond_3c

    .line 296
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-app://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "destination":Landroid/net/Uri;
    goto :goto_29

    .line 300
    .end local v1    # "destination":Landroid/net/Uri;
    :cond_20
    const-string v1, "android-app"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 306
    move-object v1, p1

    .line 308
    .restart local v1    # "destination":Landroid/net/Uri;
    :goto_29
    iput-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mAppDestination:Landroid/net/Uri;

    goto :goto_3c

    .line 301
    .end local v1    # "destination":Landroid/net/Uri;
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 302
    const-string v3, "appDestination scheme must be %s or null. Received: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-object p0
.end method

.method public whitelist setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .registers 2
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 282
    iput-object p1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    .line 283
    return-object p0
.end method

.method public whitelist setVerifiedDestination(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .registers 2
    .param p1, "verifiedDestination"    # Landroid/net/Uri;

    .line 337
    iput-object p1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mVerifiedDestination:Landroid/net/Uri;

    .line 338
    return-object p0
.end method

.method public whitelist setWebDestination(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .registers 3
    .param p1, "webDestination"    # Landroid/net/Uri;

    .line 322
    if-eqz p1, :cond_9

    .line 323
    const-string v0, "Web destination"

    invoke-static {v0, p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest;->-$$Nest$smvalidateScheme(Ljava/lang/String;Landroid/net/Uri;)V

    .line 324
    iput-object p1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->mWebDestination:Landroid/net/Uri;

    .line 326
    :cond_9
    return-object p0
.end method
