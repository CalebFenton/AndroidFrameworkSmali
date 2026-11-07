.class public final Landroid/telecom/Connection$RttModifyStatus;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttModifyStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$RttModifyStatus$RttSessionModifyStatus;
    }
.end annotation


# static fields
.field public static final whitelist SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final whitelist SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final whitelist SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE:I = 0x5

.field public static final whitelist SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final whitelist SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
