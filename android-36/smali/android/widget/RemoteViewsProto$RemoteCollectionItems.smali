.class public final Landroid/widget/RemoteViewsProto$RemoteCollectionItems;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteCollectionItems"
.end annotation


# static fields
.field public static final blacklist ATTACHED:J = 0x10800000005L

.field public static final blacklist HAS_STABLE_IDS:J = 0x10800000003L

.field public static final blacklist IDS:J = 0x50300000001L

.field public static final blacklist VIEWS:J = 0x20b00000002L

.field public static final blacklist VIEW_TYPE_COUNT:J = 0x10500000004L


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViewsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/RemoteViewsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
