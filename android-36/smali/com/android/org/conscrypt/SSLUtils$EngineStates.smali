.class final Lcom/android/org/conscrypt/SSLUtils$EngineStates;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EngineStates"
.end annotation


# static fields
.field static final blacklist STATE_CLOSED:I = 0x8

.field static final blacklist STATE_CLOSED_INBOUND:I = 0x6

.field static final blacklist STATE_CLOSED_OUTBOUND:I = 0x7

.field static final blacklist STATE_HANDSHAKE_COMPLETED:I = 0x3

.field static final blacklist STATE_HANDSHAKE_STARTED:I = 0x2

.field static final blacklist STATE_MODE_SET:I = 0x1

.field static final blacklist STATE_NEW:I = 0x0

.field static final blacklist STATE_READY:I = 0x5

.field static final blacklist STATE_READY_HANDSHAKE_CUT_THROUGH:I = 0x4


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
