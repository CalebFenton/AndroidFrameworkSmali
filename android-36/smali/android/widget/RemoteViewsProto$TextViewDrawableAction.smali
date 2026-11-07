.class public final Landroid/widget/RemoteViewsProto$TextViewDrawableAction;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextViewDrawableAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsProto$TextViewDrawableAction$Icons;,
        Landroid/widget/RemoteViewsProto$TextViewDrawableAction$Resources;
    }
.end annotation


# static fields
.field public static final blacklist ICONS:J = 0x10b00000004L

.field public static final blacklist IS_RELATIVE:J = 0x10800000002L

.field public static final blacklist RESOURCES:J = 0x10b00000003L

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

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
