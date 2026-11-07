.class public final Landroid/widget/RemoteViewsProto$SetDrawableTintAction;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SetDrawableTintAction"
.end annotation


# static fields
.field public static final blacklist COLOR_FILTER:J = 0x10500000003L

.field public static final blacklist FILTER_MODE:J = 0x10500000004L

.field public static final blacklist TARGET_BACKGROUND:J = 0x10800000002L

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

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
