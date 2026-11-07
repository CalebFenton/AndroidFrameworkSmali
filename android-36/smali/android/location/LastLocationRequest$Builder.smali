.class public final Landroid/location/LastLocationRequest$Builder;
.super Ljava/lang/Object;
.source "LastLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LastLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdasGnssBypass:Z

.field private blacklist mHiddenFromAppOps:Z

.field private blacklist mLocationSettingsIgnored:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 185
    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    .line 186
    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    .line 187
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/LastLocationRequest;)V
    .registers 3
    .param p1, "lastLocationRequest"    # Landroid/location/LastLocationRequest;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Landroid/location/LastLocationRequest;->-$$Nest$fgetmHiddenFromAppOps(Landroid/location/LastLocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 194
    invoke-static {p1}, Landroid/location/LastLocationRequest;->-$$Nest$fgetmAdasGnssBypass(Landroid/location/LastLocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    .line 195
    invoke-static {p1}, Landroid/location/LastLocationRequest;->-$$Nest$fgetmLocationSettingsIgnored(Landroid/location/LastLocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/LastLocationRequest;
    .registers 6

    .line 259
    new-instance v0, Landroid/location/LastLocationRequest;

    iget-boolean v1, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    iget-boolean v2, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    iget-boolean v3, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/LastLocationRequest;-><init>(ZZZLandroid/location/LastLocationRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAdasGnssBypass(Z)Landroid/location/LastLocationRequest$Builder;
    .registers 2
    .param p1, "adasGnssBypass"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 231
    iput-boolean p1, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    .line 232
    return-object p0
.end method

.method public whitelist setHiddenFromAppOps(Z)Landroid/location/LastLocationRequest$Builder;
    .registers 2
    .param p1, "hiddenFromAppOps"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 211
    iput-boolean p1, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 212
    return-object p0
.end method

.method public whitelist setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;
    .registers 2
    .param p1, "locationSettingsIgnored"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 249
    iput-boolean p1, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    .line 250
    return-object p0
.end method
