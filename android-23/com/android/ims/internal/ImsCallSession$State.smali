.class public Lcom/android/ims/internal/ImsCallSession$State;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ESTABLISHED:I = 0x4

.field public static final ESTABLISHING:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final INITIATED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NEGOTIATING:I = 0x2

.field public static final REESTABLISHING:I = 0x6

.field public static final RENEGOTIATING:I = 0x5

.field public static final TERMINATED:I = 0x8

.field public static final TERMINATING:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    #@3
    .line 81
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 63
    :pswitch_0
    const-string/jumbo v0, "IDLE"

    #@a
    return-object v0

    #@b
    .line 65
    :pswitch_1
    const-string/jumbo v0, "INITIATED"

    #@e
    return-object v0

    #@f
    .line 67
    :pswitch_2
    const-string/jumbo v0, "NEGOTIATING"

    #@12
    return-object v0

    #@13
    .line 69
    :pswitch_3
    const-string/jumbo v0, "ESTABLISHING"

    #@16
    return-object v0

    #@17
    .line 71
    :pswitch_4
    const-string/jumbo v0, "ESTABLISHED"

    #@1a
    return-object v0

    #@1b
    .line 73
    :pswitch_5
    const-string/jumbo v0, "RENEGOTIATING"

    #@1e
    return-object v0

    #@1f
    .line 75
    :pswitch_6
    const-string/jumbo v0, "REESTABLISHING"

    #@22
    return-object v0

    #@23
    .line 77
    :pswitch_7
    const-string/jumbo v0, "TERMINATING"

    #@26
    return-object v0

    #@27
    .line 79
    :pswitch_8
    const-string/jumbo v0, "TERMINATED"

    #@2a
    return-object v0

    #@2b
    .line 61
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
