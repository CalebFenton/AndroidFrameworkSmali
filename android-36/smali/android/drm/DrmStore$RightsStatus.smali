.class public Landroid/drm/DrmStore$RightsStatus;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightsStatus"
.end annotation


# static fields
.field public static final whitelist RIGHTS_EXPIRED:I = 0x2

.field public static final whitelist RIGHTS_INVALID:I = 0x1

.field public static final whitelist RIGHTS_NOT_ACQUIRED:I = 0x3

.field public static final whitelist RIGHTS_VALID:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
