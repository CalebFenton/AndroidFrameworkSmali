.class public final Landroid/companion/Telecom$Call;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/Telecom$Call$Origin;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_PROCESSING:I = 0x5

.field public static final blacklist CONTROLS:J = 0x20e00000004L

.field public static final blacklist DIALING:I = 0x8

.field public static final blacklist DIRECTION:J = 0x10e00000005L

.field public static final blacklist DISCONNECTED:I = 0x7

.field public static final blacklist ID:J = 0x10900000001L

.field public static final blacklist INCOMING:I = 0x1

.field public static final blacklist ONGOING:I = 0x2

.field public static final blacklist ON_HOLD:I = 0x3

.field public static final blacklist ORIGIN:J = 0x10b00000002L

.field public static final blacklist OUTGOING:I = 0x2

.field public static final blacklist RINGING:I = 0x1

.field public static final blacklist RINGING_SILENCED:I = 0x4

.field public static final blacklist RINGING_SIMULATED:I = 0x6

.field public static final blacklist STATUS:J = 0x10e00000003L

.field public static final blacklist UNKNOWN_DIRECTION:I

.field public static final blacklist UNKNOWN_STATUS:I


# direct methods
.method public constructor blacklist <init>(Landroid/companion/Telecom;)V
    .registers 2
    .param p1, "this$0"    # Landroid/companion/Telecom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
