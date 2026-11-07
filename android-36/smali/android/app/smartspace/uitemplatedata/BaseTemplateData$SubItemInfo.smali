.class public final Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubItemInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final blacklist mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

.field private final blacklist mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final blacklist mText:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 450
    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;)V
    .registers 5
    .param p1, "text"    # Landroid/app/smartspace/uitemplatedata/Text;
    .param p2, "icon"    # Landroid/app/smartspace/uitemplatedata/Icon;
    .param p3, "tapAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;
    .param p4, "loggingInfo"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 417
    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 418
    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 419
    iput-object p4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 420
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;-><init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 407
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 408
    sget-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 409
    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 410
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 478
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 479
    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 480
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 481
    .local v1, "that":Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 482
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 483
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 481
    :goto_37
    return v0
.end method

.method public whitelist getIcon()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 2

    .line 431
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object v0
.end method

.method public whitelist getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    return-object v0
.end method

.method public whitelist getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object v0
.end method

.method public whitelist getText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    .line 425
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 488
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubItemInfo{mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTapAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLoggingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 470
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 471
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 472
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 473
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    return-void
.end method
