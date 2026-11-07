.class public final Landroid/widget/RemoteViewsProto$CharSequence$Span$Bullet;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto$CharSequence$Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Bullet"
.end annotation


# static fields
.field public static final blacklist BULLET_RADIUS:J = 0x10500000003L

.field public static final blacklist COLOR:J = 0x10500000002L

.field public static final blacklist GAP_WIDTH:J = 0x10500000001L

.field public static final blacklist WANT_COLOR:J = 0x10800000004L


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViewsProto$CharSequence$Span;)V
    .registers 2
    .param p1, "this$2"    # Landroid/widget/RemoteViewsProto$CharSequence$Span;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
