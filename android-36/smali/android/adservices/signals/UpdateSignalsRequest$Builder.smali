.class public final Landroid/adservices/signals/UpdateSignalsRequest$Builder;
.super Ljava/lang/Object;
.source "UpdateSignalsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/signals/UpdateSignalsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "updateUri"    # Landroid/net/Uri;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsRequest$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/signals/UpdateSignalsRequest;
    .registers 4

    .line 110
    new-instance v0, Landroid/adservices/signals/UpdateSignalsRequest;

    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsRequest$Builder;->mUpdateUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/adservices/signals/UpdateSignalsRequest;-><init>(Landroid/net/Uri;Landroid/adservices/signals/UpdateSignalsRequest-IA;)V

    return-object v0
.end method

.method public whitelist setUpdateUri(Landroid/net/Uri;)Landroid/adservices/signals/UpdateSignalsRequest$Builder;
    .registers 3
    .param p1, "updateUri"    # Landroid/net/Uri;

    .line 98
    const-string v0, "updateUri must not be null in UpdateSignalsRequest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsRequest$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 100
    return-object p0
.end method
