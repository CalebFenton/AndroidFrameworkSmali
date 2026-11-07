.class public final Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioMixMatchCriterion"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-r mAttr:Landroid/media/AudioAttributes;

.field final greylist-max-r mIntProp:I

.field final greylist-max-r mRule:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 228
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/AudioAttributes;I)V
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 148
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    .line 149
    iput p2, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    .line 150
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    .line 162
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const v1, -0x8001

    and-int/2addr v0, v1

    .line 163
    .local v0, "match_rule":I
    sparse-switch v0, :sswitch_data_54

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal rule value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in parcel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :sswitch_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 174
    goto :goto_52

    .line 166
    :sswitch_43
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 167
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    .line 168
    nop

    .line 181
    :goto_52
    return-void

    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_43
        0x4 -> :sswitch_39
        0x8 -> :sswitch_39
        0x10 -> :sswitch_39
    .end sparse-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audiopolicy/AudioMixingRule-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Integer;I)V
    .registers 4
    .param p1, "intProp"    # Ljava/lang/Integer;
    .param p2, "rule"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    .line 156
    iput p2, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_2f

    .line 193
    :cond_e
    const/4 v1, 0x1

    if-ne p1, p0, :cond_12

    .line 194
    return v1

    .line 196
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 197
    .local v2, "other":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v3, v4, :cond_2d

    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    if-ne v3, v4, :cond_2d

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 199
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    nop

    .line 197
    :goto_2e
    return v0

    .line 191
    .end local v2    # "other":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_2f
    :goto_2f
    return v0
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public blacklist getIntProp()I
    .registers 2

    .line 245
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    return v0
.end method

.method public blacklist getRule()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 185
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 209
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const v1, -0x8001

    and-int/2addr v0, v1

    .line 211
    .local v0, "match_rule":I
    sparse-switch v0, :sswitch_data_40

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown match rule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when writing to Parcel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioMixMatchCriterion"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 219
    :sswitch_31
    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_3e

    .line 214
    :sswitch_37
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    nop

    .line 226
    :goto_3e
    return-void

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_37
        0x4 -> :sswitch_31
        0x8 -> :sswitch_31
        0x10 -> :sswitch_31
    .end sparse-switch
.end method
