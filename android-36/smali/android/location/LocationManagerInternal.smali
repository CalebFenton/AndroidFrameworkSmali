.class public abstract Landroid/location/LocationManagerInternal;
.super Ljava/lang/Object;
.source "LocationManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManagerInternal$LocationPackageTagsListener;,
        Landroid/location/LocationManagerInternal$ProviderEnabledListener;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
.end method

.method public abstract blacklist getGnssTimeMillis()Landroid/location/LocationTime;
.end method

.method public abstract blacklist isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
.end method

.method public abstract blacklist isProviderEnabledForUser(Ljava/lang/String;I)Z
.end method

.method public abstract blacklist removeProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
.end method

.method public abstract blacklist setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V
.end method
