.class public final Lcom/android/server/wm/KeyguardServiceDelegateProto;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegateProto.java"


# static fields
.field public static final blacklist INTERACTIVE_STATE:J = 0x10e00000005L

.field public static final blacklist INTERACTIVE_STATE_AWAKE:I = 0x2

.field public static final blacklist INTERACTIVE_STATE_GOING_TO_SLEEP:I = 0x3

.field public static final blacklist INTERACTIVE_STATE_SLEEP:I = 0x0

.field public static final blacklist INTERACTIVE_STATE_WAKING:I = 0x1

.field public static final blacklist OCCLUDED:J = 0x10800000002L

.field public static final blacklist SCREEN_STATE:J = 0x10e00000004L

.field public static final blacklist SCREEN_STATE_OFF:I = 0x0

.field public static final blacklist SCREEN_STATE_ON:I = 0x2

.field public static final blacklist SCREEN_STATE_TURNING_OFF:I = 0x3

.field public static final blacklist SCREEN_STATE_TURNING_ON:I = 0x1

.field public static final blacklist SECURE:J = 0x10800000003L

.field public static final blacklist SHOWING:J = 0x10800000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
