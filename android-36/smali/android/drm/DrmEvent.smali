.class public Landroid/drm/DrmEvent;
.super Ljava/lang/Object;
.source "DrmEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DRM_INFO_OBJECT:Ljava/lang/String; = "drm_info_object"

.field public static final whitelist DRM_INFO_STATUS_OBJECT:Ljava/lang/String; = "drm_info_status_object"

.field public static final whitelist TYPE_ALL_RIGHTS_REMOVED:I = 0x3e9

.field public static final whitelist TYPE_DRM_INFO_PROCESSED:I = 0x3ea


# instance fields
.field private greylist-max-o mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMessage:Ljava/lang/String;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUniqueId:I


# direct methods
.method protected constructor whitelist <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    .line 86
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    .line 87
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    .line 89
    if-eqz p3, :cond_16

    .line 90
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 92
    :cond_16
    return-void
.end method

.method protected constructor whitelist <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    .line 66
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    .line 67
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    .line 69
    if-eqz p3, :cond_16

    .line 70
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 73
    :cond_16
    if-eqz p4, :cond_1a

    .line 74
    iput-object p4, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    .line 76
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/drm/DrmEvent;->mType:I

    return v0
.end method

.method public whitelist getUniqueId()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    return v0
.end method
