.class Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueHolder"
.end annotation


# instance fields
.field blacklist name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist next:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
