.class public final Lcom/android/nfc/cardemulation/AidRoutingManagerProto;
.super Ljava/lang/Object;
.source "AidRoutingManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/AidRoutingManagerProto$Route;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_ROUTE:J = 0x10500000001L

.field public static final blacklist ROUTES:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
