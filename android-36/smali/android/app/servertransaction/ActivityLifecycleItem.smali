.class public abstract Landroid/app/servertransaction/ActivityLifecycleItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityLifecycleItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/ActivityLifecycleItem$LifecycleState;
    }
.end annotation


# static fields
.field public static final greylist-max-o ON_CREATE:I = 0x1

.field public static final greylist-max-o ON_DESTROY:I = 0x6

.field public static final greylist-max-o ON_PAUSE:I = 0x4

.field public static final greylist-max-o ON_RESTART:I = 0x7

.field public static final greylist-max-o ON_RESUME:I = 0x3

.field public static final greylist-max-o ON_START:I = 0x2

.field public static final greylist-max-o ON_STOP:I = 0x5

.field public static final greylist-max-o PRE_ON_CREATE:I = 0x0

.field public static final greylist-max-o UNDEFINED:I = -0x1


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 58
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 59
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getTargetState()I
.end method

.method public blacklist isActivityLifecycleItem()Z
    .registers 2

    .line 70
    const/4 v0, 0x1

    return v0
.end method
