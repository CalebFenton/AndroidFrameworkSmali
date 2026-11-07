.class public Landroid/widget/RemoteViewsSerializers;
.super Ljava/lang/Object;
.source "RemoteViewsSerializers.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RemoteViews"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAbsoluteSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AbsoluteSizeSpan;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "size":I
    const/4 v1, 0x0

    .line 599
    .local v1, "dip":Z
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_41

    .line 600
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading AbsoluteSizeSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 610
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    const-string v3, "AbsoluteSizeSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 605
    :pswitch_2d
    const-wide v2, 0x10800000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    .line 606
    goto :goto_2

    .line 602
    :pswitch_37
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 603
    goto :goto_2

    .line 613
    :cond_41
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-object v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method public static blacklist createAccessibilityClickableSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityClickableSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "originalClickableSpanId":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 626
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AccessibilityClickableSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 636
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    const-string v2, "AccessibilityClickable"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 629
    :pswitch_2c
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 632
    goto :goto_1

    .line 639
    :cond_36
    new-instance v1, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v1, v0}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAccessibilityReplacementSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityReplacementSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    .line 654
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AccessibilityReplacementSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    const-string v2, "AccessibilityReplacemen"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    :pswitch_2c
    const-wide v1, 0x10b00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 660
    .local v1, "token":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 661
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 662
    goto :goto_1

    .line 669
    .end local v1    # "token":J
    :cond_3d
    new-instance v1, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v1, v0}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAccessibilityURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityURLSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 687
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AccessibilityURLSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 694
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    const-string v2, "AccessibilityURLSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 689
    :pswitch_2c
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 690
    goto :goto_1

    .line 697
    :cond_36
    new-instance v1, Landroid/text/style/AccessibilityURLSpan;

    new-instance v2, Landroid/text/style/URLSpan;

    invoke-direct {v2, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    return-object v1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAlignmentSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AlignmentSpan$Standard;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "alignment":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 709
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AlignmentSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 717
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    const-string v2, "AlignmentSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 711
    :pswitch_2c
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 713
    goto :goto_1

    .line 720
    :cond_36
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v0}, Landroid/text/Layout$Alignment;->valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAnnotationFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/Annotation;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 733
    .local v1, "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_41

    .line 734
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading Annotation proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 743
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    const-string v3, "Annotation"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 739
    :pswitch_2d
    const-wide v2, 0x10900000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 740
    goto :goto_2

    .line 736
    :pswitch_37
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 737
    goto :goto_2

    .line 746
    :cond_41
    new-instance v2, Landroid/text/Annotation;

    invoke-direct {v2, v0, v1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method public static blacklist createBackgroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BackgroundColorSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "color":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 758
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading BackgroundColorSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    const-string v2, "BackgroundColorSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 760
    :pswitch_2c
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 761
    goto :goto_1

    .line 768
    :cond_36
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createBulletSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BulletSpan;
    .registers 7
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "bulletRadius":I
    const/4 v1, 0x0

    .line 781
    .local v1, "color":I
    const/4 v2, 0x0

    .line 782
    .local v2, "gapWidth":I
    const/4 v3, 0x0

    .line 783
    .local v3, "wantColor":Z
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    .line 784
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_5e

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled field while reading BulletSpan proto!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 801
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 800
    const-string v5, "BulletSpan"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 796
    :pswitch_2f
    const-wide v4, 0x10800000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v3

    .line 798
    goto :goto_4

    .line 786
    :pswitch_39
    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 788
    goto :goto_4

    .line 790
    :pswitch_43
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 791
    goto :goto_4

    .line 793
    :pswitch_4d
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 794
    goto :goto_4

    .line 804
    :cond_57
    new-instance v4, Landroid/text/style/BulletSpan;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-object v4

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_43
        :pswitch_39
        :pswitch_2f
    .end packed-switch
.end method

.method public static blacklist createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 385
    .local v1, "hasSpans":Z
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4f

    .line 386
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_58

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading CharSequence proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 392
    :pswitch_31
    const/4 v1, 0x1

    .line 393
    const-wide v2, 0x20b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 394
    .local v2, "spansToken":J
    invoke-static {p0, v0}, Landroid/widget/RemoteViewsSerializers;->createSpanFromProto(Landroid/util/proto/ProtoInputStream;Landroid/text/SpannableStringBuilder;)V

    .line 395
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 396
    goto :goto_6

    .line 388
    .end local v2    # "spansToken":J
    :pswitch_42
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 390
    goto :goto_6

    .line 402
    .end local v2    # "text":Ljava/lang/String;
    :cond_4f
    if-eqz v1, :cond_53

    move-object v2, v0

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_57
    return-object v2

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist createEasyEditSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/EasyEditSpan;
    .registers 2
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 816
    new-instance v0, Landroid/text/style/EasyEditSpan;

    invoke-direct {v0}, Landroid/text/style/EasyEditSpan;-><init>()V

    return-object v0
.end method

.method public static blacklist createForegroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ForegroundColorSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "color":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 826
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading ForegroundColorSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 833
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    const-string v2, "ForegroundColorSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    :pswitch_2c
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 829
    goto :goto_1

    .line 836
    :cond_36
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createIconFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/function/Function;
    .registers 7
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 139
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b5

    .line 140
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_bc

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading Icon proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 158
    :pswitch_31
    const-wide v3, 0x10c00000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    .line 160
    .local v1, "bitmapAdaptiveData":[B
    array-length v5, v1

    .line 161
    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 163
    goto :goto_5

    .line 177
    .end local v1    # "bitmapAdaptiveData":[B
    :pswitch_43
    nop

    .line 179
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 180
    goto :goto_5

    .line 174
    :pswitch_51
    const-wide v1, 0x10900000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 175
    goto :goto_5

    .line 170
    :pswitch_5e
    nop

    .line 171
    const-wide v1, 0x10c00000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 172
    goto :goto_5

    .line 165
    :pswitch_6c
    nop

    .line 167
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 168
    goto :goto_5

    .line 152
    :pswitch_7a
    const-wide v3, 0x10c00000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    .line 153
    .local v1, "bitmapData":[B
    array-length v5, v1

    .line 155
    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 156
    goto/16 :goto_5

    .line 147
    .end local v1    # "bitmapData":[B
    :pswitch_8d
    const-wide v1, 0x10b00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 148
    .local v3, "tintListToken":J
    invoke-static {p0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 149
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 150
    goto/16 :goto_5

    .line 142
    .end local v3    # "tintListToken":J
    :pswitch_a2
    nop

    .line 144
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 145
    goto/16 :goto_5

    .line 189
    :cond_b5
    new-instance v1, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v1

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8d
        :pswitch_7a
        :pswitch_6c
        :pswitch_5e
        :pswitch_51
        :pswitch_43
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist createLeadingMarginSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LeadingMarginSpan$Standard;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "first":I
    const/4 v1, 0x0

    .line 843
    .local v1, "rest":I
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_41

    .line 844
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading LeadingMarginSpanproto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 854
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 852
    const-string v3, "LeadingMarginSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 849
    :pswitch_2d
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 850
    goto :goto_2

    .line 846
    :pswitch_37
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 847
    goto :goto_2

    .line 857
    :cond_41
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v2, v0, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    return-object v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method public static blacklist createLineBackgroundSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBackgroundSpan$Standard;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "color":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 878
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading LineBackgroundSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    const-string v2, "LineBackgroundSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 880
    :pswitch_2c
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 881
    goto :goto_1

    .line 888
    :cond_36
    new-instance v1, Landroid/text/style/LineBackgroundSpan$Standard;

    invoke-direct {v1, v0}, Landroid/text/style/LineBackgroundSpan$Standard;-><init>(I)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createLineBreakConfigSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBreakConfigSpan;
    .registers 6
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "lineBreakStyle":I
    const/4 v1, 0x0

    .line 901
    .local v1, "lineBreakWordStyle":I
    const/4 v2, 0x0

    .line 902
    .local v2, "hyphenation":I
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c

    .line 903
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading LineBreakConfigSpan proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 919
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 917
    const-string v4, "LineBreakConfigSpan"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 913
    :pswitch_2e
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 915
    goto :goto_3

    .line 909
    :pswitch_38
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 911
    goto :goto_3

    .line 905
    :pswitch_42
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 907
    goto :goto_3

    .line 922
    :cond_4c
    new-instance v3, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v3}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v3

    .line 923
    invoke-virtual {v3, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v3

    .line 924
    invoke-virtual {v3}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v3

    .line 925
    .local v3, "lbc":Landroid/graphics/text/LineBreakConfig;
    new-instance v4, Landroid/text/style/LineBreakConfigSpan;

    invoke-direct {v4, v3}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v4

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_42
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createLineHeightSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineHeightSpan$Standard;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 943
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading LineHeightSpan.Standard proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
    const-string v2, "LineHeightSpan.Standard"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 945
    :pswitch_2c
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 946
    goto :goto_1

    .line 953
    :cond_36
    new-instance v1, Landroid/text/style/LineHeightSpan$Standard;

    invoke-direct {v1, v0}, Landroid/text/style/LineHeightSpan$Standard;-><init>(I)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createLocaleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LocaleSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "languageTags":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 965
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading LocaleSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    const-string v2, "LocaleSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 967
    :pswitch_2c
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 969
    goto :goto_1

    .line 975
    :cond_36
    new-instance v1, Landroid/text/style/LocaleSpan;

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/LocaleList;)V

    return-object v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createQuoteSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/QuoteSpan;
    .registers 6
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "color":I
    const/4 v1, 0x0

    .line 987
    .local v1, "stripeWidth":I
    const/4 v2, 0x0

    .line 988
    .local v2, "gapWidth":I
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c

    .line 989
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_52

    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading QuoteSpan proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1001
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1000
    const-string v4, "QuoteSpan"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 997
    :pswitch_2e
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 998
    goto :goto_3

    .line 994
    :pswitch_38
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 995
    goto :goto_3

    .line 991
    :pswitch_42
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 992
    goto :goto_3

    .line 1004
    :cond_4c
    new-instance v3, Landroid/text/style/QuoteSpan;

    invoke-direct {v3, v0, v1, v2}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-object v3

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createRelativeSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/RelativeSizeSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "proportion":F
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1017
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading RelativeSizeSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1025
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    const-string v2, "RelativeSizeSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1019
    :pswitch_2c
    const-wide v1, 0x10200000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    .line 1021
    goto :goto_1

    .line 1028
    :cond_36
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createScaleXSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ScaleXSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "proportion":F
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1040
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading ScaleXSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1046
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    const-string v2, "ScaleXSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1042
    :pswitch_2c
    const-wide v1, 0x10200000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    .line 1043
    goto :goto_1

    .line 1049
    :cond_36
    new-instance v1, Landroid/text/style/ScaleXSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method private static blacklist createSpanFromProto(Landroid/util/proto/ProtoInputStream;Landroid/text/SpannableStringBuilder;)V
    .registers 8
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "start":I
    const/4 v1, 0x0

    .line 409
    .local v1, "end":I
    const/4 v2, 0x0

    .line 410
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 411
    .local v3, "what":Ljava/lang/Object;
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26f

    .line 412
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_276

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled field while reading CharSequence proto!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    const-string v5, "RemoteViews"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 580
    :pswitch_2f
    const-wide v4, 0x20b00000021L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 581
    .local v4, "urlToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/URLSpan;

    move-result-object v3

    .line 582
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 583
    goto :goto_4

    .line 575
    .end local v4    # "urlToken":J
    :pswitch_40
    const-wide v4, 0x20b00000020L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 576
    .local v4, "unToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createUnderlineSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/UnderlineSpan;

    move-result-object v3

    .line 577
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 578
    goto :goto_4

    .line 570
    .end local v4    # "unToken":J
    :pswitch_51
    const-wide v4, 0x20b0000001fL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 571
    .local v4, "tfToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTypefaceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TypefaceSpan;

    move-result-object v3

    .line 572
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 573
    goto :goto_4

    .line 565
    .end local v4    # "tfToken":J
    :pswitch_62
    const-wide v4, 0x20b0000001eL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 566
    .local v4, "ttsToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTtsSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TtsSpan;

    move-result-object v3

    .line 567
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 568
    goto :goto_4

    .line 559
    .end local v4    # "ttsToken":J
    :pswitch_73
    const-wide v4, 0x20b0000001dL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 561
    .local v4, "taToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTextAppearanceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    .line 562
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 563
    goto :goto_4

    .line 554
    .end local v4    # "taToken":J
    :pswitch_84
    const-wide v4, 0x20b0000001cL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 555
    .local v4, "supToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuperscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuperscriptSpan;

    move-result-object v3

    .line 556
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 557
    goto/16 :goto_4

    .line 543
    .end local v4    # "supToken":J
    :pswitch_96
    const-wide v4, 0x20b0000001bL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 545
    .local v4, "srToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuggestionRangeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v3

    .line 546
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 547
    goto/16 :goto_4

    .line 549
    .end local v4    # "srToken":J
    :pswitch_a8
    const-wide v4, 0x20b0000001aL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 550
    .local v4, "sugToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuggestionSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionSpan;

    move-result-object v3

    .line 551
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 552
    goto/16 :goto_4

    .line 538
    .end local v4    # "sugToken":J
    :pswitch_ba
    const-wide v4, 0x20b00000019L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 539
    .local v4, "suToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSubscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SubscriptSpan;

    move-result-object v3

    .line 540
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 541
    goto/16 :goto_4

    .line 533
    .end local v4    # "suToken":J
    :pswitch_cc
    const-wide v4, 0x20b00000018L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 534
    .local v4, "sToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createStyleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StyleSpan;

    move-result-object v3

    .line 535
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 536
    goto/16 :goto_4

    .line 528
    .end local v4    # "sToken":J
    :pswitch_de
    const-wide v4, 0x20b00000017L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 529
    .local v4, "stToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createStrikethroughSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StrikethroughSpan;

    move-result-object v3

    .line 530
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 531
    goto/16 :goto_4

    .line 523
    .end local v4    # "stToken":J
    :pswitch_f0
    const-wide v4, 0x20b00000016L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 524
    .local v4, "scToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSpellCheckSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SpellCheckSpan;

    move-result-object v3

    .line 525
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 526
    goto/16 :goto_4

    .line 518
    .end local v4    # "scToken":J
    :pswitch_102
    const-wide v4, 0x20b00000015L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 519
    .local v4, "sxToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createScaleXSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ScaleXSpan;

    move-result-object v3

    .line 520
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 521
    goto/16 :goto_4

    .line 513
    .end local v4    # "sxToken":J
    :pswitch_114
    const-wide v4, 0x20b00000014L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 514
    .local v4, "rsToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createRelativeSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/RelativeSizeSpan;

    move-result-object v3

    .line 515
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 516
    goto/16 :goto_4

    .line 508
    .end local v4    # "rsToken":J
    :pswitch_126
    const-wide v4, 0x20b00000013L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 509
    .local v4, "qToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createQuoteSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/QuoteSpan;

    move-result-object v3

    .line 510
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 511
    goto/16 :goto_4

    .line 503
    .end local v4    # "qToken":J
    :pswitch_138
    const-wide v4, 0x20b00000012L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 504
    .local v4, "lToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLocaleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LocaleSpan;

    move-result-object v3

    .line 505
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 506
    goto/16 :goto_4

    .line 498
    .end local v4    # "lToken":J
    :pswitch_14a
    const-wide v4, 0x20b00000011L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 499
    .local v4, "lhToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineHeightSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineHeightSpan$Standard;

    move-result-object v3

    .line 500
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 501
    goto/16 :goto_4

    .line 490
    .end local v4    # "lhToken":J
    :pswitch_15c
    invoke-static {}, Lcom/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v4

    if-nez v4, :cond_164

    .line 491
    goto/16 :goto_4

    .line 493
    :cond_164
    const-wide v4, 0x20b00000010L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 494
    .local v4, "lbrToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineBreakConfigSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBreakConfigSpan;

    move-result-object v3

    .line 495
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 496
    goto/16 :goto_4

    .line 484
    .end local v4    # "lbrToken":J
    :pswitch_176
    const-wide v4, 0x20b0000000fL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 486
    .local v4, "lbToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineBackgroundSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBackgroundSpan$Standard;

    move-result-object v3

    .line 487
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 488
    goto/16 :goto_4

    .line 478
    .end local v4    # "lbToken":J
    :pswitch_188
    const-wide v4, 0x20b0000000eL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 480
    .local v4, "lmToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLeadingMarginSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LeadingMarginSpan$Standard;

    move-result-object v3

    .line 481
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 482
    goto/16 :goto_4

    .line 472
    .end local v4    # "lmToken":J
    :pswitch_19a
    const-wide v4, 0x20b0000000dL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 474
    .local v4, "fcToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createForegroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    .line 475
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 476
    goto/16 :goto_4

    .line 467
    .end local v4    # "fcToken":J
    :pswitch_1ac
    const-wide v4, 0x20b0000000cL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 468
    .local v4, "eeToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createEasyEditSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/EasyEditSpan;

    move-result-object v3

    .line 469
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 470
    goto/16 :goto_4

    .line 462
    .end local v4    # "eeToken":J
    :pswitch_1be
    const-wide v4, 0x20b0000000bL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 463
    .local v4, "bToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createBulletSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BulletSpan;

    move-result-object v3

    .line 464
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 465
    goto/16 :goto_4

    .line 456
    .end local v4    # "bToken":J
    :pswitch_1d0
    const-wide v4, 0x20b0000000aL

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 458
    .local v4, "bcToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createBackgroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    .line 459
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 460
    goto/16 :goto_4

    .line 451
    .end local v4    # "bcToken":J
    :pswitch_1e2
    const-wide v4, 0x20b00000009L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 452
    .local v4, "annToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAnnotationFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/Annotation;

    move-result-object v3

    .line 453
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 454
    goto/16 :goto_4

    .line 446
    .end local v4    # "annToken":J
    :pswitch_1f4
    const-wide v4, 0x20b00000008L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 447
    .local v4, "aToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAlignmentSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AlignmentSpan$Standard;

    move-result-object v3

    .line 448
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 449
    goto/16 :goto_4

    .line 440
    .end local v4    # "aToken":J
    :pswitch_206
    const-wide v4, 0x20b00000007L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 442
    .local v4, "auToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityURLSpan;

    move-result-object v3

    .line 443
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 444
    goto/16 :goto_4

    .line 434
    .end local v4    # "auToken":J
    :pswitch_218
    const-wide v4, 0x20b00000006L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 436
    .local v4, "arToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityReplacementSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityReplacementSpan;

    move-result-object v3

    .line 437
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 438
    goto/16 :goto_4

    .line 428
    .end local v4    # "arToken":J
    :pswitch_22a
    const-wide v4, 0x20b00000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 430
    .local v4, "acToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityClickableSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityClickableSpan;

    move-result-object v3

    .line 431
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 432
    goto/16 :goto_4

    .line 423
    .end local v4    # "acToken":J
    :pswitch_23c
    const-wide v4, 0x20b00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 424
    .local v4, "asToken":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAbsoluteSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v3

    .line 425
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 426
    goto/16 :goto_4

    .line 420
    .end local v4    # "asToken":J
    :pswitch_24e
    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 421
    goto/16 :goto_4

    .line 417
    :pswitch_259
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 418
    goto/16 :goto_4

    .line 414
    :pswitch_264
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 415
    goto/16 :goto_4

    .line 589
    :cond_26f
    if-nez v3, :cond_272

    .line 590
    return-void

    .line 592
    :cond_272
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 593
    return-void

    :pswitch_data_276
    .packed-switch 0x1
        :pswitch_264
        :pswitch_259
        :pswitch_24e
        :pswitch_23c
        :pswitch_22a
        :pswitch_218
        :pswitch_206
        :pswitch_1f4
        :pswitch_1e2
        :pswitch_1d0
        :pswitch_1be
        :pswitch_1ac
        :pswitch_19a
        :pswitch_188
        :pswitch_176
        :pswitch_15c
        :pswitch_14a
        :pswitch_138
        :pswitch_126
        :pswitch_114
        :pswitch_102
        :pswitch_f0
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_96
        :pswitch_84
        :pswitch_73
        :pswitch_62
        :pswitch_51
        :pswitch_40
        :pswitch_2f
    .end packed-switch
.end method

.method public static blacklist createSpellCheckSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SpellCheckSpan;
    .registers 2
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;

    .line 1057
    new-instance v0, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v0}, Landroid/text/style/SpellCheckSpan;-><init>()V

    return-object v0
.end method

.method public static blacklist createStrikethroughSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StrikethroughSpan;
    .registers 2
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;

    .line 1065
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object v0
.end method

.method public static blacklist createStyleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StyleSpan;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "style":I
    const/4 v1, 0x0

    .line 1076
    .local v1, "fontWeightAdjustment":I
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_41

    .line 1077
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading StyleSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1087
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    const-string v3, "StyleSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1082
    :pswitch_2d
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 1084
    goto :goto_2

    .line 1079
    :pswitch_37
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 1080
    goto :goto_2

    .line 1090
    :cond_41
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0, v1}, Landroid/text/style/StyleSpan;-><init>(II)V

    return-object v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method public static blacklist createSubscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SubscriptSpan;
    .registers 2
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;

    .line 1100
    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    return-object v0
.end method

.method public static blacklist createSuggestionRangeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionRangeSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "backgroundColor":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1111
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading SuggestionRangeSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1119
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    const-string v2, "SuggestionRangeSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1113
    :pswitch_2c
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 1115
    goto :goto_1

    .line 1122
    :cond_36
    new-instance v1, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v1}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    .line 1123
    .local v1, "span":Landroid/text/style/SuggestionRangeSpan;
    invoke-virtual {v1, v0}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 1124
    return-object v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createSuggestionSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionSpan;
    .registers 29
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1135
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1137
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 1138
    .local v3, "localeStringForCompatibility":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1139
    .local v4, "languageTag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1140
    .local v5, "hashCode":I
    const/4 v6, 0x0

    .line 1141
    .local v6, "easyCorrectUnderlineColor":I
    const/4 v7, 0x0

    .line 1142
    .local v7, "easyCorrectUnderlineThickness":F
    const/4 v8, 0x0

    .line 1143
    .local v8, "misspelledUnderlineColor":I
    const/4 v9, 0x0

    .line 1144
    .local v9, "misspelledUnderlineThickness":F
    const/4 v10, 0x0

    .line 1145
    .local v10, "autoCorrectionUnderlineColor":I
    const/4 v11, 0x0

    .line 1146
    .local v11, "autoCorrectionUnderlineThickness":F
    const/4 v12, 0x0

    .line 1147
    .local v12, "grammarErrorUnderlineColor":I
    const/4 v13, 0x0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    .line 1148
    .end local v2    # "flags":I
    .end local v3    # "localeStringForCompatibility":Ljava/lang/String;
    .end local v4    # "languageTag":Ljava/lang/String;
    .end local v5    # "hashCode":I
    .end local v6    # "easyCorrectUnderlineColor":I
    .end local v7    # "easyCorrectUnderlineThickness":F
    .end local v8    # "misspelledUnderlineColor":I
    .end local v9    # "misspelledUnderlineThickness":F
    .end local v10    # "autoCorrectionUnderlineColor":I
    .end local v11    # "autoCorrectionUnderlineThickness":F
    .end local v12    # "grammarErrorUnderlineColor":I
    .local v16, "flags":I
    .local v17, "localeStringForCompatibility":Ljava/lang/String;
    .local v18, "languageTag":Ljava/lang/String;
    .local v19, "hashCode":I
    .local v20, "easyCorrectUnderlineColor":I
    .local v21, "easyCorrectUnderlineThickness":F
    .local v22, "misspelledUnderlineColor":I
    .local v23, "misspelledUnderlineThickness":F
    .local v24, "autoCorrectionUnderlineColor":I
    .local v25, "autoCorrectionUnderlineThickness":F
    .local v26, "grammarErrorUnderlineColor":I
    .local v27, "grammarErrorUnderlineThickness":F
    :goto_2b
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e0

    .line 1149
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_f0

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading SuggestionSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1221
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1219
    const-string v3, "SuggestionSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1214
    :pswitch_56
    const-wide v2, 0x1020000000dL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v27

    .line 1217
    goto :goto_2b

    .line 1208
    :pswitch_60
    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v26

    .line 1211
    goto :goto_2b

    .line 1202
    :pswitch_6a
    const-wide v2, 0x1020000000bL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v25

    .line 1205
    goto :goto_2b

    .line 1196
    :pswitch_74
    const-wide v2, 0x1050000000aL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v24

    .line 1199
    goto :goto_2b

    .line 1190
    :pswitch_7e
    const-wide v2, 0x10200000009L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v23

    .line 1193
    goto :goto_2b

    .line 1184
    :pswitch_88
    const-wide v2, 0x10500000008L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v22

    .line 1187
    goto :goto_2b

    .line 1178
    :pswitch_92
    const-wide v2, 0x10200000007L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v21

    .line 1181
    goto :goto_2b

    .line 1172
    :pswitch_9c
    const-wide v2, 0x10500000006L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v20

    .line 1175
    goto :goto_2b

    .line 1168
    :pswitch_a6
    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v19

    .line 1169
    goto/16 :goto_2b

    .line 1164
    :pswitch_b1
    const-wide v2, 0x10900000004L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v18

    .line 1166
    goto/16 :goto_2b

    .line 1159
    :pswitch_bc
    const-wide v2, 0x10900000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v17

    .line 1162
    goto/16 :goto_2b

    .line 1155
    :pswitch_c7
    const-wide v2, 0x10500000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v16

    .line 1156
    goto/16 :goto_2b

    .line 1151
    :pswitch_d2
    const-wide v2, 0x20900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    goto/16 :goto_2b

    .line 1224
    :cond_e0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    .line 1225
    .local v15, "suggestionsArray":[Ljava/lang/String;
    invoke-interface {v1, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1226
    new-instance v14, Landroid/text/style/SuggestionSpan;

    invoke-direct/range {v14 .. v27}, Landroid/text/style/SuggestionSpan;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V

    return-object v14

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9c
        :pswitch_92
        :pswitch_88
        :pswitch_7e
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
    .end packed-switch
.end method

.method public static blacklist createSuperscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuperscriptSpan;
    .registers 2
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;

    .line 1265
    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    return-object v0
.end method

.method public static blacklist createTextAppearanceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TextAppearanceSpan;
    .registers 38
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1274
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1275
    .local v1, "familyName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1276
    .local v2, "style":I
    const/4 v3, 0x0

    .line 1277
    .local v3, "textSize":I
    const/4 v4, 0x0

    .line 1278
    .local v4, "textColor":Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 1279
    .local v5, "textColorLink":Landroid/content/res/ColorStateList;
    const/4 v6, 0x0

    .line 1280
    .local v6, "textFontWeight":I
    const/4 v7, 0x0

    .line 1281
    .local v7, "textLocales":Landroid/os/LocaleList;
    const/4 v8, 0x0

    .line 1282
    .local v8, "shadowRadius":F
    const/4 v9, 0x0

    .line 1283
    .local v9, "shadowDx":F
    const/4 v10, 0x0

    .line 1284
    .local v10, "shadowDy":F
    const/4 v11, 0x0

    .line 1285
    .local v11, "shadowColor":I
    const/4 v12, 0x0

    .line 1286
    .local v12, "hasElegantTextHeight":Z
    const/4 v13, 0x0

    .line 1287
    .local v13, "elegantTextHeight":Z
    const/4 v14, 0x0

    .line 1288
    .local v14, "hasLetterSpacing":Z
    const/4 v15, 0x0

    .line 1289
    .local v15, "letterSpacing":F
    const/16 v16, 0x0

    .line 1290
    .local v16, "fontFeatureSettings":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    .line 1291
    .end local v1    # "familyName":Ljava/lang/String;
    .end local v2    # "style":I
    .end local v3    # "textSize":I
    .end local v4    # "textColor":Landroid/content/res/ColorStateList;
    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v6    # "textFontWeight":I
    .end local v7    # "textLocales":Landroid/os/LocaleList;
    .end local v8    # "shadowRadius":F
    .end local v9    # "shadowDx":F
    .end local v10    # "shadowDy":F
    .end local v11    # "shadowColor":I
    .end local v12    # "hasElegantTextHeight":Z
    .end local v13    # "elegantTextHeight":Z
    .end local v14    # "hasLetterSpacing":Z
    .end local v15    # "letterSpacing":F
    .end local v16    # "fontFeatureSettings":Ljava/lang/String;
    .local v19, "familyName":Ljava/lang/String;
    .local v20, "style":I
    .local v21, "textSize":I
    .local v22, "textColor":Landroid/content/res/ColorStateList;
    .local v23, "textColorLink":Landroid/content/res/ColorStateList;
    .local v25, "textFontWeight":I
    .local v26, "textLocales":Landroid/os/LocaleList;
    .local v27, "shadowRadius":F
    .local v28, "shadowDx":F
    .local v29, "shadowDy":F
    .local v30, "shadowColor":I
    .local v31, "hasElegantTextHeight":Z
    .local v32, "elegantTextHeight":Z
    .local v33, "hasLetterSpacing":Z
    .local v34, "letterSpacing":F
    .local v35, "fontFeatureSettings":Ljava/lang/String;
    .local v36, "fontVariationSettings":Ljava/lang/String;
    :goto_37
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_127

    .line 1292
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_130

    .line 1372
    :pswitch_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading TextAppearanceSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1372
    const-string v2, "TextAppearanceSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1367
    :pswitch_62
    const-wide v1, 0x10900000012L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v36

    .line 1370
    goto :goto_37

    .line 1361
    :pswitch_6c
    const-wide v1, 0x10900000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v35

    .line 1364
    goto :goto_37

    .line 1357
    :pswitch_76
    const-wide v1, 0x10200000010L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v34

    .line 1359
    goto :goto_37

    .line 1352
    :pswitch_80
    const-wide v1, 0x1080000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v33

    .line 1355
    goto :goto_37

    .line 1347
    :pswitch_8a
    const-wide v1, 0x1080000000eL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v32

    .line 1349
    goto :goto_37

    .line 1342
    :pswitch_94
    const-wide v1, 0x1080000000dL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v31

    .line 1345
    goto :goto_37

    .line 1337
    :pswitch_9e
    const-wide v1, 0x1050000000cL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v30

    .line 1339
    goto :goto_37

    .line 1333
    :pswitch_a8
    const-wide v1, 0x1020000000bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v29

    .line 1335
    goto :goto_37

    .line 1329
    :pswitch_b2
    const-wide v1, 0x1020000000aL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v28

    .line 1331
    goto/16 :goto_37

    .line 1325
    :pswitch_bd
    const-wide v1, 0x10200000009L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v27

    .line 1327
    goto/16 :goto_37

    .line 1321
    :pswitch_c8
    const-wide v1, 0x10900000008L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v26

    .line 1323
    goto/16 :goto_37

    .line 1317
    :pswitch_d7
    const-wide v1, 0x10500000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v25

    .line 1319
    goto/16 :goto_37

    .line 1311
    :pswitch_e2
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1313
    .local v1, "textColorLinkToken":J
    invoke-static {v0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v23

    .line 1314
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1315
    goto/16 :goto_37

    .line 1305
    .end local v1    # "textColorLinkToken":J
    :pswitch_f4
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1307
    .local v1, "textColorToken":J
    invoke-static {v0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v22

    .line 1308
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1309
    goto/16 :goto_37

    .line 1301
    .end local v1    # "textColorToken":J
    :pswitch_106
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v21

    .line 1303
    goto/16 :goto_37

    .line 1298
    :pswitch_111
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v20

    .line 1299
    goto/16 :goto_37

    .line 1294
    :pswitch_11c
    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v19

    .line 1296
    goto/16 :goto_37

    .line 1377
    :cond_127
    new-instance v18, Landroid/text/style/TextAppearanceSpan;

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v36}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V

    return-object v18

    nop

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_111
        :pswitch_106
        :pswitch_f4
        :pswitch_e2
        :pswitch_45
        :pswitch_d7
        :pswitch_c8
        :pswitch_bd
        :pswitch_b2
        :pswitch_a8
        :pswitch_9e
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_76
        :pswitch_6c
        :pswitch_62
    .end packed-switch
.end method

.method public static blacklist createTtsSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TtsSpan;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1427
    const/4 v0, 0x0

    .line 1428
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1429
    .local v1, "args":Landroid/os/PersistableBundle;
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4e

    .line 1430
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 1440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading TtsSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1441
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    const-string v3, "TtsSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1435
    :pswitch_2d
    const-wide v2, 0x10900000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 1436
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1437
    .local v2, "data":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1438
    goto :goto_2

    .line 1432
    .end local v2    # "data":[B
    :pswitch_44
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1433
    goto :goto_2

    .line 1444
    :cond_4e
    new-instance v2, Landroid/text/style/TtsSpan;

    invoke-direct {v2, v0, v1}, Landroid/text/style/TtsSpan;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v2

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_44
        :pswitch_2d
    .end packed-switch
.end method

.method public static blacklist createTypefaceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TypefaceSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1462
    const/4 v0, 0x0

    .line 1463
    .local v0, "family":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1464
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading TypefaceSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1470
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    const-string v2, "TypefaceSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1466
    :pswitch_2c
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1467
    goto :goto_1

    .line 1473
    :cond_36
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/URLSpan;
    .registers 4
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1483
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading URLSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1489
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1488
    const-string v2, "URLSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1485
    :pswitch_2c
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1486
    goto :goto_1

    .line 1492
    :cond_36
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createUnderlineSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/UnderlineSpan;
    .registers 2
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;

    .line 1500
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$createIconFromProto$0(Landroid/util/LongSparseArray;Landroid/content/res/Resources;)Landroid/graphics/drawable/Icon;
    .registers 14
    .param p0, "values"    # Landroid/util/LongSparseArray;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 190
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 191
    .local v1, "blendMode":I
    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 193
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    const-wide v3, 0x10c00000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 194
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const-wide v4, 0x10c00000008L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 196
    .local v4, "bitmapAdaptive":Landroid/graphics/Bitmap;
    const-wide v5, 0x10900000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    .local v5, "resName":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_48

    invoke-virtual {p1, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_49

    .line 199
    :cond_48
    move v7, v0

    :goto_49
    nop

    .line 200
    .local v7, "resource":I
    const-wide v8, 0x10c00000005L

    invoke-virtual {p0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 201
    .local v8, "data":[B
    const-wide v9, 0x10900000006L

    invoke-virtual {p0, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 202
    .local v9, "uri":Ljava/lang/String;
    const-wide v10, 0x10900000007L

    invoke-virtual {p0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 205
    .local v10, "uriAdaptive":Ljava/lang/String;
    if-eqz v3, :cond_72

    .line 206
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .local v6, "icon":Landroid/graphics/drawable/Icon;
    goto :goto_96

    .line 207
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    :cond_72
    if-eqz v4, :cond_79

    .line 208
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .restart local v6    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_96

    .line 209
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    :cond_79
    if-eq v7, v0, :cond_80

    .line 210
    invoke-static {p1, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .restart local v6    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_96

    .line 211
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    :cond_80
    if-eqz v8, :cond_89

    .line 212
    const/4 v6, 0x0

    array-length v11, v8

    invoke-static {v8, v6, v11}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .restart local v6    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_96

    .line 213
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    :cond_89
    if-eqz v9, :cond_90

    .line 214
    invoke-static {v9}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .restart local v6    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_96

    .line 215
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    :cond_90
    if-eqz v10, :cond_a5

    .line 216
    invoke-static {v10}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 222
    .restart local v6    # "icon":Landroid/graphics/drawable/Icon;
    :goto_96
    if-eqz v2, :cond_9b

    .line 223
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 225
    :cond_9b
    if-eq v1, v0, :cond_a4

    .line 226
    invoke-static {v1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    .line 228
    :cond_a4
    return-object v6

    .line 219
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    :cond_a5
    return-object v6
.end method

.method public static blacklist writeAbsoluteSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AbsoluteSizeSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/AbsoluteSizeSpan;

    .line 618
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 619
    const-wide v0, 0x10800000002L

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 620
    return-void
.end method

.method public static blacklist writeAccessibilityClickableSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityClickableSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/AccessibilityClickableSpan;

    .line 644
    nop

    .line 647
    invoke-virtual {p1}, Landroid/text/style/AccessibilityClickableSpan;->getOriginalClickableSpanId()I

    move-result v0

    .line 644
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 648
    return-void
.end method

.method public static blacklist writeAccessibilityReplacementSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityReplacementSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/AccessibilityReplacementSpan;

    .line 674
    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 676
    .local v0, "token":J
    invoke-virtual {p1}, Landroid/text/style/AccessibilityReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 677
    .local v2, "description":Ljava/lang/CharSequence;
    if-eqz v2, :cond_12

    .line 678
    invoke-static {p0, v2}, Landroid/widget/RemoteViewsSerializers;->writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V

    .line 680
    :cond_12
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 681
    return-void
.end method

.method public static blacklist writeAccessibilityURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityURLSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/AccessibilityURLSpan;

    .line 702
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/AccessibilityURLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 703
    return-void
.end method

.method public static blacklist writeAlignmentSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AlignmentSpan$Standard;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/AlignmentSpan$Standard;

    .line 725
    nop

    .line 726
    invoke-virtual {p1}, Landroid/text/style/AlignmentSpan$Standard;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object v0

    .line 725
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 727
    return-void
.end method

.method public static blacklist writeAnnotationToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/Annotation;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/Annotation;

    .line 750
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 751
    const-wide v0, 0x10900000002L

    invoke-virtual {p1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 752
    return-void
.end method

.method public static blacklist writeBackgroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BackgroundColorSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/BackgroundColorSpan;

    .line 773
    nop

    .line 774
    invoke-virtual {p1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v0

    .line 773
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 775
    return-void
.end method

.method public static blacklist writeBulletSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BulletSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/BulletSpan;

    .line 808
    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getBulletRadius()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 809
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 810
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getGapWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 811
    const-wide v0, 0x10800000004L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getWantColor()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 812
    return-void
.end method

.method public static blacklist writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V
    .registers 13
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 234
    const-wide v0, 0x10900000001L

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 235
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_334

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 237
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, "os":[Ljava/lang/Object;
    array-length v2, v1

    :goto_1f
    if-ge v3, v2, :cond_333

    aget-object v4, v1, v3

    .line 239
    .local v4, "original":Ljava/lang/Object;
    move-object v5, v4

    .line 240
    .local v5, "prop":Ljava/lang/Object;
    instance-of v6, v5, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_2f

    .line 241
    move-object v6, v5

    check-cast v6, Landroid/text/style/CharacterStyle;

    invoke-virtual {v6}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    .line 244
    :cond_2f
    const-wide v6, 0x20b00000002L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 245
    .local v6, "spansToken":J
    const-wide v8, 0x10500000001L

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 246
    const-wide v8, 0x10500000002L

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 247
    const-wide v8, 0x10500000003L

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 249
    instance-of v8, v5, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v8, :cond_74

    move-object v8, v5

    check-cast v8, Landroid/text/style/AbsoluteSizeSpan;

    .line 250
    .local v8, "span":Landroid/text/style/AbsoluteSizeSpan;
    const-wide v9, 0x20b00000004L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 251
    .local v9, "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeAbsoluteSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AbsoluteSizeSpan;)V

    .line 252
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 253
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/AbsoluteSizeSpan;
    :cond_74
    instance-of v8, v5, Landroid/text/style/AccessibilityClickableSpan;

    if-eqz v8, :cond_8c

    move-object v8, v5

    check-cast v8, Landroid/text/style/AccessibilityClickableSpan;

    .line 254
    .local v8, "span":Landroid/text/style/AccessibilityClickableSpan;
    const-wide v9, 0x20b00000005L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 256
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityClickableSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityClickableSpan;)V

    .line 257
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 258
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/AccessibilityClickableSpan;
    :cond_8c
    instance-of v8, v5, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v8, :cond_a4

    move-object v8, v5

    check-cast v8, Landroid/text/style/AccessibilityReplacementSpan;

    .line 259
    .local v8, "span":Landroid/text/style/AccessibilityReplacementSpan;
    const-wide v9, 0x20b00000006L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 261
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityReplacementSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityReplacementSpan;)V

    .line 262
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 263
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/AccessibilityReplacementSpan;
    :cond_a4
    instance-of v8, v5, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v8, :cond_bc

    move-object v8, v5

    check-cast v8, Landroid/text/style/AccessibilityURLSpan;

    .line 264
    .local v8, "span":Landroid/text/style/AccessibilityURLSpan;
    const-wide v9, 0x20b00000007L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 266
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityURLSpan;)V

    .line 267
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 268
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/AccessibilityURLSpan;
    :cond_bc
    instance-of v8, v5, Landroid/text/Annotation;

    if-eqz v8, :cond_d4

    move-object v8, v5

    check-cast v8, Landroid/text/Annotation;

    .line 269
    .local v8, "span":Landroid/text/Annotation;
    const-wide v9, 0x20b00000009L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 270
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeAnnotationToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/Annotation;)V

    .line 271
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 272
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/Annotation;
    :cond_d4
    instance-of v8, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v8, :cond_ec

    move-object v8, v5

    check-cast v8, Landroid/text/style/BackgroundColorSpan;

    .line 273
    .local v8, "span":Landroid/text/style/BackgroundColorSpan;
    const-wide v9, 0x20b0000000aL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 275
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeBackgroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BackgroundColorSpan;)V

    .line 276
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 277
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/BackgroundColorSpan;
    :cond_ec
    instance-of v8, v5, Landroid/text/style/BulletSpan;

    if-eqz v8, :cond_104

    move-object v8, v5

    check-cast v8, Landroid/text/style/BulletSpan;

    .line 278
    .local v8, "span":Landroid/text/style/BulletSpan;
    const-wide v9, 0x20b0000000bL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 279
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeBulletSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BulletSpan;)V

    .line 280
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 281
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/BulletSpan;
    :cond_104
    instance-of v8, v5, Landroid/text/style/EasyEditSpan;

    if-eqz v8, :cond_11c

    move-object v8, v5

    check-cast v8, Landroid/text/style/EasyEditSpan;

    .line 282
    .local v8, "span":Landroid/text/style/EasyEditSpan;
    const-wide v9, 0x20b0000000cL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 283
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeEasyEditSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/EasyEditSpan;)V

    .line 284
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 285
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/EasyEditSpan;
    :cond_11c
    instance-of v8, v5, Landroid/text/style/ForegroundColorSpan;

    if-eqz v8, :cond_134

    move-object v8, v5

    check-cast v8, Landroid/text/style/ForegroundColorSpan;

    .line 286
    .local v8, "span":Landroid/text/style/ForegroundColorSpan;
    const-wide v9, 0x20b0000000dL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 288
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeForegroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ForegroundColorSpan;)V

    .line 289
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 290
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/ForegroundColorSpan;
    :cond_134
    invoke-static {}, Lcom/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v8

    if-eqz v8, :cond_152

    instance-of v8, v5, Landroid/text/style/LineBreakConfigSpan;

    if-eqz v8, :cond_152

    move-object v8, v5

    check-cast v8, Landroid/text/style/LineBreakConfigSpan;

    .line 291
    .local v8, "span":Landroid/text/style/LineBreakConfigSpan;
    const-wide v9, 0x20b00000010L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 292
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeLineBreakConfigSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBreakConfigSpan;)V

    .line 293
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 294
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/LineBreakConfigSpan;
    :cond_152
    instance-of v8, v5, Landroid/text/style/LocaleSpan;

    if-eqz v8, :cond_16a

    move-object v8, v5

    check-cast v8, Landroid/text/style/LocaleSpan;

    .line 295
    .local v8, "span":Landroid/text/style/LocaleSpan;
    const-wide v9, 0x20b00000012L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 296
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeLocaleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LocaleSpan;)V

    .line 297
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 298
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/LocaleSpan;
    :cond_16a
    instance-of v8, v5, Landroid/text/style/QuoteSpan;

    if-eqz v8, :cond_182

    move-object v8, v5

    check-cast v8, Landroid/text/style/QuoteSpan;

    .line 299
    .local v8, "span":Landroid/text/style/QuoteSpan;
    const-wide v9, 0x20b00000013L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 300
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeQuoteSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/QuoteSpan;)V

    .line 301
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 302
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/QuoteSpan;
    :cond_182
    instance-of v8, v5, Landroid/text/style/RelativeSizeSpan;

    if-eqz v8, :cond_19a

    move-object v8, v5

    check-cast v8, Landroid/text/style/RelativeSizeSpan;

    .line 303
    .local v8, "span":Landroid/text/style/RelativeSizeSpan;
    const-wide v9, 0x20b00000014L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 304
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeRelativeSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/RelativeSizeSpan;)V

    .line 305
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 306
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/RelativeSizeSpan;
    :cond_19a
    instance-of v8, v5, Landroid/text/style/ScaleXSpan;

    if-eqz v8, :cond_1b2

    move-object v8, v5

    check-cast v8, Landroid/text/style/ScaleXSpan;

    .line 307
    .local v8, "span":Landroid/text/style/ScaleXSpan;
    const-wide v9, 0x20b00000015L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 308
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeScaleXSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ScaleXSpan;)V

    .line 309
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 310
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/ScaleXSpan;
    :cond_1b2
    instance-of v8, v5, Landroid/text/style/SpellCheckSpan;

    if-eqz v8, :cond_1ca

    move-object v8, v5

    check-cast v8, Landroid/text/style/SpellCheckSpan;

    .line 311
    .local v8, "span":Landroid/text/style/SpellCheckSpan;
    const-wide v9, 0x20b00000016L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 312
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeSpellCheckSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SpellCheckSpan;)V

    .line 313
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 314
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/SpellCheckSpan;
    :cond_1ca
    instance-of v8, v5, Landroid/text/style/LineBackgroundSpan$Standard;

    if-eqz v8, :cond_1e2

    move-object v8, v5

    check-cast v8, Landroid/text/style/LineBackgroundSpan$Standard;

    .line 315
    .local v8, "span":Landroid/text/style/LineBackgroundSpan$Standard;
    const-wide v9, 0x20b0000000fL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 317
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeLineBackgroundSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBackgroundSpan$Standard;)V

    .line 318
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 319
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/LineBackgroundSpan$Standard;
    :cond_1e2
    instance-of v8, v5, Landroid/text/style/LineHeightSpan$Standard;

    if-eqz v8, :cond_1fa

    move-object v8, v5

    check-cast v8, Landroid/text/style/LineHeightSpan$Standard;

    .line 320
    .local v8, "span":Landroid/text/style/LineHeightSpan$Standard;
    const-wide v9, 0x20b00000011L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 321
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeLineHeightSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineHeightSpan$Standard;)V

    .line 322
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 323
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/LineHeightSpan$Standard;
    :cond_1fa
    instance-of v8, v5, Landroid/text/style/LeadingMarginSpan$Standard;

    if-eqz v8, :cond_212

    move-object v8, v5

    check-cast v8, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 324
    .local v8, "span":Landroid/text/style/LeadingMarginSpan$Standard;
    const-wide v9, 0x20b0000000eL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 325
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeLeadingMarginSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LeadingMarginSpan$Standard;)V

    .line 326
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 327
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan$Standard;
    :cond_212
    instance-of v8, v5, Landroid/text/style/AlignmentSpan$Standard;

    if-eqz v8, :cond_22a

    move-object v8, v5

    check-cast v8, Landroid/text/style/AlignmentSpan$Standard;

    .line 328
    .local v8, "span":Landroid/text/style/AlignmentSpan$Standard;
    const-wide v9, 0x20b00000008L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 329
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeAlignmentSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AlignmentSpan$Standard;)V

    .line 330
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 331
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/AlignmentSpan$Standard;
    :cond_22a
    instance-of v8, v5, Landroid/text/style/StrikethroughSpan;

    if-eqz v8, :cond_242

    move-object v8, v5

    check-cast v8, Landroid/text/style/StrikethroughSpan;

    .line 332
    .local v8, "span":Landroid/text/style/StrikethroughSpan;
    const-wide v9, 0x20b00000017L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 333
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeStrikethroughSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StrikethroughSpan;)V

    .line 334
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 335
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/StrikethroughSpan;
    :cond_242
    instance-of v8, v5, Landroid/text/style/StyleSpan;

    if-eqz v8, :cond_25a

    move-object v8, v5

    check-cast v8, Landroid/text/style/StyleSpan;

    .line 336
    .local v8, "span":Landroid/text/style/StyleSpan;
    const-wide v9, 0x20b00000018L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 337
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeStyleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StyleSpan;)V

    .line 338
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 339
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/StyleSpan;
    :cond_25a
    instance-of v8, v5, Landroid/text/style/SubscriptSpan;

    if-eqz v8, :cond_272

    move-object v8, v5

    check-cast v8, Landroid/text/style/SubscriptSpan;

    .line 340
    .local v8, "span":Landroid/text/style/SubscriptSpan;
    const-wide v9, 0x20b00000019L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 341
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeSubscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SubscriptSpan;)V

    .line 342
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 343
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/SubscriptSpan;
    :cond_272
    instance-of v8, v5, Landroid/text/style/SuggestionRangeSpan;

    if-eqz v8, :cond_28a

    move-object v8, v5

    check-cast v8, Landroid/text/style/SuggestionRangeSpan;

    .line 344
    .local v8, "span":Landroid/text/style/SuggestionRangeSpan;
    const-wide v9, 0x20b0000001bL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 346
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeSuggestionRangeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionRangeSpan;)V

    .line 347
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 348
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/SuggestionRangeSpan;
    :cond_28a
    instance-of v8, v5, Landroid/text/style/SuggestionSpan;

    if-eqz v8, :cond_2a2

    move-object v8, v5

    check-cast v8, Landroid/text/style/SuggestionSpan;

    .line 349
    .local v8, "span":Landroid/text/style/SuggestionSpan;
    const-wide v9, 0x20b0000001aL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 350
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeSuggestionSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionSpan;)V

    .line 351
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 352
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/SuggestionSpan;
    :cond_2a2
    instance-of v8, v5, Landroid/text/style/SuperscriptSpan;

    if-eqz v8, :cond_2ba

    move-object v8, v5

    check-cast v8, Landroid/text/style/SuperscriptSpan;

    .line 353
    .local v8, "span":Landroid/text/style/SuperscriptSpan;
    const-wide v9, 0x20b0000001cL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 354
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeSuperscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuperscriptSpan;)V

    .line 355
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 356
    .end local v9    # "spanToken":J
    goto/16 :goto_32c

    .end local v8    # "span":Landroid/text/style/SuperscriptSpan;
    :cond_2ba
    instance-of v8, v5, Landroid/text/style/TextAppearanceSpan;

    if-eqz v8, :cond_2d1

    move-object v8, v5

    check-cast v8, Landroid/text/style/TextAppearanceSpan;

    .line 357
    .local v8, "span":Landroid/text/style/TextAppearanceSpan;
    const-wide v9, 0x20b0000001dL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 359
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeTextAppearanceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TextAppearanceSpan;)V

    .line 360
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 361
    .end local v9    # "spanToken":J
    goto :goto_32c

    .end local v8    # "span":Landroid/text/style/TextAppearanceSpan;
    :cond_2d1
    instance-of v8, v5, Landroid/text/style/TtsSpan;

    if-eqz v8, :cond_2e8

    move-object v8, v5

    check-cast v8, Landroid/text/style/TtsSpan;

    .line 362
    .local v8, "span":Landroid/text/style/TtsSpan;
    const-wide v9, 0x20b0000001eL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 363
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeTtsSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TtsSpan;)V

    .line 364
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 365
    .end local v9    # "spanToken":J
    goto :goto_32c

    .end local v8    # "span":Landroid/text/style/TtsSpan;
    :cond_2e8
    instance-of v8, v5, Landroid/text/style/TypefaceSpan;

    if-eqz v8, :cond_2ff

    move-object v8, v5

    check-cast v8, Landroid/text/style/TypefaceSpan;

    .line 366
    .local v8, "span":Landroid/text/style/TypefaceSpan;
    const-wide v9, 0x20b0000001fL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 367
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeTypefaceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TypefaceSpan;)V

    .line 368
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 369
    .end local v9    # "spanToken":J
    goto :goto_32c

    .end local v8    # "span":Landroid/text/style/TypefaceSpan;
    :cond_2ff
    instance-of v8, v5, Landroid/text/style/URLSpan;

    if-eqz v8, :cond_316

    move-object v8, v5

    check-cast v8, Landroid/text/style/URLSpan;

    .line 370
    .local v8, "span":Landroid/text/style/URLSpan;
    const-wide v9, 0x20b00000021L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 371
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/URLSpan;)V

    .line 372
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 373
    .end local v9    # "spanToken":J
    goto :goto_32c

    .end local v8    # "span":Landroid/text/style/URLSpan;
    :cond_316
    instance-of v8, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v8, :cond_32c

    move-object v8, v5

    check-cast v8, Landroid/text/style/UnderlineSpan;

    .line 374
    .local v8, "span":Landroid/text/style/UnderlineSpan;
    const-wide v9, 0x20b00000020L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 375
    .restart local v9    # "spanToken":J
    invoke-static {p0, v8}, Landroid/widget/RemoteViewsSerializers;->writeUnderlineSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/UnderlineSpan;)V

    .line 376
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 378
    .end local v8    # "span":Landroid/text/style/UnderlineSpan;
    .end local v9    # "spanToken":J
    :cond_32c
    :goto_32c
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 238
    .end local v4    # "original":Ljava/lang/Object;
    .end local v5    # "prop":Ljava/lang/Object;
    .end local v6    # "spansToken":J
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1f

    .line 380
    :cond_333
    return-void

    .line 235
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "os":[Ljava/lang/Object;
    :cond_334
    return-void
.end method

.method public static blacklist writeEasyEditSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/EasyEditSpan;)V
    .registers 2
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/EasyEditSpan;

    .line 820
    return-void
.end method

.method public static blacklist writeForegroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ForegroundColorSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/ForegroundColorSpan;

    .line 870
    nop

    .line 871
    invoke-virtual {p1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    .line 870
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 872
    return-void
.end method

.method public static blacklist writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;)V
    .registers 7
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "appResources"    # Landroid/content/res/Resources;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 95
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 96
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 97
    .local v0, "token":J
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 100
    .end local v0    # "token":J
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 101
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_c0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to serialize unknown Icon type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteViews"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 125
    :pswitch_4f
    const-wide v0, 0x10900000007L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 126
    goto :goto_be

    .line 108
    :pswitch_5c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v0, "adaptiveBitmapBytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    .line 110
    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    const-wide v1, 0x10c00000008L

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 112
    goto :goto_be

    .line 122
    .end local v0    # "adaptiveBitmapBytes":Ljava/io/ByteArrayOutputStream;
    :pswitch_77
    const-wide v0, 0x10900000006L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 123
    goto :goto_be

    .line 119
    :pswitch_84
    const-wide v0, 0x10c00000005L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 120
    goto :goto_be

    .line 114
    :pswitch_91
    nop

    .line 116
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 117
    goto :goto_be

    .line 103
    :pswitch_a3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, "bitmapBytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    const-wide v1, 0x10c00000003L

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 106
    nop

    .line 130
    .end local v0    # "bitmapBytes":Ljava/io/ByteArrayOutputStream;
    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_91
        :pswitch_84
        :pswitch_77
        :pswitch_5c
        :pswitch_4f
    .end packed-switch
.end method

.method public static blacklist writeLeadingMarginSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LeadingMarginSpan$Standard;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/LeadingMarginSpan$Standard;

    .line 862
    nop

    .line 863
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/style/LeadingMarginSpan$Standard;->getLeadingMargin(Z)I

    move-result v0

    .line 862
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 864
    nop

    .line 865
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/style/LeadingMarginSpan$Standard;->getLeadingMargin(Z)I

    move-result v0

    .line 864
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 866
    return-void
.end method

.method public static blacklist writeLineBackgroundSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBackgroundSpan$Standard;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/LineBackgroundSpan$Standard;

    .line 893
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/LineBackgroundSpan$Standard;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 894
    return-void
.end method

.method public static blacklist writeLineBreakConfigSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBreakConfigSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/LineBreakConfigSpan;

    .line 931
    nop

    .line 932
    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v0

    .line 931
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 933
    nop

    .line 934
    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v0

    .line 933
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 935
    nop

    .line 936
    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getHyphenation()I

    move-result v0

    .line 935
    const-wide v1, 0x10500000003L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 937
    return-void
.end method

.method public static blacklist writeLineHeightSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineHeightSpan$Standard;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/LineHeightSpan$Standard;

    .line 958
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/LineHeightSpan$Standard;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 959
    return-void
.end method

.method public static blacklist writeLocaleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LocaleSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/LocaleSpan;

    .line 979
    nop

    .line 980
    invoke-virtual {p1}, Landroid/text/style/LocaleSpan;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 979
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 981
    return-void
.end method

.method public static blacklist writeQuoteSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/QuoteSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/QuoteSpan;

    .line 1008
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1009
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getStripeWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1010
    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getGapWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1011
    return-void
.end method

.method public static blacklist writeRelativeSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/RelativeSizeSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/RelativeSizeSpan;

    .line 1033
    const-wide v0, 0x10200000001L

    invoke-virtual {p1}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1034
    return-void
.end method

.method public static blacklist writeScaleXSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ScaleXSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/ScaleXSpan;

    .line 1053
    const-wide v0, 0x10200000001L

    invoke-virtual {p1}, Landroid/text/style/ScaleXSpan;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1054
    return-void
.end method

.method public static blacklist writeSpellCheckSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SpellCheckSpan;)V
    .registers 2
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/SpellCheckSpan;

    .line 1062
    return-void
.end method

.method public static blacklist writeStrikethroughSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StrikethroughSpan;)V
    .registers 2
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/StrikethroughSpan;

    .line 1070
    return-void
.end method

.method public static blacklist writeStyleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StyleSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/StyleSpan;

    .line 1094
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1095
    nop

    .line 1096
    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result v0

    .line 1095
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1097
    return-void
.end method

.method public static blacklist writeSubscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SubscriptSpan;)V
    .registers 2
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/SubscriptSpan;

    .line 1105
    return-void
.end method

.method public static blacklist writeSuggestionRangeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionRangeSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/SuggestionRangeSpan;

    .line 1129
    nop

    .line 1130
    invoke-virtual {p1}, Landroid/text/style/SuggestionRangeSpan;->getBackgroundColor()I

    move-result v0

    .line 1129
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1131
    return-void
.end method

.method public static blacklist writeSuggestionSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionSpan;)V
    .registers 8
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;

    .line 1235
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 1236
    .local v3, "suggestion":Ljava/lang/String;
    const-wide v4, 0x20900000001L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1235
    .end local v3    # "suggestion":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1238
    :cond_15
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1239
    nop

    .line 1240
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 1239
    const-wide v1, 0x10900000003L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1241
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1242
    nop

    .line 1243
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 1242
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1245
    :cond_45
    const-wide v0, 0x10500000005L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1246
    nop

    .line 1247
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getEasyCorrectUnderlineColor()I

    move-result v0

    .line 1246
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1248
    nop

    .line 1249
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getEasyCorrectUnderlineThickness()F

    move-result v0

    .line 1248
    const-wide v1, 0x10200000007L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1250
    nop

    .line 1251
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getMisspelledUnderlineColor()I

    move-result v0

    .line 1250
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1252
    nop

    .line 1253
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getMisspelledUnderlineThickness()F

    move-result v0

    .line 1252
    const-wide v1, 0x10200000009L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1254
    nop

    .line 1255
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getAutoCorrectionUnderlineColor()I

    move-result v0

    .line 1254
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1256
    nop

    .line 1257
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getAutoCorrectionUnderlineThickness()F

    move-result v0

    .line 1256
    const-wide v1, 0x1020000000bL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1258
    nop

    .line 1259
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getGrammarErrorUnderlineColor()I

    move-result v0

    .line 1258
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1260
    nop

    .line 1261
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getGrammarErrorUnderlineThickness()F

    move-result v0

    .line 1260
    const-wide v1, 0x1020000000dL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1262
    return-void
.end method

.method public static blacklist writeSuperscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuperscriptSpan;)V
    .registers 2
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/SuperscriptSpan;

    .line 1270
    return-void
.end method

.method public static blacklist writeTextAppearanceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TextAppearanceSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .line 1385
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1386
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1387
    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1388
    nop

    .line 1389
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextFontWeight()I

    move-result v0

    .line 1388
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1390
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1391
    nop

    .line 1392
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1391
    const-wide v1, 0x10900000008L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1394
    :cond_48
    nop

    .line 1395
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowRadius()F

    move-result v0

    .line 1394
    const-wide v1, 0x10200000009L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1396
    const-wide v0, 0x1020000000aL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowDx()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1397
    const-wide v0, 0x1020000000bL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1398
    nop

    .line 1399
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowColor()I

    move-result v0

    .line 1398
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1400
    nop

    .line 1401
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->hasElegantTextHeight()Z

    move-result v0

    .line 1400
    const-wide v1, 0x1080000000dL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1402
    nop

    .line 1403
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->isElegantTextHeight()Z

    move-result v0

    .line 1402
    const-wide v1, 0x1080000000eL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1404
    nop

    .line 1405
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->hasLetterSpacing()Z

    move-result v0

    .line 1404
    const-wide v1, 0x1080000000fL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1406
    nop

    .line 1407
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLetterSpacing()F

    move-result v0

    .line 1406
    const-wide v1, 0x10200000010L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1408
    nop

    .line 1409
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    .line 1408
    const-wide v1, 0x10900000011L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1410
    nop

    .line 1411
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    .line 1410
    const-wide v1, 0x10900000012L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1412
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 1413
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1415
    .local v0, "textColorToken":J
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1416
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1418
    .end local v0    # "textColorToken":J
    :cond_e1
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_fa

    .line 1419
    const-wide v0, 0x10b00000005L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1421
    .local v0, "textColorLinkToken":J
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1422
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1424
    .end local v0    # "textColorLinkToken":J
    :cond_fa
    return-void
.end method

.method public static blacklist writeTtsSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TtsSpan;)V
    .registers 6
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/TtsSpan;

    .line 1448
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1449
    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getArgs()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1450
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1452
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getArgs()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_2e

    .line 1455
    nop

    .line 1456
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x10900000002L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_35

    .line 1453
    :catch_2e
    move-exception v1

    .line 1454
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1458
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_35
    :goto_35
    return-void
.end method

.method public static blacklist writeTypefaceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TypefaceSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/TypefaceSpan;

    .line 1477
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1478
    return-void
.end method

.method public static blacklist writeURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/URLSpan;)V
    .registers 5
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/URLSpan;

    .line 1496
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1497
    return-void
.end method

.method public static blacklist writeUnderlineSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/UnderlineSpan;)V
    .registers 2
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "span"    # Landroid/text/style/UnderlineSpan;

    .line 1505
    return-void
.end method
