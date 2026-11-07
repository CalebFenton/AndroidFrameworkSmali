.class public final Lcom/android/server/am/StickyBroadcastProto;
.super Ljava/lang/Object;
.source "StickyBroadcastProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StickyBroadcastProto$StickyAction;
    }
.end annotation


# static fields
.field public static final blacklist ACTIONS:J = 0x20b00000002L

.field public static final blacklist USER:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
