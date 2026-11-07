.class public final synthetic Landroid/location/GpsStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/location/GpsStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/location/GpsStatus;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/GpsStatus$$ExternalSyntheticLambda0;->f$0:Landroid/location/GpsStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/location/GpsStatus$$ExternalSyntheticLambda0;->f$0:Landroid/location/GpsStatus;

    invoke-static {v0}, Landroid/location/GpsStatus;->$r8$lambda$jWnpP9tX-JwbkairoPQcaYTRp1Y(Landroid/location/GpsStatus;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
