.class public Landroid/drm/DrmEvent;
.super Ljava/lang/Object;
.source "DrmEvent.java"


# static fields
.field public static final DRM_INFO_OBJECT:Ljava/lang/String; = "drm_info_object"

.field public static final DRM_INFO_STATUS_OBJECT:Ljava/lang/String; = "drm_info_status_object"

.field public static final TYPE_ALL_RIGHTS_REMOVED:I = 0x3e9

.field public static final TYPE_DRM_INFO_PROCESSED:I = 0x3ea


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private final mType:I

.field private final mUniqueId:I


# direct methods
.method protected constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    #@f
    .line 84
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    #@11
    .line 85
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    #@13
    .line 87
    if-eqz p3, :cond_0

    #@15
    .line 88
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    #@17
    .line 83
    :cond_0
    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    #@f
    .line 64
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    #@11
    .line 65
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    #@13
    .line 67
    if-eqz p3, :cond_0

    #@15
    .line 68
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    #@17
    .line 71
    :cond_0
    if-eqz p4, :cond_1

    #@19
    .line 72
    iput-object p4, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    #@1b
    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/drm/DrmEvent;->mType:I

    #@2
    return v0
.end method

.method public getUniqueId()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    #@2
    return v0
.end method
