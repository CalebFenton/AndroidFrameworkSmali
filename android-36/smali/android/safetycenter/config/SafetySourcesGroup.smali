.class public final Landroid/safetycenter/config/SafetySourcesGroup;
.super Ljava/lang/Object;
.source "SafetySourcesGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/config/SafetySourcesGroup$Builder;,
        Landroid/safetycenter/config/SafetySourcesGroup$StatelessIconType;,
        Landroid/safetycenter/config/SafetySourcesGroup$SafetySourceGroupType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/config/SafetySourcesGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SAFETY_SOURCES_GROUP_TYPE_COLLAPSIBLE:I = 0x0

.field public static final whitelist SAFETY_SOURCES_GROUP_TYPE_HIDDEN:I = 0x2

.field public static final whitelist SAFETY_SOURCES_GROUP_TYPE_RIGID:I = 0x1

.field public static final whitelist SAFETY_SOURCES_GROUP_TYPE_STATEFUL:I = 0x0

.field public static final whitelist SAFETY_SOURCES_GROUP_TYPE_STATELESS:I = 0x1

.field public static final whitelist STATELESS_ICON_TYPE_NONE:I = 0x0

.field public static final whitelist STATELESS_ICON_TYPE_PRIVACY:I = 0x1


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSafetySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySource;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatelessIconType:I

.field private final blacklist mSummaryResId:I

.field private final blacklist mTitleResId:I

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/config/SafetySourcesGroup;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafetySources(Landroid/safetycenter/config/SafetySourcesGroup;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatelessIconType(Landroid/safetycenter/config/SafetySourcesGroup;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummaryResId(Landroid/safetycenter/config/SafetySourcesGroup;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleResId(Landroid/safetycenter/config/SafetySourcesGroup;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/safetycenter/config/SafetySourcesGroup;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    new-instance v0, Landroid/safetycenter/config/SafetySourcesGroup$1;

    invoke-direct {v0}, Landroid/safetycenter/config/SafetySourcesGroup$1;-><init>()V

    sput-object v0, Landroid/safetycenter/config/SafetySourcesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;IIILjava/util/List;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "titleResId"    # I
    .param p4, "summaryResId"    # I
    .param p5, "statelessIconType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySource;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p6, "safetySources":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    .line 176
    iput-object p2, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    .line 177
    iput p3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    .line 178
    iput p4, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    .line 179
    iput p5, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    .line 180
    iput-object p6, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    .line 181
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;IIILjava/util/List;Landroid/safetycenter/config/SafetySourcesGroup-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/safetycenter/config/SafetySourcesGroup;-><init>(ILjava/lang/String;IIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 247
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 248
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/config/SafetySourcesGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 249
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/config/SafetySourcesGroup;

    .line 250
    .local v1, "that":Landroid/safetycenter/config/SafetySourcesGroup;
    iget v3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    iget v4, v1, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    .line 251
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget v3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    iget v4, v1, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    .line 255
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 250
    :goto_3b
    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSafetySources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySource;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStatelessIconType()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    return v0
.end method

.method public whitelist getSummaryResId()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    return v0
.end method

.method public whitelist getTitleResId()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 260
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 260
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySourcesGroup{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatelessIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSafetySources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 289
    iget-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSummaryResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mStatelessIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mSafetySources:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 295
    iget v0, p0, Landroid/safetycenter/config/SafetySourcesGroup;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    :cond_24
    return-void
.end method
