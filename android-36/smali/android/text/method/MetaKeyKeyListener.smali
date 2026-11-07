.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final greylist-max-o ALT:Ljava/lang/Object;

.field private static final greylist-max-o CAP:Ljava/lang/Object;

.field private static final greylist-max-o LOCKED:I = 0x4000011

.field private static final greylist-max-o LOCKED_RETURN_VALUE:I = 0x2

.field public static final whitelist META_ALT_LOCKED:I = 0x200

.field private static final greylist-max-o META_ALT_MASK:J = 0x2020200000202L

.field public static final whitelist META_ALT_ON:I = 0x2

.field private static final greylist-max-o META_ALT_PRESSED:J = 0x20000000000L

.field private static final greylist-max-o META_ALT_RELEASED:J = 0x2000000000000L

.field private static final greylist-max-o META_ALT_USED:J = 0x200000000L

.field public static final whitelist META_CAP_LOCKED:I = 0x100

.field private static final greylist-max-o META_CAP_PRESSED:J = 0x10000000000L

.field private static final greylist-max-o META_CAP_RELEASED:J = 0x1000000000000L

.field private static final greylist-max-o META_CAP_USED:J = 0x100000000L

.field public static final greylist-max-o META_SELECTING:I = 0x800

.field private static final greylist-max-o META_SHIFT_MASK:J = 0x1010100000101L

.field public static final whitelist META_SHIFT_ON:I = 0x1

.field public static final whitelist META_SYM_LOCKED:I = 0x400

.field private static final greylist-max-o META_SYM_MASK:J = 0x4040400000404L

.field public static final whitelist META_SYM_ON:I = 0x4

.field private static final greylist-max-o META_SYM_PRESSED:J = 0x40000000000L

.field private static final greylist-max-o META_SYM_RELEASED:J = 0x4000000000000L

.field private static final greylist-max-o META_SYM_USED:J = 0x400000000L

.field private static final greylist-max-o PRESSED:I = 0x1000011

.field private static final greylist-max-o PRESSED_RETURN_VALUE:I = 0x1

.field private static final greylist-max-o RELEASED:I = 0x2000011

.field private static final greylist-max-o SELECTING:Ljava/lang/Object;

.field private static final greylist-max-o SYM:Ljava/lang/Object;

.field private static final greylist-max-o USED:I = 0x3000011


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .line 298
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 300
    .local v0, "current":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 301
    const v1, 0x3000011

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    .line 302
    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_19

    .line 303
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 304
    :cond_19
    :goto_19
    return-void
.end method

.method public static whitelist adjustMetaAfterKeypress(J)J
    .registers 8
    .param p0, "state"    # J

    .line 522
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_1e

    .line 523
    and-long v0, p0, v4

    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    const-wide v4, 0x100000000L

    or-long p0, v0, v4

    goto :goto_26

    .line 524
    :cond_1e
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 525
    and-long/2addr p0, v4

    .line 528
    :cond_26
    :goto_26
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_42

    .line 529
    and-long v0, p0, v4

    const-wide/16 v4, 0x2

    or-long/2addr v0, v4

    const-wide v4, 0x200000000L

    or-long p0, v0, v4

    goto :goto_4a

    .line 530
    :cond_42
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 531
    and-long/2addr p0, v4

    .line 534
    :cond_4a
    :goto_4a
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_66

    .line 535
    and-long v0, p0, v4

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    goto :goto_6e

    .line 536
    :cond_66
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6e

    .line 537
    and-long/2addr p0, v4

    .line 539
    :cond_6e
    :goto_6e
    return-wide p0
.end method

.method public static whitelist adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "content"    # Landroid/text/Spannable;

    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 276
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 277
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static whitelist clearMetaKeyState(Landroid/text/Editable;I)V
    .registers 3
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "states"    # I

    .line 426
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 427
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 428
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 429
    :cond_1b
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_24

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 430
    :cond_24
    return-void
.end method

.method private static greylist-max-o getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # Ljava/lang/Object;
    .param p2, "on"    # I
    .param p3, "lock"    # I

    .line 253
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 254
    return v1

    .line 257
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 258
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 260
    .local v2, "flag":I
    const v3, 0x4000011

    if-ne v2, v3, :cond_13

    .line 261
    return p3

    .line 262
    :cond_13
    if-eqz v2, :cond_16

    .line 263
    return p2

    .line 265
    :cond_16
    return v1
.end method

.method public static final whitelist getMetaState(J)I
    .registers 7
    .param p0, "state"    # J

    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "result":I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 465
    or-int/lit16 v0, v0, 0x100

    goto :goto_16

    .line 466
    :cond_d
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    .line 467
    or-int/lit8 v0, v0, 0x1

    .line 470
    :cond_16
    :goto_16
    const-wide/16 v1, 0x200

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 471
    or-int/lit16 v0, v0, 0x200

    goto :goto_29

    .line 472
    :cond_20
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    .line 473
    or-int/lit8 v0, v0, 0x2

    .line 476
    :cond_29
    :goto_29
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_33

    .line 477
    or-int/lit16 v0, v0, 0x400

    goto :goto_3c

    .line 478
    :cond_33
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3c

    .line 479
    or-int/lit8 v0, v0, 0x4

    .line 482
    :cond_3c
    :goto_3c
    return v0
.end method

.method public static final whitelist getMetaState(JI)I
    .registers 10
    .param p0, "state"    # J
    .param p2, "meta"    # I

    .line 494
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch p2, :pswitch_data_3c

    .line 511
    :pswitch_8
    return v2

    .line 506
    :pswitch_9
    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long v5, v5, v3

    if-eqz v5, :cond_11

    return v1

    .line 507
    :cond_11
    const-wide/16 v5, 0x4

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_19

    return v0

    .line 508
    :cond_19
    return v2

    .line 501
    :pswitch_1a
    const-wide/16 v5, 0x200

    and-long/2addr v5, p0

    cmp-long v5, v5, v3

    if-eqz v5, :cond_22

    return v1

    .line 502
    :cond_22
    const-wide/16 v5, 0x2

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2a

    return v0

    .line 503
    :cond_2a
    return v2

    .line 496
    :pswitch_2b
    const-wide/16 v5, 0x100

    and-long/2addr v5, p0

    cmp-long v5, v5, v3

    if-eqz v5, :cond_33

    return v1

    .line 497
    :cond_33
    const-wide/16 v5, 0x1

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3b

    return v0

    .line 498
    :cond_3b
    return v2

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 162
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 163
    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 164
    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 165
    const/16 v2, 0x800

    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    .line 162
    return v0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I

    .line 202
    const/4 v0, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_24

    .line 216
    const/4 v0, 0x0

    return v0

    .line 213
    :sswitch_7
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 210
    :sswitch_e
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 207
    :sswitch_15
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 204
    :sswitch_1c
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_15
        0x4 -> :sswitch_e
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 234
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 235
    .local v0, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 237
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 239
    :cond_14
    const/16 v1, 0x800

    if-ne v1, p1, :cond_1f

    .line 242
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1d

    .line 244
    return v2

    .line 246
    :cond_1d
    const/4 v1, 0x0

    return v1

    .line 248
    :cond_1f
    int-to-long v1, v0

    invoke-static {v1, v2, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result v1

    return v1
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 184
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 186
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 188
    :cond_14
    return v0
.end method

.method public static whitelist handleKeyDown(JILandroid/view/KeyEvent;)J
    .registers 23
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 546
    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_53

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b

    goto :goto_53

    .line 551
    :cond_b
    const/16 v1, 0x39

    if-eq v0, v1, :cond_38

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_38

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_18

    goto :goto_38

    .line 557
    :cond_18
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_37

    .line 558
    const-wide/high16 v11, 0x4000000000000L

    const-wide v13, 0x400000000L

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide/16 v7, 0x400

    const-wide v9, 0x40000000000L

    move-wide/from16 v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v4

    return-wide v4

    .line 561
    :cond_37
    return-wide p0

    .line 553
    :cond_38
    :goto_38
    const-wide/high16 v15, 0x2000000000000L

    const-wide v17, 0x200000000L

    const/4 v8, 0x2

    const-wide v9, 0x2020200000202L

    const-wide/16 v11, 0x200

    const-wide v13, 0x20000000000L

    move-wide/from16 v6, p0

    invoke-static/range {v6 .. v18}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v1

    return-wide v1

    .line 547
    :cond_53
    :goto_53
    const-wide/high16 v15, 0x1000000000000L

    const-wide v17, 0x100000000L

    const/4 v8, 0x1

    const-wide v9, 0x1010100000101L

    const-wide/16 v11, 0x100

    const-wide v13, 0x10000000000L

    move-wide/from16 v6, p0

    invoke-static/range {v6 .. v18}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static whitelist handleKeyUp(JILandroid/view/KeyEvent;)J
    .registers 22
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 584
    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_53

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b

    goto :goto_53

    .line 589
    :cond_b
    const/16 v1, 0x39

    if-eq v0, v1, :cond_38

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_38

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_18

    goto :goto_38

    .line 595
    :cond_18
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_37

    .line 596
    const-wide/high16 v9, 0x4000000000000L

    const-wide v11, 0x400000000L

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide v7, 0x40000000000L

    move-wide/from16 v2, p0

    move-object/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v4

    return-wide v4

    .line 599
    :cond_37
    return-wide p0

    .line 591
    :cond_38
    :goto_38
    const-wide/high16 v13, 0x2000000000000L

    const-wide v15, 0x200000000L

    const/4 v8, 0x2

    const-wide v9, 0x2020200000202L

    const-wide v11, 0x20000000000L

    move-wide/from16 v6, p0

    move-object/from16 v17, p3

    invoke-static/range {v6 .. v17}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v1

    return-wide v1

    .line 585
    :cond_53
    :goto_53
    const-wide/high16 v13, 0x1000000000000L

    const-wide v15, 0x100000000L

    const/4 v8, 0x1

    const-wide v9, 0x1010100000101L

    const-wide v11, 0x10000000000L

    move-wide/from16 v6, p0

    move-object/from16 v17, p3

    invoke-static/range {v6 .. v17}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static whitelist isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .line 285
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_13

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_13

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_13

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static whitelist isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .line 294
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static greylist-max-o press(JIJJJJJ)J
    .registers 17
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "locked"    # J
    .param p7, "pressed"    # J
    .param p9, "released"    # J
    .param p11, "used"    # J

    .line 566
    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    goto :goto_29

    .line 568
    :cond_9
    and-long v0, p0, p9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 569
    not-long v0, p3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    or-long p0, v0, p5

    goto :goto_29

    .line 570
    :cond_16
    and-long v0, p0, p11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    goto :goto_29

    .line 572
    :cond_1d
    and-long v0, p0, p5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 573
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_29

    .line 575
    :cond_26
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    .line 577
    :goto_29
    return-wide p0
.end method

.method private greylist-max-o press(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    .line 348
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 350
    .local v0, "state":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_a

    .line 351
    goto :goto_26

    .line 352
    :cond_a
    const v2, 0x2000011

    const v3, 0x4000011

    const/4 v4, 0x0

    if-ne v0, v2, :cond_17

    .line 353
    invoke-interface {p1, p2, v4, v4, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_26

    .line 354
    :cond_17
    const v2, 0x3000011

    if-ne v0, v2, :cond_1d

    .line 355
    goto :goto_26

    .line 356
    :cond_1d
    if-ne v0, v3, :cond_23

    .line 357
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_26

    .line 359
    :cond_23
    invoke-interface {p1, p2, v4, v4, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 360
    :goto_26
    return-void
.end method

.method private static greylist-max-o release(JIJJJJLandroid/view/KeyEvent;)J
    .registers 16
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "pressed"    # J
    .param p7, "released"    # J
    .param p9, "used"    # J
    .param p11, "event"    # Landroid/view/KeyEvent;

    .line 604
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 614
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_22

    .line 606
    :pswitch_e
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 607
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_22

    .line 608
    :cond_19
    and-long v0, p0, p5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 609
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    .line 617
    :cond_22
    :goto_22
    return-wide p0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method private greylist-max-o release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 405
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 407
    .local v0, "current":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 416
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_28

    .line 409
    :pswitch_13
    const v1, 0x3000011

    if-ne v0, v1, :cond_1c

    .line 410
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_28

    .line 411
    :cond_1c
    const v1, 0x1000011

    if-ne v0, v1, :cond_28

    .line 412
    const v1, 0x2000011

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 419
    :cond_28
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method private static greylist-max-o resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .line 318
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 320
    .local v0, "current":I
    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    .line 321
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 322
    :cond_c
    return-void
.end method

.method public static whitelist resetLockedMeta(J)J
    .registers 6
    .param p0, "state"    # J

    .line 437
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 438
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 440
    :cond_f
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 441
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 443
    :cond_1c
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 444
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 446
    :cond_29
    return-wide p0
.end method

.method protected static whitelist resetLockedMeta(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "content"    # Landroid/text/Spannable;

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 313
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 314
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public static whitelist resetMetaState(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 149
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 150
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public static greylist startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .line 368
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x1000011

    invoke-interface {p1, v0, v1, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 369
    return-void
.end method

.method public static greylist stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .line 378
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 379
    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyState(JI)J
    .registers 9
    .param p1, "state"    # J
    .param p3, "which"    # I

    .line 627
    and-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_13

    const-wide/16 v3, 0x100

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_13

    .line 628
    const-wide v3, -0x1010100000102L

    and-long/2addr p1, v3

    .line 630
    :cond_13
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_24

    const-wide/16 v3, 0x200

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_24

    .line 631
    const-wide v3, -0x2020200000203L

    and-long/2addr p1, v3

    .line 633
    :cond_24
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_35

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_35

    .line 634
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 636
    :cond_35
    return-wide p1
.end method

.method public whitelist clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 422
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 423
    return-void
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 328
    const/16 v0, 0x3b

    const/4 v1, 0x1

    if-eq p3, v0, :cond_29

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_a

    goto :goto_29

    .line 333
    :cond_a
    const/16 v0, 0x39

    if-eq p3, v0, :cond_23

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_23

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_17

    goto :goto_23

    .line 339
    :cond_17
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_21

    .line 340
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 341
    return v1

    .line 344
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_23
    :goto_23
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 336
    return v1

    .line 329
    :cond_29
    :goto_29
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 330
    return v1
.end method

.method public whitelist onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 385
    const/16 v0, 0x3b

    const/4 v1, 0x1

    if-eq p3, v0, :cond_29

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_a

    goto :goto_29

    .line 390
    :cond_a
    const/16 v0, 0x39

    if-eq p3, v0, :cond_23

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_23

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_17

    goto :goto_23

    .line 396
    :cond_17
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_21

    .line 397
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 398
    return v1

    .line 401
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_23
    :goto_23
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 393
    return v1

    .line 386
    :cond_29
    :goto_29
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 387
    return v1
.end method
