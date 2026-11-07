.class public final Landroid/os/BugreportParams;
.super Ljava/lang/Object;
.source "BugreportParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BugreportParams$BugreportFlag;,
        Landroid/os/BugreportParams$BugreportMode;
    }
.end annotation


# static fields
.field public static final whitelist BUGREPORT_FLAG_DEFER_CONSENT:I = 0x2

.field public static final whitelist BUGREPORT_FLAG_KEEP_BUGREPORT_ON_RETRIEVAL:I = 0x4

.field public static final whitelist BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA:I = 0x1

.field public static final whitelist BUGREPORT_MODE_FULL:I = 0x0

.field public static final whitelist BUGREPORT_MODE_INTERACTIVE:I = 0x1

.field public static final blacklist BUGREPORT_MODE_MAX_VALUE:I = 0x7

.field public static final whitelist BUGREPORT_MODE_ONBOARDING:I = 0x7

.field public static final whitelist BUGREPORT_MODE_REMOTE:I = 0x2

.field public static final whitelist BUGREPORT_MODE_TELEPHONY:I = 0x4

.field public static final whitelist BUGREPORT_MODE_WEAR:I = 0x3

.field public static final whitelist BUGREPORT_MODE_WIFI:I = 0x5


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mMode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/os/BugreportParams;->mMode:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BugreportParams;->mFlags:I

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "flags"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/os/BugreportParams;->mMode:I

    .line 57
    iput p2, p0, Landroid/os/BugreportParams;->mFlags:I

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist getFlags()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/os/BugreportParams;->mFlags:I

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/os/BugreportParams;->mMode:I

    return v0
.end method
