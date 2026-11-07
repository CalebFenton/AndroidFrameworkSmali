.class public final Landroid/widget/RemoteViewsProto$RemoteCollectionCache$Entry;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto$RemoteCollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# static fields
.field public static final blacklist ID:J = 0x10300000001L

.field public static final blacklist ITEMS:J = 0x10b00000003L

.field public static final blacklist URI:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViewsProto$RemoteCollectionCache;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/RemoteViewsProto$RemoteCollectionCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
