.class public Landroid/net/connectivity/org/chromium/net/impl/UrlRequestUtil;
.super Ljava/lang/Object;
.source "UrlRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/UrlRequestUtil$StatusValues;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 13
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertLoadState(I)I
    .registers 3
    .param p0, "loadState"    # I

    .line 43
    nop

    .line 44
    packed-switch p0, :pswitch_data_32

    .line 94
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No request status found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_c
    const/16 v0, 0xe

    return v0

    .line 85
    :pswitch_f
    const/16 v0, 0xd

    return v0

    .line 82
    :pswitch_12
    const/16 v0, 0xc

    return v0

    .line 79
    :pswitch_15
    const/16 v0, 0xb

    return v0

    .line 76
    :pswitch_18
    const/16 v0, 0xa

    return v0

    .line 73
    :pswitch_1b
    const/16 v0, 0x9

    return v0

    .line 70
    :pswitch_1e
    const/16 v0, 0x8

    return v0

    .line 67
    :pswitch_21
    const/4 v0, 0x7

    return v0

    .line 64
    :pswitch_23
    const/4 v0, 0x6

    return v0

    .line 61
    :pswitch_25
    const/4 v0, 0x5

    return v0

    .line 58
    :pswitch_27
    const/4 v0, 0x4

    return v0

    .line 55
    :pswitch_29
    const/4 v0, 0x3

    return v0

    .line 52
    :pswitch_2b
    const/4 v0, 0x2

    return v0

    .line 49
    :pswitch_2d
    const/4 v0, 0x1

    return v0

    .line 46
    :pswitch_2f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_4
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method
