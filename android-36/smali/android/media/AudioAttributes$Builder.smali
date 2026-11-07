.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist PRIVACY_SENSITIVE_DEFAULT:I = -0x1

.field private static final blacklist PRIVACY_SENSITIVE_DISABLED:I = 0x0

.field private static final blacklist PRIVACY_SENSITIVE_ENABLED:I = 0x1


# instance fields
.field private greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-o mContentType:I

.field private greylist-max-o mFlags:I

.field private blacklist mIsContentSpatialized:Z

.field private blacklist mMuteHapticChannels:Z

.field private blacklist mPrivacySensitive:I

.field private greylist-max-o mSource:I

.field private blacklist mSpatializationBehavior:I

.field private blacklist mSystemUsage:I

.field private greylist-max-o mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 780
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 781
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 782
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 783
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 784
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 785
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 786
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 787
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 789
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 804
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 780
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 781
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 782
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 783
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 784
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 785
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 786
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 787
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 789
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 812
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 813
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 814
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 815
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 816
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 817
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 818
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 819
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 820
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_5d

    .line 821
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 823
    :cond_5d
    return-void
.end method


# virtual methods
.method public whitelist addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1111
    if-eqz p1, :cond_14

    .line 1114
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 1115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    goto :goto_13

    .line 1117
    :cond_e
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1119
    :goto_13
    return-object p0

    .line 1112
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1131
    return-object p0
.end method

.method public whitelist build()Landroid/media/AudioAttributes;
    .registers 7

    .line 832
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes-IA;)V

    .line 833
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V

    .line 835
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 836
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v1, v2, :cond_19

    .line 837
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_28

    .line 839
    :cond_19
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_28

    .line 842
    :cond_1f
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v1, v2, :cond_dc

    .line 843
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 851
    :goto_28
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    const/4 v3, 0x5

    packed-switch v1, :pswitch_data_e4

    goto :goto_35

    .line 855
    :pswitch_31
    invoke-static {v0, v3}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 856
    nop

    .line 861
    :goto_35
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V

    .line 862
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 863
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    if-eqz v1, :cond_4c

    .line 864
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 866
    :cond_4c
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    if-eqz v1, :cond_59

    .line 867
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 869
    :cond_59
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_69

    .line 870
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    const v5, 0x8000

    or-int/2addr v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 873
    :cond_69
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    if-ne v1, v2, :cond_8b

    .line 876
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_81

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    if-ne v1, v3, :cond_77

    goto :goto_81

    .line 880
    :cond_77
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_a2

    .line 878
    :cond_81
    :goto_81
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_a2

    .line 882
    :cond_8b
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    if-ne v1, v4, :cond_99

    .line 883
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_a2

    .line 885
    :cond_99
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 887
    :goto_a2
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V

    .line 888
    const-string v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_c6

    .line 890
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V

    .line 894
    :cond_c6
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_db

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_db

    .line 896
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 898
    :cond_db
    return-object v0

    .line 845
    :cond_dc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set both usage and system usage on same builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_e4
    .packed-switch 0x7
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public greylist-max-o replaceFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 1099
    const v0, 0x1f7ff

    and-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1100
    return-object p0
.end method

.method public blacklist replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/AudioAttributes$Builder;"
        }
    .end annotation

    .line 1141
    .local p1, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1142
    return-object p0
.end method

.method public whitelist setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "capturePolicy"    # I

    .line 1059
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {p1, v0}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1060
    return-object p0
.end method

.method public whitelist setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 4
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1260
    packed-switch p1, :pswitch_data_26

    .line 1271
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capture preset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1268
    :pswitch_22
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1269
    nop

    .line 1273
    :goto_25
    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist setContentType(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "contentType"    # I

    .line 968
    packed-switch p1, :pswitch_data_20

    .line 977
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 975
    nop

    .line 979
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 1011
    and-int/lit16 p1, p1, 0x1d1

    .line 1012
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1013
    return-object p0
.end method

.method public blacklist setForCallRedirection()Landroid/media/AudioAttributes$Builder;
    .registers 3

    .line 1337
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1338
    return-object p0
.end method

.method public whitelist setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "muted"    # Z

    .line 1313
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1314
    return-object p0
.end method

.method public whitelist setHotwordModeEnabled(Z)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1029
    if-eqz p1, :cond_9

    .line 1030
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_f

    .line 1032
    :cond_9
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1034
    :goto_f
    return-object p0
.end method

.method public whitelist setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1286
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_25

    const/16 v0, 0x8

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7cd

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_25

    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    goto :goto_25

    .line 1299
    :cond_21
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_27

    .line 1297
    :cond_25
    :goto_25
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1301
    :goto_27
    return-object p0
.end method

.method public whitelist setInternalContentType(I)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "contentType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 991
    packed-switch p1, :pswitch_data_c

    .line 996
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_a

    .line 993
    :pswitch_7
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 994
    nop

    .line 999
    :goto_a
    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x7cd
        :pswitch_7
    .end packed-switch
.end method

.method public greylist setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "streamType"    # I

    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1178
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1179
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 1180
    nop

    .line 1181
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1183
    .local v0, "attributes":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_46

    .line 1184
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1189
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1190
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1191
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1192
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1193
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1194
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 1195
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1198
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    :cond_46
    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_a0

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1231
    :pswitch_6a
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1232
    goto :goto_95

    .line 1228
    :pswitch_6d
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1229
    goto :goto_95

    .line 1224
    :pswitch_70
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1225
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1226
    goto :goto_95

    .line 1221
    :pswitch_79
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1222
    goto :goto_95

    .line 1203
    :pswitch_7c
    iget v2, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_8f

    .line 1218
    :pswitch_82
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1219
    goto :goto_95

    .line 1215
    :pswitch_85
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1216
    goto :goto_95

    .line 1212
    :pswitch_88
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1213
    goto :goto_95

    .line 1235
    :pswitch_8b
    goto :goto_95

    .line 1209
    :pswitch_8c
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1210
    goto :goto_95

    .line 1206
    :goto_8f
    :pswitch_8f
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1207
    goto :goto_95

    .line 1200
    :pswitch_92
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1201
    nop

    .line 1239
    :goto_95
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    if-nez v0, :cond_9f

    .line 1240
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$smusageForStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1242
    :cond_9f
    return-object p0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7c
        :pswitch_79
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
    .end packed-switch
.end method

.method public whitelist setIsContentSpatialized(Z)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "isSpatialized"    # Z

    .line 1070
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1071
    return-object p0
.end method

.method public whitelist setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 4
    .param p1, "streamType"    # I

    .line 1161
    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    .line 1165
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 1166
    return-object p0

    .line 1162
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPrivacySensitive(Z)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "privacySensitive"    # Z

    .line 1326
    nop

    .line 1327
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 1328
    return-object p0
.end method

.method public whitelist setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "sb"    # I

    .line 1081
    packed-switch p1, :pswitch_data_20

    .line 1086
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid spatialization behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :pswitch_1c
    nop

    .line 1088
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1089
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setSystemUsage(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "systemUsage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 947
    invoke-static {p1}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 948
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 953
    return-object p0

    .line 950
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid system usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUsage(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "usage"    # I

    .line 908
    packed-switch p1, :pswitch_data_20

    .line 929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 927
    nop

    .line 931
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
