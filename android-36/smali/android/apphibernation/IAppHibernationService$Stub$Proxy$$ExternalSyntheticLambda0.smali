.class public final synthetic Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcel;

.field public final synthetic blacklist f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iput-object p2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget-object v1, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->lambda$getHibernationStatsForUser$0(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method
