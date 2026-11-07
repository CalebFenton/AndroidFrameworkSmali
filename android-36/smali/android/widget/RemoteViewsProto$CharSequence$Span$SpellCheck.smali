.class public final Landroid/widget/RemoteViewsProto$CharSequence$Span$SpellCheck;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto$CharSequence$Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SpellCheck"
.end annotation


# static fields
.field public static final blacklist IN_PROGRESS:J = 0x10800000001L


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

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
