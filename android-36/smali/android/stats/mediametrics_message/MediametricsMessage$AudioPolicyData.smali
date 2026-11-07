.class public final Landroid/stats/mediametrics_message/MediametricsMessage$AudioPolicyData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioPolicyData"
.end annotation


# static fields
.field public static final blacklist ACTIVE_DEVICE:J = 0x10900000009L

.field public static final blacklist ACTIVE_PACKAGE:J = 0x10900000007L

.field public static final blacklist ACTIVE_SESSION:J = 0x10500000008L

.field public static final blacklist ACTIVE_SOURCE:J = 0x10900000006L

.field public static final blacklist REQUEST_DEVICE:J = 0x10900000005L

.field public static final blacklist REQUEST_PACKAGE:J = 0x10900000003L

.field public static final blacklist REQUEST_SESSION:J = 0x10500000004L

.field public static final blacklist REQUEST_SOURCE:J = 0x10900000002L

.field public static final blacklist STATUS:J = 0x10500000001L


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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
