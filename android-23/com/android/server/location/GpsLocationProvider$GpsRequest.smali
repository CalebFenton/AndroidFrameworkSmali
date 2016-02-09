.class Lcom/android/server/location/GpsLocationProvider$GpsRequest;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsRequest"
.end annotation


# instance fields
.field public request:Lcom/android/internal/location/ProviderRequest;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 254
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    #@5
    .line 255
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    #@7
    .line 253
    return-void
.end method
