.class public final Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsCbHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCodingScheme"
.end annotation


# instance fields
.field public final blacklist encoding:I

.field public final blacklist hasLanguageIndicator:Z

.field public final blacklist language:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 8
    .param p1, "dataCodingScheme"    # I

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "encoding":I
    const/4 v1, 0x0

    .line 519
    .local v1, "language":Ljava/lang/String;
    const/4 v2, 0x0

    .line 523
    .local v2, "hasLanguageIndicator":Z
    and-int/lit16 v3, p1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_66

    .line 585
    :pswitch_e
    const/4 v0, 0x1

    goto :goto_5f

    .line 576
    :pswitch_10
    and-int/lit8 v3, p1, 0x4

    shr-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_18

    .line 577
    const/4 v0, 0x2

    goto :goto_5f

    .line 579
    :cond_18
    const/4 v0, 0x1

    .line 581
    goto :goto_5f

    .line 572
    :pswitch_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 549
    :pswitch_33
    and-int/lit8 v3, p1, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_8a

    .line 560
    const/4 v0, 0x1

    .line 561
    goto :goto_5f

    .line 555
    :pswitch_3c
    const/4 v0, 0x3

    .line 556
    goto :goto_5f

    .line 551
    :pswitch_3e
    const/4 v0, 0x2

    .line 552
    goto :goto_5f

    .line 544
    :pswitch_40
    const/4 v0, 0x1

    .line 545
    goto :goto_5f

    .line 539
    :pswitch_42
    const/4 v0, 0x1

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_2()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    .line 541
    goto :goto_5f

    .line 530
    :pswitch_4c
    const/4 v2, 0x1

    .line 531
    and-int/lit8 v3, p1, 0xf

    if-ne v3, v4, :cond_53

    .line 532
    const/4 v0, 0x3

    goto :goto_5f

    .line 534
    :cond_53
    const/4 v0, 0x1

    .line 536
    goto :goto_5f

    .line 525
    :pswitch_55
    const/4 v0, 0x1

    .line 526
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_0()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    .line 527
    nop

    .line 590
    :goto_5f
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->encoding:I

    .line 591
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    .line 592
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    .line 593
    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_55
        :pswitch_4c
        :pswitch_42
        :pswitch_40
        :pswitch_33
        :pswitch_33
        :pswitch_1a
        :pswitch_1a
        :pswitch_e
        :pswitch_1a
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_1a
        :pswitch_10
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3c
    .end packed-switch
.end method
