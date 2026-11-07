.class public final Lcom/android/nfc/cardemulation/AidRoutingManagerProto$Route;
.super Ljava/lang/Object;
.source "AidRoutingManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AidRoutingManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Route"
.end annotation


# static fields
.field public static final blacklist AIDS:J = 0x20900000002L

.field public static final blacklist ID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/nfc/cardemulation/AidRoutingManagerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AidRoutingManagerProto;
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
