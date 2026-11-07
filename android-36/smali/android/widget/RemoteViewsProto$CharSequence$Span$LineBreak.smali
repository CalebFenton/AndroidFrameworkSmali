.class public final Landroid/widget/RemoteViewsProto$CharSequence$Span$LineBreak;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto$CharSequence$Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LineBreak"
.end annotation


# static fields
.field public static final blacklist HYPHENATION:J = 0x10500000003L

.field public static final blacklist LINE_BREAK_STYLE:J = 0x10500000001L

.field public static final blacklist LINE_BREAK_WORD_STYLE:J = 0x10500000002L


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

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
