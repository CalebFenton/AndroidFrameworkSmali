.class public final Lcom/android/nfc/cardemulation/SystemCodeRoutingManagerProto$T3tIdentifier;
.super Ljava/lang/Object;
.source "SystemCodeRoutingManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/SystemCodeRoutingManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "T3tIdentifier"
.end annotation


# static fields
.field public static final blacklist NFCID2:J = 0x10900000002L

.field public static final blacklist SYSTEM_CODE:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/nfc/cardemulation/SystemCodeRoutingManagerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/SystemCodeRoutingManagerProto;
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
