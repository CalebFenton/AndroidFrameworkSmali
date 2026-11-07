.class Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "p"    # Landroid/os/Parcel;

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 867
    .local v0, "kind":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 869
    const/4 v2, 0x0

    return-object v2

    .line 872
    :cond_c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 873
    return-object v1

    .line 876
    :cond_10
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 879
    .local v2, "sp":Landroid/text/SpannableString;
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 881
    if-nez v0, :cond_1d

    .line 882
    nop

    .line 1016
    return-object v2

    .line 885
    :cond_1d
    packed-switch v0, :pswitch_data_10a

    .line 1011
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bogus span encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1007
    :pswitch_39
    sget-object v3, Landroid/text/style/NoWritingToolsSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 1008
    .local v3, "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 1003
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_41
    sget-object v3, Landroid/text/style/LineBreakConfigSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 1004
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 999
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_49
    new-instance v3, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Landroid/os/Parcel;)V

    .line 1000
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 995
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_50
    new-instance v3, Landroid/text/style/LineHeightSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LineHeightSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 996
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 991
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_57
    new-instance v3, Landroid/text/style/LineBackgroundSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LineBackgroundSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 992
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 987
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_5e
    new-instance v3, Landroid/text/style/AccessibilityURLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/os/Parcel;)V

    .line 988
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 983
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_65
    new-instance v3, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    .line 984
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 979
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_6c
    new-instance v3, Landroid/text/style/TtsSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TtsSpan;-><init>(Landroid/os/Parcel;)V

    .line 980
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 975
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_73
    new-instance v3, Landroid/text/style/LocaleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    .line 976
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 971
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_7a
    new-instance v3, Landroid/text/style/EasyEditSpan;

    invoke-direct {v3, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    .line 972
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 967
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_81
    new-instance v3, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    .line 968
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 963
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_88
    new-instance v3, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    .line 964
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 959
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_8f
    new-instance v3, Landroid/text/style/SuggestionSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    .line 960
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 955
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_96
    new-instance v3, Landroid/text/Annotation;

    invoke-direct {v3, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    .line 956
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 951
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_9d
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    .line 952
    .restart local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_104

    .line 947
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_a4
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    .line 948
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 943
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_aa
    new-instance v3, Landroid/text/style/SubscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    .line 944
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 939
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_b0
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    .line 940
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 935
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_b6
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    .line 936
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 931
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_bc
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    .line 932
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 927
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_c2
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 928
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 923
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_c8
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 924
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 919
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_ce
    new-instance v3, Landroid/text/style/QuoteSpan;

    invoke-direct {v3, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    .line 920
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 915
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_d4
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 916
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 911
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_da
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    .line 912
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 907
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_e0
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    .line 908
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 903
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_e6
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    .line 904
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 899
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_ec
    new-instance v3, Landroid/text/style/ScaleXSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    .line 900
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 895
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_f2
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    .line 896
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 891
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_f8
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    .line 892
    .restart local v3    # "span":Ljava/lang/Object;
    goto :goto_104

    .line 887
    .end local v3    # "span":Ljava/lang/Object;
    :pswitch_fe
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 888
    .restart local v3    # "span":Ljava/lang/Object;
    nop

    .line 1013
    :goto_104
    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 1014
    .end local v3    # "span":Ljava/lang/Object;
    goto/16 :goto_15

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_f8
        :pswitch_f2
        :pswitch_ec
        :pswitch_e6
        :pswitch_e0
        :pswitch_da
        :pswitch_d4
        :pswitch_ce
        :pswitch_c8
        :pswitch_c2
        :pswitch_bc
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a4
        :pswitch_9d
        :pswitch_96
        :pswitch_8f
        :pswitch_88
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_57
        :pswitch_50
        :pswitch_49
        :pswitch_41
        :pswitch_39
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 859
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "size"    # I

    .line 1021
    new-array v0, p1, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 859
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
