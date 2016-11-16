.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_RETURN_VALUE:I = 0x2

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_RETURN_VALUE:I = 0x1

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@2
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@5
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@7
    .line 134
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@9
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@c
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@e
    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@10
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@13
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@15
    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@17
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@1a
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@1c
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 296
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 298
    .local v0, "current":I
    const v1, 0x1000011

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 299
    const v1, 0x3000011

    #@d
    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@10
    .line 295
    :cond_0
    :goto_0
    return-void

    #@11
    .line 300
    :cond_1
    const v1, 0x2000011

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 301
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@19
    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 10
    .param p0, "state"    # J

    #@0
    .prologue
    const-wide v2, -0x1010100000102L

    #@5
    const-wide v8, -0x2020200000203L

    #@a
    const-wide v6, -0x4040400000405L

    #@f
    const-wide/16 v4, 0x0

    #@11
    .line 518
    const-wide v0, 0x10000000000L

    #@16
    and-long/2addr v0, p0

    #@17
    cmp-long v0, v0, v4

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 519
    and-long v0, p0, v2

    #@1d
    const-wide/16 v2, 0x1

    #@1f
    or-long/2addr v0, v2

    #@20
    const-wide v2, 0x100000000L

    #@25
    or-long p0, v0, v2

    #@27
    .line 524
    :cond_0
    :goto_0
    const-wide v0, 0x20000000000L

    #@2c
    and-long/2addr v0, p0

    #@2d
    cmp-long v0, v0, v4

    #@2f
    if-eqz v0, :cond_4

    #@31
    .line 525
    and-long v0, p0, v8

    #@33
    const-wide/16 v2, 0x2

    #@35
    or-long/2addr v0, v2

    #@36
    const-wide v2, 0x200000000L

    #@3b
    or-long p0, v0, v2

    #@3d
    .line 530
    :cond_1
    :goto_1
    const-wide v0, 0x40000000000L

    #@42
    and-long/2addr v0, p0

    #@43
    cmp-long v0, v0, v4

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 531
    and-long v0, p0, v6

    #@49
    const-wide/16 v2, 0x4

    #@4b
    or-long/2addr v0, v2

    #@4c
    const-wide v2, 0x400000000L

    #@51
    or-long p0, v0, v2

    #@53
    .line 535
    :cond_2
    :goto_2
    return-wide p0

    #@54
    .line 520
    :cond_3
    const-wide/high16 v0, 0x1000000000000L

    #@56
    and-long/2addr v0, p0

    #@57
    cmp-long v0, v0, v4

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 521
    and-long/2addr p0, v2

    #@5c
    goto :goto_0

    #@5d
    .line 526
    :cond_4
    const-wide/high16 v0, 0x2000000000000L

    #@5f
    and-long/2addr v0, p0

    #@60
    cmp-long v0, v0, v4

    #@62
    if-eqz v0, :cond_1

    #@64
    .line 527
    and-long/2addr p0, v8

    #@65
    goto :goto_1

    #@66
    .line 532
    :cond_5
    const-wide/high16 v0, 0x4000000000000L

    #@68
    and-long/2addr v0, p0

    #@69
    cmp-long v0, v0, v4

    #@6b
    if-eqz v0, :cond_2

    #@6d
    .line 533
    and-long/2addr p0, v6

    #@6e
    goto :goto_2
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 273
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@2
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@5
    .line 274
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@7
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@a
    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@c
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@f
    .line 272
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "states"    # I

    #@0
    .prologue
    .line 422
    and-int/lit8 v0, p1, 0x1

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@6
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@9
    .line 423
    :cond_0
    and-int/lit8 v0, p1, 0x2

    #@b
    if-eqz v0, :cond_1

    #@d
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@f
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@12
    .line 424
    :cond_1
    and-int/lit8 v0, p1, 0x4

    #@14
    if-eqz v0, :cond_2

    #@16
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@18
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@1b
    .line 425
    :cond_2
    and-int/lit16 v0, p1, 0x800

    #@1d
    if-eqz v0, :cond_3

    #@1f
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@21
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@24
    .line 421
    :cond_3
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # Ljava/lang/Object;
    .param p2, "on"    # I
    .param p3, "lock"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 251
    instance-of v2, p0, Landroid/text/Spanned;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 252
    return v3

    #@6
    :cond_0
    move-object v1, p0

    #@7
    .line 255
    check-cast v1, Landroid/text/Spanned;

    #@9
    .line 256
    .local v1, "sp":Landroid/text/Spanned;
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 258
    .local v0, "flag":I
    const v2, 0x4000011

    #@10
    if-ne v0, v2, :cond_1

    #@12
    .line 259
    return p3

    #@13
    .line 260
    :cond_1
    if-eqz v0, :cond_2

    #@15
    .line 261
    return p2

    #@16
    .line 263
    :cond_2
    return v3
.end method

.method public static final getMetaState(J)I
    .locals 6
    .param p0, "state"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 458
    const/4 v0, 0x0

    #@3
    .line 460
    .local v0, "result":I
    const-wide/16 v2, 0x100

    #@5
    and-long/2addr v2, p0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-eqz v1, :cond_3

    #@a
    .line 461
    const/16 v0, 0x100

    #@c
    .line 466
    :cond_0
    :goto_0
    const-wide/16 v2, 0x200

    #@e
    and-long/2addr v2, p0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-eqz v1, :cond_4

    #@13
    .line 467
    or-int/lit16 v0, v0, 0x200

    #@15
    .line 472
    :cond_1
    :goto_1
    const-wide/16 v2, 0x400

    #@17
    and-long/2addr v2, p0

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-eqz v1, :cond_5

    #@1c
    .line 473
    or-int/lit16 v0, v0, 0x400

    #@1e
    .line 478
    :cond_2
    :goto_2
    return v0

    #@1f
    .line 462
    :cond_3
    const-wide/16 v2, 0x1

    #@21
    and-long/2addr v2, p0

    #@22
    cmp-long v1, v2, v4

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 463
    const/4 v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 468
    :cond_4
    const-wide/16 v2, 0x2

    #@2a
    and-long/2addr v2, p0

    #@2b
    cmp-long v1, v2, v4

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 469
    or-int/lit8 v0, v0, 0x2

    #@31
    goto :goto_1

    #@32
    .line 474
    :cond_5
    const-wide/16 v2, 0x4

    #@34
    and-long/2addr v2, p0

    #@35
    cmp-long v1, v2, v4

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 475
    or-int/lit8 v0, v0, 0x4

    #@3b
    goto :goto_2
.end method

.method public static final getMetaState(JI)I
    .locals 8
    .param p0, "state"    # J
    .param p2, "meta"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const-wide/16 v2, 0x0

    #@5
    .line 490
    packed-switch p2, :pswitch_data_0

    #@8
    .line 507
    :pswitch_0
    return v4

    #@9
    .line 492
    :pswitch_1
    const-wide/16 v0, 0x100

    #@b
    and-long/2addr v0, p0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-eqz v0, :cond_0

    #@10
    return v6

    #@11
    .line 493
    :cond_0
    const-wide/16 v0, 0x1

    #@13
    and-long/2addr v0, p0

    #@14
    cmp-long v0, v0, v2

    #@16
    if-eqz v0, :cond_1

    #@18
    return v5

    #@19
    .line 494
    :cond_1
    return v4

    #@1a
    .line 497
    :pswitch_2
    const-wide/16 v0, 0x200

    #@1c
    and-long/2addr v0, p0

    #@1d
    cmp-long v0, v0, v2

    #@1f
    if-eqz v0, :cond_2

    #@21
    return v6

    #@22
    .line 498
    :cond_2
    const-wide/16 v0, 0x2

    #@24
    and-long/2addr v0, p0

    #@25
    cmp-long v0, v0, v2

    #@27
    if-eqz v0, :cond_3

    #@29
    return v5

    #@2a
    .line 499
    :cond_3
    return v4

    #@2b
    .line 502
    :pswitch_3
    const-wide/16 v0, 0x400

    #@2d
    and-long/2addr v0, p0

    #@2e
    cmp-long v0, v0, v2

    #@30
    if-eqz v0, :cond_4

    #@32
    return v6

    #@33
    .line 503
    :cond_4
    const-wide/16 v0, 0x4

    #@35
    and-long/2addr v0, p0

    #@36
    cmp-long v0, v0, v2

    #@38
    if-eqz v0, :cond_5

    #@3a
    return v5

    #@3b
    .line 504
    :cond_5
    return v4

    #@3c
    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v4, 0x800

    #@2
    .line 160
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@4
    const/4 v1, 0x1

    #@5
    const/16 v2, 0x100

    #@7
    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@a
    move-result v0

    #@b
    .line 161
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@d
    const/4 v2, 0x2

    #@e
    const/16 v3, 0x200

    #@10
    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@13
    move-result v1

    #@14
    .line 160
    or-int/2addr v0, v1

    #@15
    .line 162
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@17
    const/4 v2, 0x4

    #@18
    const/16 v3, 0x400

    #@1a
    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@1d
    move-result v1

    #@1e
    .line 160
    or-int/2addr v0, v1

    #@1f
    .line 163
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@21
    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@24
    move-result v1

    #@25
    .line 160
    or-int/2addr v0, v1

    #@26
    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 200
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 214
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 202
    :sswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@9
    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 205
    :sswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@10
    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 208
    :sswitch_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@17
    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 211
    :sswitch_3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@1e
    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    #@21
    move-result v0

    #@22
    return v0

    #@23
    .line 200
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 232
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@5
    move-result v0

    #@6
    .line 233
    .local v0, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    #@d
    move-result v1

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 235
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    #@13
    move-result v1

    #@14
    or-int/2addr v0, v1

    #@15
    .line 237
    :cond_0
    const/16 v1, 0x800

    #@17
    if-ne v1, p1, :cond_2

    #@19
    .line 240
    and-int/lit16 v1, v0, 0x800

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 242
    return v3

    #@1e
    .line 244
    :cond_1
    return v2

    #@1f
    .line 246
    :cond_2
    int-to-long v2, v0

    #@20
    invoke-static {v2, v3, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    #@3
    move-result v0

    #@4
    .line 182
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    #@b
    move-result v1

    #@c
    .line 183
    const/4 v2, 0x1

    #@d
    .line 182
    if-ne v1, v2, :cond_0

    #@f
    .line 184
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    #@12
    move-result v1

    #@13
    or-int/2addr v0, v1

    #@14
    .line 186
    :cond_0
    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 16
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 542
    const/16 v2, 0x3b

    #@2
    move/from16 v0, p2

    #@4
    if-eq v0, v2, :cond_0

    #@6
    const/16 v2, 0x3c

    #@8
    move/from16 v0, p2

    #@a
    if-ne v0, v2, :cond_1

    #@c
    .line 544
    :cond_0
    const-wide/16 v8, 0x100

    #@e
    .line 543
    const/4 v5, 0x1

    #@f
    const-wide v6, 0x1010100000101L

    #@14
    .line 544
    const-wide v10, 0x10000000000L

    #@19
    const-wide/high16 v12, 0x1000000000000L

    #@1b
    const-wide v14, 0x100000000L

    #@20
    move-wide/from16 v3, p0

    #@22
    .line 543
    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    #@25
    move-result-wide v2

    #@26
    return-wide v2

    #@27
    .line 547
    :cond_1
    const/16 v2, 0x39

    #@29
    move/from16 v0, p2

    #@2b
    if-eq v0, v2, :cond_2

    #@2d
    const/16 v2, 0x3a

    #@2f
    move/from16 v0, p2

    #@31
    if-ne v0, v2, :cond_3

    #@33
    .line 550
    :cond_2
    const-wide/16 v8, 0x200

    #@35
    .line 549
    const/4 v5, 0x2

    #@36
    const-wide v6, 0x2020200000202L

    #@3b
    .line 550
    const-wide v10, 0x20000000000L

    #@40
    const-wide/high16 v12, 0x2000000000000L

    #@42
    const-wide v14, 0x200000000L

    #@47
    move-wide/from16 v3, p0

    #@49
    .line 549
    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    #@4c
    move-result-wide v2

    #@4d
    return-wide v2

    #@4e
    .line 548
    :cond_3
    const/16 v2, 0x4e

    #@50
    move/from16 v0, p2

    #@52
    if-eq v0, v2, :cond_2

    #@54
    .line 553
    const/16 v2, 0x3f

    #@56
    move/from16 v0, p2

    #@58
    if-ne v0, v2, :cond_4

    #@5a
    .line 555
    const-wide/16 v8, 0x400

    #@5c
    .line 554
    const/4 v5, 0x4

    #@5d
    const-wide v6, 0x4040400000404L

    #@62
    .line 555
    const-wide v10, 0x40000000000L

    #@67
    const-wide/high16 v12, 0x4000000000000L

    #@69
    const-wide v14, 0x400000000L

    #@6e
    move-wide/from16 v3, p0

    #@70
    .line 554
    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    #@73
    move-result-wide v2

    #@74
    return-wide v2

    #@75
    .line 557
    :cond_4
    return-wide p0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 16
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 580
    const/16 v2, 0x3b

    #@2
    move/from16 v0, p2

    #@4
    if-eq v0, v2, :cond_0

    #@6
    const/16 v2, 0x3c

    #@8
    move/from16 v0, p2

    #@a
    if-ne v0, v2, :cond_1

    #@c
    .line 581
    :cond_0
    const/4 v5, 0x1

    #@d
    const-wide v6, 0x1010100000101L

    #@12
    .line 582
    const-wide v8, 0x10000000000L

    #@17
    const-wide/high16 v10, 0x1000000000000L

    #@19
    const-wide v12, 0x100000000L

    #@1e
    move-wide/from16 v3, p0

    #@20
    move-object/from16 v14, p3

    #@22
    .line 581
    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    #@25
    move-result-wide v2

    #@26
    return-wide v2

    #@27
    .line 585
    :cond_1
    const/16 v2, 0x39

    #@29
    move/from16 v0, p2

    #@2b
    if-eq v0, v2, :cond_2

    #@2d
    const/16 v2, 0x3a

    #@2f
    move/from16 v0, p2

    #@31
    if-ne v0, v2, :cond_3

    #@33
    .line 587
    :cond_2
    const/4 v5, 0x2

    #@34
    const-wide v6, 0x2020200000202L

    #@39
    .line 588
    const-wide v8, 0x20000000000L

    #@3e
    const-wide/high16 v10, 0x2000000000000L

    #@40
    const-wide v12, 0x200000000L

    #@45
    move-wide/from16 v3, p0

    #@47
    move-object/from16 v14, p3

    #@49
    .line 587
    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    #@4c
    move-result-wide v2

    #@4d
    return-wide v2

    #@4e
    .line 586
    :cond_3
    const/16 v2, 0x4e

    #@50
    move/from16 v0, p2

    #@52
    if-eq v0, v2, :cond_2

    #@54
    .line 591
    const/16 v2, 0x3f

    #@56
    move/from16 v0, p2

    #@58
    if-ne v0, v2, :cond_4

    #@5a
    .line 592
    const/4 v5, 0x4

    #@5b
    const-wide v6, 0x4040400000404L

    #@60
    .line 593
    const-wide v8, 0x40000000000L

    #@65
    const-wide/high16 v10, 0x4000000000000L

    #@67
    const-wide v12, 0x400000000L

    #@6c
    move-wide/from16 v3, p0

    #@6e
    move-object/from16 v14, p3

    #@70
    .line 592
    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    #@73
    move-result-wide v2

    #@74
    return-wide v2

    #@75
    .line 595
    :cond_4
    return-wide p0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 283
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@3
    if-eq p1, v1, :cond_0

    #@5
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@7
    if-ne p1, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@c
    if-eq p1, v1, :cond_0

    #@e
    .line 284
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@10
    if-eq p1, v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 292
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private static press(JIJJJJJ)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "locked"    # J
    .param p7, "pressed"    # J
    .param p9, "released"    # J
    .param p11, "used"    # J

    #@0
    .prologue
    .line 562
    and-long v0, p0, p7

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 573
    :cond_0
    :goto_0
    return-wide p0

    #@9
    .line 564
    :cond_1
    and-long v0, p0, p9

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 565
    not-long v0, p3

    #@12
    and-long/2addr v0, p0

    #@13
    int-to-long v2, p2

    #@14
    or-long/2addr v0, v2

    #@15
    or-long p0, v0, p5

    #@17
    goto :goto_0

    #@18
    .line 566
    :cond_2
    and-long v0, p0, p11

    #@1a
    const-wide/16 v2, 0x0

    #@1c
    cmp-long v0, v0, v2

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 568
    and-long v0, p0, p5

    #@22
    const-wide/16 v2, 0x0

    #@24
    cmp-long v0, v0, v2

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 569
    not-long v0, p3

    #@29
    and-long/2addr p0, v0

    #@2a
    goto :goto_0

    #@2b
    .line 571
    :cond_3
    int-to-long v0, p2

    #@2c
    or-long/2addr v0, p7

    #@2d
    or-long/2addr p0, v0

    #@2e
    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const v4, 0x4000011

    #@3
    const v3, 0x1000011

    #@6
    const/4 v2, 0x0

    #@7
    .line 346
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 348
    .local v0, "state":I
    if-eq v0, v3, :cond_0

    #@d
    .line 350
    const v1, 0x2000011

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 351
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@15
    .line 345
    :cond_0
    :goto_0
    return-void

    #@16
    .line 352
    :cond_1
    const v1, 0x3000011

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 354
    if-ne v0, v4, :cond_2

    #@1d
    .line 355
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@20
    goto :goto_0

    #@21
    .line 357
    :cond_2
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@24
    goto :goto_0
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "pressed"    # J
    .param p7, "released"    # J
    .param p9, "used"    # J
    .param p11, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 600
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    #@9
    move-result v0

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 610
    not-long v0, p3

    #@e
    and-long/2addr p0, v0

    #@f
    .line 613
    :cond_0
    :goto_0
    return-wide p0

    #@10
    .line 602
    :pswitch_0
    and-long v0, p0, p9

    #@12
    cmp-long v0, v0, v2

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 603
    not-long v0, p3

    #@17
    and-long/2addr p0, v0

    #@18
    goto :goto_0

    #@19
    .line 604
    :cond_1
    and-long v0, p0, p5

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 605
    int-to-long v0, p2

    #@20
    or-long/2addr v0, p7

    #@21
    or-long/2addr p0, v0

    #@22
    goto :goto_0

    #@23
    .line 600
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 401
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 403
    .local v0, "current":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    #@c
    move-result v1

    #@d
    packed-switch v1, :pswitch_data_0

    #@10
    .line 412
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@13
    .line 400
    :cond_0
    :goto_0
    return-void

    #@14
    .line 405
    :pswitch_0
    const v1, 0x3000011

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 406
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@1c
    goto :goto_0

    #@1d
    .line 407
    :cond_1
    const v1, 0x1000011

    #@20
    if-ne v0, v1, :cond_0

    #@22
    .line 408
    const v1, 0x2000011

    #@25
    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@28
    goto :goto_0

    #@29
    .line 403
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 316
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 318
    .local v0, "current":I
    const v1, 0x4000011

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 319
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@c
    .line 315
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4
    .param p0, "state"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 433
    const-wide/16 v0, 0x100

    #@4
    and-long/2addr v0, p0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 434
    const-wide v0, -0x1010100000102L

    #@e
    and-long/2addr p0, v0

    #@f
    .line 436
    :cond_0
    const-wide/16 v0, 0x200

    #@11
    and-long/2addr v0, p0

    #@12
    cmp-long v0, v0, v2

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 437
    const-wide v0, -0x2020200000203L

    #@1b
    and-long/2addr p0, v0

    #@1c
    .line 439
    :cond_1
    const-wide/16 v0, 0x400

    #@1e
    and-long/2addr v0, p0

    #@1f
    cmp-long v0, v0, v2

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 440
    const-wide v0, -0x4040400000405L

    #@28
    and-long/2addr p0, v0

    #@29
    .line 442
    :cond_2
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 309
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@2
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@5
    .line 310
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@7
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@a
    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@c
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@f
    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@11
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    #@14
    .line 308
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 145
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@2
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@5
    .line 146
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@7
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@a
    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@c
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@f
    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@11
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@14
    .line 144
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 365
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@3
    const v1, 0x1000011

    #@6
    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@9
    .line 364
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 374
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    #@2
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@5
    .line 373
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 5
    .param p1, "state"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 623
    and-int/lit8 v0, p3, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    const-wide/16 v0, 0x100

    #@8
    and-long/2addr v0, p1

    #@9
    cmp-long v0, v0, v2

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 624
    const-wide v0, -0x1010100000102L

    #@12
    and-long/2addr p1, v0

    #@13
    .line 626
    :cond_0
    and-int/lit8 v0, p3, 0x2

    #@15
    if-eqz v0, :cond_1

    #@17
    const-wide/16 v0, 0x200

    #@19
    and-long/2addr v0, p1

    #@1a
    cmp-long v0, v0, v2

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 627
    const-wide v0, -0x2020200000203L

    #@23
    and-long/2addr p1, v0

    #@24
    .line 629
    :cond_1
    and-int/lit8 v0, p3, 0x4

    #@26
    if-eqz v0, :cond_2

    #@28
    const-wide/16 v0, 0x400

    #@2a
    and-long/2addr v0, p1

    #@2b
    cmp-long v0, v0, v2

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 630
    const-wide v0, -0x4040400000405L

    #@34
    and-long/2addr p1, v0

    #@35
    .line 632
    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    #@0
    .prologue
    .line 418
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    #@3
    .line 417
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 326
    const/16 v0, 0x3b

    #@3
    if-eq p3, v0, :cond_0

    #@5
    const/16 v0, 0x3c

    #@7
    if-ne p3, v0, :cond_1

    #@9
    .line 327
    :cond_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@b
    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    #@e
    .line 328
    return v1

    #@f
    .line 331
    :cond_1
    const/16 v0, 0x39

    #@11
    if-eq p3, v0, :cond_2

    #@13
    const/16 v0, 0x3a

    #@15
    if-ne p3, v0, :cond_3

    #@17
    .line 333
    :cond_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@19
    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    #@1c
    .line 334
    return v1

    #@1d
    .line 332
    :cond_3
    const/16 v0, 0x4e

    #@1f
    if-eq p3, v0, :cond_2

    #@21
    .line 337
    const/16 v0, 0x3f

    #@23
    if-ne p3, v0, :cond_4

    #@25
    .line 338
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@27
    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    #@2a
    .line 339
    return v1

    #@2b
    .line 342
    :cond_4
    const/4 v0, 0x0

    #@2c
    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 381
    const/16 v0, 0x3b

    #@3
    if-eq p3, v0, :cond_0

    #@5
    const/16 v0, 0x3c

    #@7
    if-ne p3, v0, :cond_1

    #@9
    .line 382
    :cond_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    #@b
    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    #@e
    .line 383
    return v1

    #@f
    .line 386
    :cond_1
    const/16 v0, 0x39

    #@11
    if-eq p3, v0, :cond_2

    #@13
    const/16 v0, 0x3a

    #@15
    if-ne p3, v0, :cond_3

    #@17
    .line 388
    :cond_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    #@19
    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    #@1c
    .line 389
    return v1

    #@1d
    .line 387
    :cond_3
    const/16 v0, 0x4e

    #@1f
    if-eq p3, v0, :cond_2

    #@21
    .line 392
    const/16 v0, 0x3f

    #@23
    if-ne p3, v0, :cond_4

    #@25
    .line 393
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    #@27
    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    #@2a
    .line 394
    return v1

    #@2b
    .line 397
    :cond_4
    const/4 v0, 0x0

    #@2c
    return v0
.end method
