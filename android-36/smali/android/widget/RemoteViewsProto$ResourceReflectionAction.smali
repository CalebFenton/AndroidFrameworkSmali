.class public final Landroid/widget/RemoteViewsProto$ResourceReflectionAction;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResourceReflectionAction"
.end annotation


# static fields
.field public static final blacklist METHOD_NAME:J = 0x10900000002L

.field public static final blacklist PARAMETER_TYPE:J = 0x10500000005L

.field public static final blacklist RESOURCE_TYPE:J = 0x10500000003L

.field public static final blacklist RES_ID:J = 0x10900000004L

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

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
