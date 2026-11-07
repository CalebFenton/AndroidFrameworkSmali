.class public abstract Landroid/appwidget/AppWidgetManagerInternal;
.super Ljava/lang/Object;
.source "AppWidgetManagerInternal.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist applyResourceOverlaysToWidgets(Ljava/util/Set;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getHostedWidgetPackages(I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist unlockUser(I)V
.end method
