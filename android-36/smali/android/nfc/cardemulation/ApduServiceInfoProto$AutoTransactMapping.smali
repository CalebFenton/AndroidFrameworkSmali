.class public final Landroid/nfc/cardemulation/ApduServiceInfoProto$AutoTransactMapping;
.super Ljava/lang/Object;
.source "ApduServiceInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoTransactMapping"
.end annotation


# static fields
.field public static final blacklist AID:J = 0x10900000001L

.field public static final blacklist SHOULD_AUTO_TRANSACT:J = 0x10800000002L


# direct methods
.method public constructor blacklist <init>(Landroid/nfc/cardemulation/ApduServiceInfoProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/nfc/cardemulation/ApduServiceInfoProto;
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
