.class public final Lcom/android/server/am/StickyBroadcastProto$StickyAction;
.super Ljava/lang/Object;
.source "StickyBroadcastProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StickyBroadcastProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StickyAction"
.end annotation


# static fields
.field public static final blacklist INTENTS:J = 0x20b00000002L

.field public static final blacklist NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/StickyBroadcastProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/StickyBroadcastProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
