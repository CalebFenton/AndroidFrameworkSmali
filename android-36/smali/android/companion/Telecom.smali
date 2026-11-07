.class public final Landroid/companion/Telecom;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/Telecom$CallFacilitator;,
        Landroid/companion/Telecom$Request;,
        Landroid/companion/Telecom$Call;
    }
.end annotation


# static fields
.field public static final blacklist ACCEPT:I = 0x1

.field public static final blacklist CALLS:J = 0x20b00000001L

.field public static final blacklist END:I = 0x6

.field public static final blacklist FACILITATORS:J = 0x20b00000003L

.field public static final blacklist MUTE:I = 0x4

.field public static final blacklist PUT_ON_HOLD:I = 0x7

.field public static final blacklist REJECT:I = 0x2

.field public static final blacklist REQUESTS:J = 0x20b00000002L

.field public static final blacklist SILENCE:I = 0x3

.field public static final blacklist TAKE_OFF_HOLD:I = 0x8

.field public static final blacklist UNKNOWN_CONTROL:I = 0x0

.field public static final blacklist UNMUTE:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
