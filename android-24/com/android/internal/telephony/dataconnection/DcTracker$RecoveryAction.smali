.class Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecoveryAction"
.end annotation


# static fields
.field public static final CLEANUP:I = 0x1

.field public static final GET_DATA_CALL_LIST:I = 0x0

.field public static final RADIO_RESTART:I = 0x3

.field public static final RADIO_RESTART_WITH_PROP:I = 0x4

.field public static final REREGISTER:I = 0x2


# direct methods
.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;->isAggressiveRecovery(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isAggressiveRecovery(I)Z
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 4622
    if-eq p0, v0, :cond_0

    #@3
    .line 4623
    const/4 v1, 0x2

    #@4
    if-ne p0, v1, :cond_1

    #@6
    .line 4622
    :cond_0
    :goto_0
    return v0

    #@7
    .line 4624
    :cond_1
    const/4 v1, 0x3

    #@8
    if-eq p0, v1, :cond_0

    #@a
    .line 4625
    const/4 v1, 0x4

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method
