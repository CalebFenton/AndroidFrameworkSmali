.class public Landroid/drm/DrmErrorEvent;
.super Landroid/drm/DrmEvent;
.source "DrmErrorEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist TYPE_ACQUIRE_DRM_INFO_FAILED:I = 0x7d8

.field public static final whitelist TYPE_NOT_SUPPORTED:I = 0x7d3

.field public static final whitelist TYPE_NO_INTERNET_CONNECTION:I = 0x7d5

.field public static final whitelist TYPE_OUT_OF_MEMORY:I = 0x7d4

.field public static final whitelist TYPE_PROCESS_DRM_INFO_FAILED:I = 0x7d6

.field public static final whitelist TYPE_REMOVE_ALL_RIGHTS_FAILED:I = 0x7d7

.field public static final whitelist TYPE_RIGHTS_NOT_INSTALLED:I = 0x7d1

.field public static final whitelist TYPE_RIGHTS_RENEWAL_NOT_ALLOWED:I = 0x7d2


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 86
    invoke-direct {p0, p2}, Landroid/drm/DrmErrorEvent;->checkTypeValidity(I)V

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .registers 5
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

    .line 100
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 101
    invoke-direct {p0, p2}, Landroid/drm/DrmErrorEvent;->checkTypeValidity(I)V

    .line 102
    return-void
.end method

.method private greylist-max-o checkTypeValidity(I)V
    .registers 4
    .param p1, "type"    # I

    .line 105
    const/16 v0, 0x7d1

    if-lt p1, v0, :cond_9

    const/16 v0, 0x7d8

    if-gt p1, v0, :cond_9

    .line 110
    return-void

    .line 107
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
