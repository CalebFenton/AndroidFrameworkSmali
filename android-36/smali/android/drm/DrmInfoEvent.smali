.class public Landroid/drm/DrmInfoEvent;
.super Landroid/drm/DrmEvent;
.source "DrmInfoEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist TYPE_ACCOUNT_ALREADY_REGISTERED:I = 0x5

.field public static final whitelist TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT:I = 0x1

.field public static final whitelist TYPE_REMOVE_RIGHTS:I = 0x2

.field public static final whitelist TYPE_RIGHTS_INSTALLED:I = 0x3

.field public static final whitelist TYPE_RIGHTS_REMOVED:I = 0x6

.field public static final whitelist TYPE_WAIT_FOR_RIGHTS:I = 0x4


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 76
    invoke-direct {p0, p2}, Landroid/drm/DrmInfoEvent;->checkTypeValidity(I)V

    .line 77
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

    .line 91
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 92
    invoke-direct {p0, p2}, Landroid/drm/DrmInfoEvent;->checkTypeValidity(I)V

    .line 93
    return-void
.end method

.method private greylist-max-o checkTypeValidity(I)V
    .registers 4
    .param p1, "type"    # I

    .line 101
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x6

    if-le p1, v0, :cond_28

    .line 104
    :cond_6
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_28

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 106
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "msg":Ljava/lang/String;
    :cond_28
    :goto_28
    return-void
.end method
