.class public final Landroid/os/UpdateEngine$UpdateStatusConstants;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateStatusConstants"
.end annotation


# static fields
.field public static final whitelist ATTEMPTING_ROLLBACK:I = 0x8

.field public static final whitelist CHECKING_FOR_UPDATE:I = 0x1

.field public static final whitelist DISABLED:I = 0x9

.field public static final whitelist DOWNLOADING:I = 0x3

.field public static final whitelist FINALIZING:I = 0x5

.field public static final whitelist IDLE:I = 0x0

.field public static final whitelist REPORTING_ERROR_EVENT:I = 0x7

.field public static final whitelist UPDATED_NEED_REBOOT:I = 0x6

.field public static final whitelist UPDATE_AVAILABLE:I = 0x2

.field public static final whitelist VERIFYING:I = 0x4


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
