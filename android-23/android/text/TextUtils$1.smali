.class final Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 692
    .local v0, "kind":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 693
    .local v2, "string":Ljava/lang/String;
    if-nez v2, :cond_0

    #@b
    .line 694
    return-object v3

    #@c
    .line 697
    :cond_0
    const/4 v3, 0x1

    #@d
    if-ne v0, v3, :cond_1

    #@f
    .line 698
    return-object v2

    #@10
    .line 701
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    #@12
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@15
    .line 704
    .local v1, "sp":Landroid/text/SpannableString;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    .line 706
    if-nez v0, :cond_2

    #@1b
    .line 811
    return-object v1

    #@1c
    .line 709
    :cond_2
    packed-switch v0, :pswitch_data_0

    #@1f
    .line 807
    new-instance v3, Ljava/lang/RuntimeException;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "bogus span encoding "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 711
    :pswitch_0
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    #@3b
    invoke-direct {v3, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    #@3e
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@41
    goto :goto_0

    #@42
    .line 715
    :pswitch_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    #@44
    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    #@47
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@4a
    goto :goto_0

    #@4b
    .line 719
    :pswitch_2
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    #@4d
    invoke-direct {v3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    #@50
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@53
    goto :goto_0

    #@54
    .line 723
    :pswitch_3
    new-instance v3, Landroid/text/style/ScaleXSpan;

    #@56
    invoke-direct {v3, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    #@59
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@5c
    goto :goto_0

    #@5d
    .line 727
    :pswitch_4
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    #@5f
    invoke-direct {v3, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    #@62
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@65
    goto :goto_0

    #@66
    .line 731
    :pswitch_5
    new-instance v3, Landroid/text/style/UnderlineSpan;

    #@68
    invoke-direct {v3, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    #@6b
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@6e
    goto :goto_0

    #@6f
    .line 735
    :pswitch_6
    new-instance v3, Landroid/text/style/StyleSpan;

    #@71
    invoke-direct {v3, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    #@74
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@77
    goto :goto_0

    #@78
    .line 739
    :pswitch_7
    new-instance v3, Landroid/text/style/BulletSpan;

    #@7a
    invoke-direct {v3, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    #@7d
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@80
    goto :goto_0

    #@81
    .line 743
    :pswitch_8
    new-instance v3, Landroid/text/style/QuoteSpan;

    #@83
    invoke-direct {v3, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    #@86
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@89
    goto :goto_0

    #@8a
    .line 747
    :pswitch_9
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    #@8c
    invoke-direct {v3, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    #@8f
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@92
    goto :goto_0

    #@93
    .line 751
    :pswitch_a
    new-instance v3, Landroid/text/style/URLSpan;

    #@95
    invoke-direct {v3, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    #@98
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 755
    :pswitch_b
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    #@9f
    invoke-direct {v3, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    #@a2
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@a5
    goto/16 :goto_0

    #@a7
    .line 759
    :pswitch_c
    new-instance v3, Landroid/text/style/TypefaceSpan;

    #@a9
    invoke-direct {v3, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    #@ac
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@af
    goto/16 :goto_0

    #@b1
    .line 763
    :pswitch_d
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    #@b3
    invoke-direct {v3, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    #@b6
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 767
    :pswitch_e
    new-instance v3, Landroid/text/style/SubscriptSpan;

    #@bd
    invoke-direct {v3, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    #@c0
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 771
    :pswitch_f
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    #@c7
    invoke-direct {v3, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    #@ca
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 775
    :pswitch_10
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    #@d1
    invoke-direct {v3, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    #@d4
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@d7
    goto/16 :goto_0

    #@d9
    .line 779
    :pswitch_11
    new-instance v3, Landroid/text/Annotation;

    #@db
    invoke-direct {v3, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    #@de
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 783
    :pswitch_12
    new-instance v3, Landroid/text/style/SuggestionSpan;

    #@e5
    invoke-direct {v3, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    #@e8
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@eb
    goto/16 :goto_0

    #@ed
    .line 787
    :pswitch_13
    new-instance v3, Landroid/text/style/SpellCheckSpan;

    #@ef
    invoke-direct {v3, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    #@f2
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@f5
    goto/16 :goto_0

    #@f7
    .line 791
    :pswitch_14
    new-instance v3, Landroid/text/style/SuggestionRangeSpan;

    #@f9
    invoke-direct {v3, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    #@fc
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@ff
    goto/16 :goto_0

    #@101
    .line 795
    :pswitch_15
    new-instance v3, Landroid/text/style/EasyEditSpan;

    #@103
    invoke-direct {v3, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    #@106
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@109
    goto/16 :goto_0

    #@10b
    .line 799
    :pswitch_16
    new-instance v3, Landroid/text/style/LocaleSpan;

    #@10d
    invoke-direct {v3, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    #@110
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@113
    goto/16 :goto_0

    #@115
    .line 803
    :pswitch_17
    new-instance v3, Landroid/text/style/TtsSpan;

    #@117
    invoke-direct {v3, p1}, Landroid/text/style/TtsSpan;-><init>(Landroid/os/Parcel;)V

    #@11a
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 709
    nop

    #@120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 689
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 816
    new-array v0, p1, [Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 814
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
