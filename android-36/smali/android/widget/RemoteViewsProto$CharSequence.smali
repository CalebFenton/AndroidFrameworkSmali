.class public final Landroid/widget/RemoteViewsProto$CharSequence;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CharSequence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsProto$CharSequence$Span;
    }
.end annotation


# static fields
.field public static final blacklist SPANS:J = 0x20b00000002L

.field public static final blacklist TEXT:J = 0x10900000001L


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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
