.class public Landroid/drm/DrmInfoRequest;
.super Ljava/lang/Object;
.source "DrmInfoRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist TYPE_REGISTRATION_INFO:I = 0x1

.field public static final whitelist TYPE_RIGHTS_ACQUISITION_INFO:I = 0x3

.field public static final whitelist TYPE_RIGHTS_ACQUISITION_PROGRESS_INFO:I = 0x4

.field public static final whitelist TYPE_UNREGISTRATION_INFO:I = 0x2


# instance fields
.field private final greylist-max-o mInfoType:I

.field private final greylist-max-o mMimeType:Ljava/lang/String;

.field private final greylist-max-o mRequestInformation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "infoType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    .line 70
    iput p1, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    .line 71
    iput-object p2, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    return-void

    .line 73
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "infoType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o isValidType(I)Z
    .registers 2
    .param p0, "infoType"    # I

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_8

    goto :goto_6

    .line 159
    :pswitch_5
    const/4 v0, 0x1

    .line 162
    :goto_6
    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInfoType()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o isValid()Z
    .registers 3

    .line 147
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    .line 148
    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 147
    :goto_1d
    return v0
.end method

.method public whitelist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist keyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
