.class public final Landroid/adservices/measurement/SourceRegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceRegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/SourceRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mRegistrationUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInputEvent(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;)Landroid/view/InputEvent;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/SourceRegistrationRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationUris(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/SourceRegistrationRequest$Builder;->mRegistrationUris:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "registrationUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x14

    if-nez v0, :cond_42

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_42

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 138
    .local v1, "registrationUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 139
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 143
    .end local v1    # "registrationUri":Landroid/net/Uri;
    goto :goto_18

    .line 140
    .restart local v1    # "registrationUri":Landroid/net/Uri;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "registrationUri must have an HTTPS scheme"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v1    # "registrationUri":Landroid/net/Uri;
    :cond_3f
    iput-object p1, p0, Landroid/adservices/measurement/SourceRegistrationRequest$Builder;->mRegistrationUris:Ljava/util/List;

    .line 145
    return-void

    .line 131
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 132
    const-string v2, "Requests should have at least 1 and at most %d URIs. Request has %d URIs."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/measurement/SourceRegistrationRequest;
    .registers 3

    .line 164
    new-instance v0, Landroid/adservices/measurement/SourceRegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/SourceRegistrationRequest;-><init>(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;Landroid/adservices/measurement/SourceRegistrationRequest-IA;)V

    return-object v0
.end method

.method public whitelist setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/measurement/SourceRegistrationRequest$Builder;
    .registers 2
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 157
    iput-object p1, p0, Landroid/adservices/measurement/SourceRegistrationRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    .line 158
    return-object p0
.end method
