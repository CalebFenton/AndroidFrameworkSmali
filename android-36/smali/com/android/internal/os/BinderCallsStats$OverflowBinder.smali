.class Lcom/android/internal/os/BinderCallsStats$OverflowBinder;
.super Landroid/os/Binder;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverflowBinder"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
