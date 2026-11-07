.class public final Landroid/stats/mediametrics_message/MediametricsMessage$ExtractorData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractorData"
.end annotation


# static fields
.field public static final blacklist ENTRY_POINT:J = 0x10e00000004L

.field public static final blacklist FORMAT:J = 0x10900000001L

.field public static final blacklist LOG_SESSION_ID:J = 0x10900000005L

.field public static final blacklist MIME:J = 0x10900000002L

.field public static final blacklist NDK_NO_JVM:I = 0x3

.field public static final blacklist NDK_WITH_JVM:I = 0x2

.field public static final blacklist OTHER:I = 0x4

.field public static final blacklist SDK:I = 0x1

.field public static final blacklist TRACKS:J = 0x10500000003L

.field public static final blacklist UNSET:I


# direct methods
.method public constructor blacklist <init>(Landroid/stats/mediametrics_message/MediametricsMessage;)V
    .registers 2
    .param p1, "this$0"    # Landroid/stats/mediametrics_message/MediametricsMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
