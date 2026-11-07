.class public abstract Landroid/media/quality/MediaQualityManager$SoundProfileCallback;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SoundProfileCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 1154
    return-void
.end method

.method public whitelist onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;)V"
        }
    .end annotation

    .line 1166
    .local p2, "updatedCaps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    return-void
.end method

.method public whitelist onSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 3
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 1124
    return-void
.end method

.method public whitelist onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 3
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 1144
    return-void
.end method

.method public whitelist onSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 3
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 1134
    return-void
.end method
