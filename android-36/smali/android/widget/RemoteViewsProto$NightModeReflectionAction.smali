.class public final Landroid/widget/RemoteViewsProto$NightModeReflectionAction;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NightModeReflectionAction"
.end annotation


# static fields
.field public static final blacklist DARK_COLOR_STATE_LIST:J = 0x10b00000008L

.field public static final blacklist DARK_ICON:J = 0x10b00000007L

.field public static final blacklist DARK_INT:J = 0x10500000009L

.field public static final blacklist LIGHT_COLOR_STATE_LIST:J = 0x10b00000005L

.field public static final blacklist LIGHT_ICON:J = 0x10b00000004L

.field public static final blacklist LIGHT_INT:J = 0x10500000006L

.field public static final blacklist METHOD_NAME:J = 0x10900000002L

.field public static final blacklist PARAMETER_TYPE:J = 0x10500000003L

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

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
