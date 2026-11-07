.class public final Landroid/app/admin/PolicyUpdateResult;
.super Ljava/lang/Object;
.source "PolicyUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PolicyUpdateResult$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist RESULT_FAILURE_CONFLICTING_ADMIN_POLICY:I = 0x1

.field public static final whitelist RESULT_FAILURE_HARDWARE_LIMITATION:I = 0x4

.field public static final whitelist RESULT_FAILURE_STORAGE_LIMIT_REACHED:I = 0x3

.field public static final whitelist RESULT_FAILURE_UNKNOWN:I = -0x1

.field public static final whitelist RESULT_POLICY_CLEARED:I = 0x2

.field public static final whitelist RESULT_POLICY_SET:I


# instance fields
.field private final blacklist mResultCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Landroid/app/admin/PolicyUpdateResult;->mResultCode:I

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist getResultCode()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/app/admin/PolicyUpdateResult;->mResultCode:I

    return v0
.end method
