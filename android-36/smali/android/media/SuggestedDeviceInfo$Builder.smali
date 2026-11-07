.class public final Landroid/media/SuggestedDeviceInfo$Builder;
.super Ljava/lang/Object;
.source "SuggestedDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SuggestedDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeviceDisplayName:Ljava/lang/String;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mRouteId:Ljava/lang/String;

.field private blacklist mType:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceDisplayName(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mDeviceDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/SuggestedDeviceInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteId(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mType:Ljava/lang/Integer;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/SuggestedDeviceInfo;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mDeviceDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 173
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mRouteId:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 177
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mType:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 181
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 185
    new-instance v0, Landroid/media/SuggestedDeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/SuggestedDeviceInfo;-><init>(Landroid/media/SuggestedDeviceInfo$Builder;Landroid/media/SuggestedDeviceInfo-IA;)V

    return-object v0

    .line 182
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extras cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route ID cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device display name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDeviceDisplayName(Ljava/lang/String;)Landroid/media/SuggestedDeviceInfo$Builder;
    .registers 4
    .param p1, "deviceDisplayName"    # Ljava/lang/String;

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 197
    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mDeviceDisplayName:Ljava/lang/String;

    .line 198
    return-object p0

    .line 195
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device display name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/media/SuggestedDeviceInfo$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 231
    const-string v0, "extras must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 232
    return-object p0
.end method

.method public blacklist setRouteId(Ljava/lang/String;)Landroid/media/SuggestedDeviceInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 210
    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mRouteId:Ljava/lang/String;

    .line 211
    return-object p0

    .line 208
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device display name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setType(I)Landroid/media/SuggestedDeviceInfo$Builder;
    .registers 3
    .param p1, "type"    # I

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mType:Ljava/lang/Integer;

    .line 217
    return-object p0
.end method
