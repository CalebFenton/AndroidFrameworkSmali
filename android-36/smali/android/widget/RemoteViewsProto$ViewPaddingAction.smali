.class public final Landroid/widget/RemoteViewsProto$ViewPaddingAction;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewPaddingAction"
.end annotation


# static fields
.field public static final blacklist BOTTOM:J = 0x10500000005L

.field public static final blacklist LEFT:J = 0x10500000002L

.field public static final blacklist RIGHT:J = 0x10500000003L

.field public static final blacklist TOP:J = 0x10500000004L

.field public static final blacklist VIEW_ID:J = 0x10900000001L


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

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
